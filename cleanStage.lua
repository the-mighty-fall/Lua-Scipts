-- ========== Settings ================
Settings:setCompareDimension(true, 640)
Settings:setScriptDimension(true, 1280)
localPath = scriptPath()
--setImagePath(localPath.."image1280/")

-- ==========  main program ===========
--toast("start")
allHero = nil
--allHero = {Location(230, 620), Location(430, 610), Location(610, 610), Location(810, 610), Location(1000, 610)}
while (true) do
    waitClick(Pattern("stage.png"):targetOffset(0,40))
    existsClick(Pattern("stage.png"):targetOffset(0,20),0)
    waitClick("play.png")
    waitClick("engage.png")
    waitVanish("engage.png")
    wait("iconFrame.png",5)

    if (not allHero) then
        allHero = findAll(Pattern("iconFrame.png"):targetOffset(0,50))
    end

    for n = 1, 2 do
        while (true) do
            for i, item in ipairs(allHero) do
                click(item)
            end
            if (existsClick(Pattern("nextStage.png"):similar(0.9), 0)) then
--                toast("next stage found")
                break
            end
        end
    end

    while (true) do
        for i, item in ipairs(allHero) do
            click(item)
        end
        if (existsClick("exit.png", 0)) then break end
    end

end