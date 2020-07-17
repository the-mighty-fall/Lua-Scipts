-- ========== Settings ================
Settings:setCompareDimension(true, 640)
Settings:setScriptDimension(true, 1280)

-- ==========  main program ===========

while (true) do
    waitClick("play.png")
    if (not exists("engage.png", 3)) then
        break
    end
    waitClick("engage.png")
    waitVanish("engage.png")
    waitClick("autoFight.png")
    waitClick("repeat.png",270)
    if (not waitVanish("repeat.png", 3.0)) then
        existsClick("bigCancel.png")
        existsClick("repeat.png")
        if (not exists("play.png")) then
            existsClick("back.png")
        end
    end
    
end

