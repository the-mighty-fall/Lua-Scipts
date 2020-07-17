-- ========== Settings ================
Settings:setCompareDimension(true, 720)
Settings:setScriptDimension(true, 720)
Settings:set("MinSimilarity", 0.8)
localPath = scriptPath()
dofile(localPath.."lib/commonLib.lua")
setImmersiveMode(false)
dimension = autoResize(Pattern("logo.png"):similar(0.9), 720, false)
if (dimension < 0) then
    simpleDialog("Error", "cannot find correct compare dimension")
    return
end
toast (""..dimension)
-- ==========  main program ===========
dialogInit()
addTextView("How many rounds: ")
addEditNumber("round", "5")
newRow()
addCheckBox("combine3Star", "Combine 3 star roles", true)
dialogShow("Input rounds of combining")
logo = getLastMatch()
logoX = 360 --getLastMatch():getCenter():getX()
logoY = getLastMatch():getCenter():getY()

for i = 1, round do
    waitClick("itemPlatform.png", 5)

    wait(2)
    click(Location(logoX -275, logoY + 275))
--    wait(1)
    click(Location(logoX -150, logoY + 275))
--    wait(1)
    click(Location(logoX     , logoY + 275))
--    wait(1)
    click(Location(logoX +150, logoY + 275))
--    wait(1)
    click(Location(logoX +290, logoY + 275))
--    wait(1)

    click("ok.png")
    wait(2)
    click(Location(logoX, logoY + 785)) -- combine button
    wait(1)
    if (exists("dialogCorner.png", 5)) then
        if (combine3Star) then
            click (Location(logoX -140, logoY + 490))
        else
            simpleDialog("Warning", "Don't combine 3 star roles")
            return
        end
    end
    waitClick("skip.en.png", 15)
    wait(1)
    click(logo)
    wait("logo.png", 30)

end


