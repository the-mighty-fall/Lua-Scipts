-- ========== Settings ================

Settings:setCompareDimension(true, 1440)
Settings:setScriptDimension(true, 1440)
setDragDropTiming(200, 200)
setDragDropStepCount(10)
setDragDropStepInterval(30)
-- ==========  main program ===========

start = Pattern("start4.png"):similar(0.99)
end_battle = Pattern("end battle2.png"):similar(0.8)

-- Stamina Check
function StaminaCheck()
    reg = Region(470, 206, 260, 251)
    if reg:exists("wait.png") then
        return true
    else
        return false
    end
end

-- Close Info Window
function InfoWindow()
    if exists("info.png") then
        if exists("x.png") then
            wait(0.2)
            click(getLastMatch())
        end
    end
end

while 0==0 do
-- Start Battle
count = 0
while 0==0 do
    count = count + 1
    if exists(start) then
        wait(2)
        click(getLastMatch())
        break
    end
    if count % 10 == 0 then
        if exists("continue.png") then
            click(getLastMatch())
        end
    end
end


-- Ask for Recovery
found = false
while found == false do
flag = true
while flag == true do
    InfoWindow()
    wait(1)
    reg = Region(470, 206, 260, 251)
    reg2 = Region(470, 206, 760, 751)
    if reg2:exists("recover.png") then
        if reg:exists("recover.png") then
            wait(1)
            click(reg:getLastMatch())
            end
    else
        flag = false
    end
end

-- Setup first champions
while StaminaCheck() do
    wait(60)
end

InfoWindow()
wait(1)
dragDrop(Location(608, 319), Location(270, 141))

-- Setup second champions
while StaminaCheck() do
    wait(60)
end

InfoWindow()
wait(1)
dragDrop(Location(608, 319), Location(264, 272))

-- Setup third champions
while StaminaCheck() do
    wait(60)
end

InfoWindow()
wait(1)
dragDrop(Location(608, 319), Location(256, 403))

-- Find Match
InfoWindow()
wait(1)
findMatch=Pattern("find match.png"):similar(0.8)
    if exists(findMatch) then
        wait(1)
        click(getLastMatch())
        found = true
    end
end

-- Select Opponent
while 0==0 do
    wait(1)
    if exists("continue.png") then
        wait(1)
        click(getLastMatch())
        break
    end
end

-- Accept
while 0==0 do
    wait(1)
    if exists("accept.png") then
        wait(1)
        click(getLastMatch())
        break
    end
end

for i=1, 3 do
-- Continue Battle
count = 0
while 0==0 do
count = count + 1
    wait(1)
    if exists("continue.png") then
        wait(2)
        click(getLastMatch())
        wait(10)
        if exists("continue.png") == nil then
            break
        end
    end
    if count % 10 == 0 then
        if exists("end battle.png") then
            click(Location(700, 700))
        end
    end
end

-- Exit Battle
wait(1)
while 0==0 do
    wait(1)
    if exists("end battle.png") then
	getLastMatch():highlight(2)
        --click(getLastMatch())
        --wait(1)
	click(Location(700, 700))
        wait(3)
        if exists("end battle.png") == nil then
            break
        else
            wait(3)
        end
    end
end
end

-- After Battle Group
count = 0
while 0==0 do
count = count + 1
    wait(1)
    if exists("continue.png") then
        wait(1)
        click(getLastMatch())
        break
    end
    if count % 10 == 0 then
        if exists("end battle.png") then
            click(Location(700, 700))
        end
    end
end

-- Continue to Next Group
while 0==0 do
    wait(1)
    if exists("continue.png") then
        wait(1)
        click(getLastMatch())
        break
    end
end

end
