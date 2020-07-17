-- ========== Settings ================
Settings:setCompareDimension(true, 640)
Settings:setScriptDimension(true, 1280)
Settings:set("MinSimilarity", 0.8)
-- ==========  main program ===========

left = Region(0,0, 640, 720)

while (true) do

    all = regionFindAll(left, "addSkill.png")

    for i, item in ipairs(all) do

        if (exists("buy.png",3)) then
            toast("Find buy.png")
            sleep(5*60)
        end
        click(item)
        existsClick("cancelWord.png",2)
    end

end