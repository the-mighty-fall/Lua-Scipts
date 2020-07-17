function isColor(target, value)
    local r, g, b = getColor(target)
    if (math.abs(r-g) < value and math.abs(r-b) < value and math.abs(g-b) < value) then
        return false
    end
    return true
end

function dialog()
    dialogInit()
    addCheckBox("nextArea", nextAreaString, true)
    newRow()
    addCheckBox("inviteFriend", inviteString, true)
    dialogShow(SettingsString)
end

-- ========== Settings ================
Settings:setCompareDimension(true, 1280)
Settings:setScriptDimension(true, 1280)
Settings:set("MinSimilarity", 0.8)
localPath = scriptPath()
dofile(localPath.."lib/commonLib.lua")
setImmersiveMode(true)
dimension = autoResize(Pattern("play.png"):similar(0.9), 1280, true)
toast(""..dimension)
-- ==========  main program ===========
loadStrings(localPath.."lib/")

upperRight = Region(640, 0, 640, 350)
upper = Region(0, 0, 1280, 380)
low = Region(0, 360, 1280, 440)

lang = getLanguage()
dialog()

--enterBtn = "enter."..lang..".png"
nextBtn = "nextDungeon."..lang..".png"
okBtn = "ok."..lang..".png"
cancelWordBtn = "cancelWord."..lang..".png"

clickList = {"play.png", cancelWordBtn, okBtn, nextBtn, "reward.png"} -- , "skip1.png", "skip2.png" }
home = find("playHome.png")
skip = Location(home:getX()-75, home:getY())

while (true) do
    choice, listMatch = waitMulti(clickList, 5 * 30, skip)

    if (choice == 1 and exists("play.png",0)) then
        existsClick(okBtn,2) -- for clicking on energy accidently
        while (true) do
            click(listMatch)
            if (exists("cancel.png", 2)) then break end

            if (existsClick(cancelWordBtn,0)) then
                toast(energyNotEnoughString)
                wait(5*60)
            end
        end
        if (inviteFriend) then
            waitClick(Pattern("cancel.png"):targetOffset(-60, 150))
        end
        waitClick(Pattern("cancel.png"):targetOffset(-265, 620)) -- enter dungeon
        while(true) do
            if (exists("eye.png",0 )) then
                break
            else
                click(skip)
            end
        end

        --        wait("auto.png", 30)
        wait(2)
        existsClick("auto.png") -- auto on and off images are different
--        if (not isColor("auto.png" , 16)) then
--            click("auto.png")
--        end

--        print ("enter fighting")
        toast("enter fighting")
        while (true) do
            local cList = {"hellfire.png", "failDiamond.png", okBtn, nextBtn}
            local cc, ll = waitMulti(cList, 5)
            if (cc == 1) then
                click(ll)
            else
--                print(cList[cc])
               if (not exists("eye.png")) then break end
            end
        end
--        print("leaving fighting")
        toast("leaving fighting")


--        while (true) do
--            waitVanish("settings.png", 5 * 60)
--            if (not exists("settings.png")) then break end
--        end

        if (exists("failDiamond.png", 2)) then
            simpleDialog(warningString, failString)
            break
        end

        winList = {"box.png", okBtn, nextBtn }

        while (true) do
            local cc, ll = waitMulti(winList, 5, skip)
            if (winList[cc] == nextBtn) then
                if (not existsClick(okBtn)) then
                    break
                end
            end
            if (cc ~= -1) then
                click (ll)
            end
        end

--        click(skip)
--        existsClick("box.png")
--        while (true) do
--            if (existsClick(okBtn)) then break end -- invite friend or get reward
--            click(skip)
--        end
--        wait(2)
--        existsClick(okBtn) -- invite friend or get reward

        if (nextArea) then
            waitClick(nextBtn)
        else
            waitClick(Pattern(nextBtn):targetOffset(-280, 0))
            exists("play.png", 15)
        end

    else -- not "play.png"
        click(listMatch)
    end



end