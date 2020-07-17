-- ========== Settings ================
Settings:setCompareDimension(true, 720)
Settings:setScriptDimension(true, 720)
Settings:set("MinSimilarity", 0.8)
localPath = scriptPath()
dofile(localPath.."lib/commonLib.lua")
setImmersiveMode(false)

language = getLanguage()
--if (language == "zh") then
--    anchorImage = "mission.png"
--else
    anchorImage = "back.en.png"
--end

dimension = autoResize(Pattern(anchorImage):similar(0.9), 720, false)
if (dimension < 0) then
    simpleDialog("Error", "cannot find correct compare dimension")
    return
end
toast (""..dimension)
-- ==========  main program ===========
loadStrings(localPath.."lib/")

area = {}
totalAreaNum = 0
areaSelect = {}

if (exists("newArea.png", 3)) then
    totalAreaNum = totalAreaNum + 1
    area[1] = getLastMatch()
    areaSelect[1] = "1"
end

if (exists("clear.png")) then
    local all = findAll("clear.png")
    for i, m in ipairs(all) do
        totalAreaNum = totalAreaNum + 1
        area[totalAreaNum] = m
        areaSelect[totalAreaNum] = ""..totalAreaNum
    end
end

for i, m in ipairs(area) do
    m:highlight()
end
wait(5)
for i, m in ipairs(area) do
    m:highlight()
end


dialogInit()
addCheckBox("newArea", nextAreaString, true)
newRow()
addTextView(friendString)
addSpinner("friendNum", {"1", "2", "3", "4", "5", "6"}, "1")
newRow()
addCheckBox("inviteFriend", inviteString, true)
newRow()
addTextView(targetGuideString)
newRow()
addTextView(areaString)
addSpinner("areaTarget", areaSelect,areaSelect[1])
newRow()
addTextView(stageString)
addSpinner("stageTarget", {"1", "2", "3", "4", "5"}, "1")
dialogShow(SettingsString)

friendNum = 0 + friendNum
areaTarget = area[0 + areaTarget]
stageTarget = 0 + stageTarget

--returnBtn = "return."..language..".png"
friendRegion = Region(530, 0, 190, 640)
alive = Location(360, 100)

--clickList = { returnBtn, "logo2.png", "get.png", anchorImage, "main.png"}
clickList = { "ok.png", "friendFrame.png", anchorImage, "main.png", "logo2.png", "tillis.png", "carl.png", "close.png",
    "skip1.png"}
while (true) do

    if (newArea) then

        waitClick("newArea.png")

--        if (not existsClick("newArea.png")) then
--            click(Pattern("newArea.png"):targetOffset(0,160))
--            waitClick("newArea.png", 3)
--        end
    else -- not new area
        areaTarget:highlight(2)
        click(areaTarget)
    end

    while (true) do
        choice, listMatch = waitMulti({"logo2.png", "tillis.png", "carl.png"}, 30, alive)
        if (choice == 1) then break end
        if (choice == 2) then
            existsClick(Pattern("tillis.png"):targetOffset(200,-95))
        end
        if (choice == 3) then
            existsClick(Pattern("carl.png"):targetOffset(230,-90))
        end
    end

    wait("logo2.png", 5)
    logo = getLastMatch()
    logoCenterX = 360; --logo:getCenter():getX()
    logoCenterY = logo:getCenter():getY()

    wait("stageCorner.png", 30)
    while (true) do
        if (newArea) then
            click(Location(360, logoCenterY + 290))
        else
            click(Location(360, logoCenterY + 240 + (stageTarget - 1) * 168))
        end

        if (exists("dialogCorner.png")) then
            toast(energyNotEnoughString)
            click(Location(logoCenterX + 140, logoCenterY + 520))
            wait(5 * 60)
        else
            break
        end
    end


    wait(2)
    while (true) do
        choice, listMatch = waitMulti({"logo2.png", "tillis.png", "carl.png"}, 30, alive)
        if (choice == 1) then break end
        if (choice == 2) then
            existsClick(Pattern("tillis.png"):targetOffset(200,-95))
        end
        if (choice == 3) then
            existsClick(Pattern("carl.png"):targetOffset(230,-90))
        end
    end

--    logo = getLastMatch()
--    logoCenterX = logo:getCenter():getX()
--    logoCenterY = logo:getCenter():getY()


    toast("invite Friend")
--    wait(3)
    wait("noFriendButton.png", 20)
    getLastMatch():highlight(3)
    if (not inviteFriend) then
--        friendRegion:waitClick("noFriendButton.png")
        waitClick(Pattern("logo2.png"):targetOffset(0,280), 20)
    else
        click(Location(360, logoCenterY + 230 + (friendNum - 1) * 136))
    end

    lowest = Region (0, logoCenterY + 750, 720, 500)
    wait(3)
    lowest:waitClick("bigButton.png")
    waitClick("auto.en.png", 30)
    auto = getLastMatch():getCenter()
    wait(1)
    click(Location(auto:getX() - 135, auto:getY()))

    choice, listMatch = waitMulti({"dialogCorner.png", "logo2.png"}, 15*60)
    if (choice == 1) then
        if (exists("dialogCorner.png")) then
            simpleDialog("Warning", "Lose")
            return
        end
    end

--    wait("logo2.png", 10*60)

--    if (lowest:exists("bigButton.png", 2)) then
--        simpleDialog("Warning", "Lose")
--        return
--    end

    while (true) do
        choice, listMatch = waitMulti(clickList, 2 * 60, logo)
        if (choice == -1) then
            simpleDialog("Warning", "Unknown happened\nReport to ankulua@gmail.com")
            return
        end
        listMatch:highlight(2)
        if (clickList[choice] == anchorImage) then
            break
        end
        if (clickList[choice] == "main.png") then
            click(listMatch)
            wait(2)
            waitClick("missionGate.png")
            break
        end

        if (clickList[choice] == "friendFrame.png") then
            if (inviteFriend) then
                click(Pattern("friendFrame.png"):targetOffset(145, 415))
            else
                click(Pattern("friendFrame.png"):targetOffset(455, 415))
            end
            waitClick("ok.png", 5)
            end

        if (clickList[choice] == "tillis.png") then
            click(Pattern("tillis.png"):targetOffset(200,-95))
        else
            click(listMatch)
        end

        wait(2)
    end

end