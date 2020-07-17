function keyNum()
--    wait(2)
    local preMinSimilarity = Settings:get("MinSimilarity")
    local keyPre = find("keyPre.png")
    local xRegion = Region(keyPre:getX()+keyPre:getW(), keyPre:getY(), 75, keyPre:getH())
    local charx
    local numRegion
    Settings:set("MinSimilarity", 0.7)

    if (xRegion:exists("charx.png", 0)) then
        charx = xRegion:wait("charx.png", 0)
        numRegion = Region(charx:getX() + charx:getW(),
        charx:getY(), 45, charx:getH())
    else
        numRegion = xRegion
    end
    numRegion:highlight(1)
    local num = numberOCRNoFindException(numRegion, "key")
    Settings:set("MinSimilarity", preMinSimilarity)
    return(num)
end
-- ========== Settings ================
Settings:setCompareDimension(true, 1280)
Settings:setScriptDimension(true, 1280)
Settings:set("MinSimilarity", 0.8)
localPath = scriptPath()
dofile(localPath.."lib/commonLib.lua")
setImmersiveMode(true)
autoResize(Pattern("normalKey.png"):similar(0.9))
-- ==========  main program ===========
upperRight = Region(640, 0, 640, 350)
upper = Region(0, 0, 1280, 380)
low = Region(0, 360, 1280, 440)

dialogInit()
if (getLanguage() == "zh") then
    addCheckBox("nextArea", "打下一關", true)
    newRow()
    addTextView("開打的最少鑰匙數: ")
    addEditNumber("minKey", 1)
    dialogShow("選擇打贏這關後是否打下一關")
else
    addCheckBox("nextArea", "Goto next area", true)
    newRow()
    addTextView("Mininum number of keys to fight: ")
    addEditNumber("minKey",  1)
    dialogShow("Choose goto next area or not after winning this stage")
end

clickList = {Pattern("getStronger.png"):similar(0.9), "normalKey.png", "confirm.png",  "skip1.png", "skip2.png", "skip3.png" }
if (nextArea) then
    table.insert(clickList, "nextArea.png")
else
    table.insert(clickList, "again.png")
end

while (true) do
    choice, listMatch = waitMulti(clickList, 30*60)
--    toast(clickList[choice])
    if (choice == 1 or exists(clickList[1])) then
        choice = 1
        getLastMatch():highlight(1)
        if (exists(Pattern("getStronger.png"):similar(0.9), 0.9)) then
            simpleDialog("Warning", "Lose")
            return
        end
    end
    if (choice > 2) then click(listMatch) end

    if (choice == 2 and (not existsClick("confirm.png", 0))) then
        if (low:exists("normalKey.png", 0)) then
            while (true) do
                keynum = keyNum()
                if ( keynum < minKey) then
                    toast("No key, wait 5 minutes")
                    wait(5*60)

                elseif (keynum < 0) then
                        toast("Can not find number, wait 10 seconds")
                        wait(10)
                    else
                        toast(keynum.." keys")
                        click(listMatch)
                    break
                end
            end
        end
    end

    if (choice == -1) then
        simpleDialog("Warning", "Unknown happened\nReport to ankulua@gmail.com")
        return
    end

end