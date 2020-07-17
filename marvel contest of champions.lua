-- ========== Settings ================

Settings:setCompareDimension(true, 1440)
Settings:setScriptDimension(true, 1440)
--setDragDropTiming(200, 200)
--setDragDropStepCount(10)
--setDragDropStepInterval(30)
-- ==========  main program ===========
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

start=Pattern("start2.png"):similar(0.9)
while 0==0 do
-- Start Battle
while 0==0 do
    if exists(start) then
        wait(2)
        click(getLastMatch())
        break
    end
end

while 0==0 do
    if exists("quick match.png") then
        wait(0.5)
        click(getLastMatch())
        break
    end
end

-- Ask for Recovery
found = false
while found == false do
flag = true
while flag == true do
    --InfoWindow()
    wait(1)
    reg = Region(470, 206, 260, 251)
    reg2 = Region(470, 206, 760, 751)
    if reg2:exists("recover.png") then
        if reg:exists("recover.png") then
            wait(0.5)
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

--InfoWindow()
wait(1)
dragDrop(Location(908, 319), Location(270, 141))

--[[-- Setup second champions
while StaminaCheck() do
    wait(60)
end

--InfoWindow()
wait(1)
dragDrop(Location(608, 319), Location(264, 272))

-- Setup third champions
while StaminaCheck() do
    wait(60)
end

--InfoWindow()
wait(1)
dragDrop(Location(608, 319), Location(256, 403))]]

-- Find Match
--InfoWindow()
wait(1)
    if exists("find match.png") then
        wait(0.5)
        click(getLastMatch())
        found = true
    end
end

--[[-- Select Opponent
while 0==0 do
    wait(1)
    if exists("continue.png") then
        wait(0.5)
        click(getLastMatch())
        break
    end
end

-- Accept
while 0==0 do
    wait(1)
    if exists("accept.png") then
        wait(0.5)
        click(getLastMatch())
        break
    end
end]]

--for i=1, 3 do
-- Continue Battle
--[[while 0==0 do
    wait(1)
    if exists("continue.png") then
        wait(2)
        click(getLastMatch())
        break
    end
end]]

-- Exit Battle
wait(1)
while 0==0 do
    dragDrop(Location(300, 450), Location(375, 450))
    wait(0.08)
    click(Location(1200, 500))
    wait(0.07)
    click(Location(1200, 500))
    wait(0.07)
    click(Location(1200, 500))
    wait(0.05)
    dragDrop(Location(300, 450), Location(225, 450))
    wait(0.08)
    dragDrop(Location(300, 450), Location(375, 450))
    wait(0.085)
    click(Location(1200, 500))
    wait(0.07)
    click(Location(1200, 500))
    wait(0.07)
    click(Location(1200, 500))
    wait(0.06)
    dragDrop(Location(300, 450), Location(225, 450))
    wait(0.08)
    dragDrop(Location(300, 450), Location(375, 450))
    wait(0.085)
    click(Location(1200, 500))
    wait(0.07)
    click(Location(1200, 500))
    wait(0.07)
    click(Location(1200, 500))
    wait(0.06)
    click(Location(250, 760))

    if exists(start) then
        wait(0.7)
        break
    end
end
--end

--[[-- After Battle Group
while 0==0 do
    wait(1)
    if exists("continue.png") then
        wait(0.5)
        click(getLastMatch())
        break
    end
end

-- Continue to Next Group
while 0==0 do
    wait(1)
    if exists("continue.png") then
        wait(0.5)
        click(getLastMatch())
        break
    end
end]]

end
