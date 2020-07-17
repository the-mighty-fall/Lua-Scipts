
function ocr()
    wait("play.png")
    local targetHeap
    if (plunderType == 1) then
        targetHeap = lowerRight:wait("goldHeap.png",5)
    else
        targetHeap = lowerRight:wait("lootExp.png",5)
    end

    local y = targetHeap:getY()
    Settings:setCompareDimension(true, 1280)
--    Settings:snapSet("OutputRegImg", true)
    local r = Region(0, y, 640, targetHeap:getH())
    local preSimilar = Settings:get("MinSimilarity")
    Settings:set("MinSimilarity", 0.9)
    local p = numberOCR(r,"power")
    Settings:set("MinSimilarity", preSimilar)
    Settings:setCompareDimension(true, 640)
--    Settings:snapSet("OutputRegImg", false)
    return (p)
end

function userInterface()
    dialogInit()
    addTextView("Maximum enemy power: ")
    addEditText("maxEnemyPower", "50000")

    newRow()
    addTextView("")
    newRow()
    addTextView("Plunder Type")

    addRadioGroup("plunderType", 1)
    addRadioButton("GOLD", 1)
    addRadioButton("EXP", 2)

    dialogShow("Booty Cave Settings")

end

function checkEnergy()
    Settings:setCompareDimension(true, 1280)
    local m = find("breadTotal.png")
    local r = Region(m:getX() - m:getW(), m:getY(), m:getW(), m:getH())
    local preSimilar = Settings:get("MinSimilarity")
    Settings:set("MinSimilarity", 0.9)
    local p = numberOCR(r,"bread")
    Settings:set("MinSimilarity", preSimilar)
    toast ("Bread left: " .. p)
    Settings:setCompareDimension(true, 640)

    return (p >= 2)

end

function gotoPlunder()
    waitClick("play.png")
    waitVanish("play.png")
    sleep(1.0)
    if (exists("noHero.png", 3)) then -- choose top 5 heroes if no hero
        click(Location(310,185))
        click(Location(470, 185))
        click(Location(630, 185))
        click(Location(790, 185))
        click(Location(950, 185))
    end

    waitClick("engage.png", 5)
    waitVanish("engage.png")
    waitClick("autoFight.png", 5)
    while (true) do
        if (exists(Pattern("exit.png"):similar(0.9)) or exists(Pattern("lose_return.png"):similar(0.9))) then break end
    end
    toast("plunder completed")
    if (existsClick("exit.png")) then return (true) end
    return(false)
end

-- ========== Settings ================
Settings:setCompareDimension(true, 640)
Settings:setScriptDimension(true, 1280)
lowerRight = Region(640, 360, 640, 360)

-- ==========  main program ===========
plunder = {"plunderGold.png", "plunderExp.png"}

if (not checkEnergy()) then
    print("Not enough bread")
    do return end
end

userInterface()
maxEnemyPower = tonumber(maxEnemyPower)


while(existsClick(Pattern("diamond.png"):similar(0.9))) do
    print(getLastMatch())
    do return end
    sleep(1.0)
end

--toast(plunder[plunderType])
while(not existsClick(plunder[plunderType])) do
    waitClick("nextStage.png")
    sleep(1.0)
end

tmp = 1

try_num = 0
fight = 0
lose = 0
retry = 1
new_entry = true

while (true) do
    if (not checkEnergy()) then
        print("Not enough bread")
        do return end
    end


    while (true) do --continue until fight once
        if (not new_entry) then
            lowerRight:waitClick(Pattern("goldHeap.png"):targetOffset(0,72))
        end
        lowerRight:existsClick(Pattern("button.png"):similar(0.9))

        new_entry = false


        wait("enemy.png", 10)
        try_num = try_num + 1

        if(table.getn(findAll("enemy.png")) > 1) then
            retry = retry + 1
        else
            click(getLastMatch())
            enemyPower = ocr()
            toast("Enemy Power: "..enemyPower)

            if (enemyPower < maxEnemyPower) then
                win = gotoPlunder()
                fight = fight + 1
                retry = 1
                if (win) then
                    waitClick("diamond.png")
                else
                    lose = lose + 1
                    waitClick("lose_return.png")
                    if (existsClick("diamond.png")) then
                        lose = lose -1
                    else
                        waitClick("cancel.png")
                    end
                end
                break
            else
                waitClick("cancel.png")
                retry = retry + 1
            end

        end

    end
end

