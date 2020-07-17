--========== Settings ================
Settings:setCompareDimension(true, 1280)
Settings:setScriptDimension(true, 1280)
setImmersiveMode(true)
localPath = scriptPath()
dofile(localPath .. "lib/lib.lua")
Settings:set("MinSimilarity", 0.7)
-- ==========  main program ===========
loadStrings(localPath .. "lib/")


leftLoc = Location(200, 400)
rightLoc = Location(1200, 400)
upperLoc = Location(640, 100)
bottomLoc = Location(640, 670)
MAX_I = 10
MAX_J = 8

dx = (rightLoc:getX() - leftLoc:getX()) / MAX_I
dy = (bottomLoc:getY() - upperLoc:getY()) / MAX_J


function continueClickReg(reg_)
    if (not testPath) then
        continueClick(reg_:getX(), reg_:getY(), reg_:getW(), reg_:getH(), 150)
    end
end

function clickEvery()
    closeDialogs()

    local reg = Region(leftLoc:getX() - 50, upperLoc:getY(), rightLoc:getX() - leftLoc:getX(), bottomLoc:getY() - upperLoc:getY() - dy)

    if (exists("expandRight.png", 0) or exists("expandLeft.png", 0) or exists("expandUp.png", 0)) then
        toast("found expand sign")
        local match = getLastMatch()
        --match:highlight(1)
        local reg1 = Region(reg:getX(), reg:getY(), match:getX() - reg:getX() - 45, reg:getH())
        reg1:highlight(0.5)
        continueClickReg(reg1)
        local reg2 = Region(match:getX() + match:getW() + 30, reg:getY(), rightLoc:getX() - match:getX() - match:getW() - 33, reg:getH())
        reg2:highlight(0.5)
        continueClickReg(reg2)
    else
        reg:highlight(0.5)
        continueClickReg(reg)
    end
    zoomout(leftLoc, rightLoc)
    --
    -- for j = 0, MAX_J - 1 do
    -- local loc = Location(leftLoc:getX() - 50 + dx * i, upperLoc:getY()  + dy * j)
    -- local reg = Region(loc:getX() - 10, loc:getY() - 10, 20, 20)--
    -- reg:highlight(0.1)
    -- -- click(loc)
    -- end
    -- end
end

function swipeM(firstLoc, secondLoc)
    touchDown(firstLoc, 0.2)
    touchMove(secondLoc, 0.5)
    touchUp(secondLoc, 0.2)
end

function up()
    swipeM(upperLoc:offset(0, upAcc), bottomLoc) --90
    clickEvery()
end

function down()
    swipeM(bottomLoc, upperLoc:offset(0, downAcc)) --90
    clickEvery()
end

function left()
    swipeM(leftLoc:offset(leftAcc, 0), rightLoc) --100
    clickEvery()
end

function right()
    swipeM(rightLoc, leftLoc:offset(rightAcc, 0)) --120
    clickEvery()
end

function rightNoClick()
    swipeM(rightLoc, leftLoc:offset(rightAcc, 0)) --120
end

function closeDialogs()
    local patterns = { "closeDialog2.png", "closeDialog1.png", "cancel.png" }
    for i, pat in ipairs(patterns) do
        if exists(pat, 0) then
            click(getLastMatch())
        end
    end
end

function testImages()
    local function indicate(image)
        toast(image)
        wait(5)
        if exists(image, 0) then
            getLastMatch():highlight(1)
        end
    end

    local images = {
        "cancel.png", "chooseBox.png", "closeDialog2.png", "closeDialog1.png", "expandLeft.png",
        "expandRight.png", "expandUp.png", "gameOpened.png", "ok.png", "prize.png", "returnHome.png"
    }
    for i, r in ipairs(images) do
        indicate(r)
    end
end

function returnHome()
    for i = 1, 10 do
        rightNoClick()
        if exists("returnHome.png", 0) then
            click(getLastMatch())
            break
        end
    end
    wait(1)
end

--testImages()

dialogInit()
addCheckBox("testPath", "Don't click", false)
newRow()
addCheckBox("isStartPos", "Find start position", true)
newRow()
addTextView("   L = move left ")
addTextView("   R = move right")
newRow()
addTextView("   U = move up")
addTextView("   D = move down")
newRow()
addTextView("   PATH: ")
addEditText("path", "LR")
--newRow()
--addTextView("   leftAcc: ")
--addEditNumber("leftAcc", 100)
leftAcc = 100 -- for more presize swipe
--addTextView("rightAcc: ")
--addEditNumber("rightAcc", 120)
rightAcc = 120
--newRow()
--addTextView("   upAcc: ")
--addEditNumber("upAcc", 90)
upAcc = 90
--
--addTextView("downAcc: ")
--addEditNumber("downAcc", 90)
downAcc = 90

dialogShow("Options")
function main()
    if isStartPos then
        returnHome()
    end
    zoomout(leftLoc, rightLoc)

    local ftable = {
        ["U"] = up,
        ["D"] = down,
        ["R"] = right,
        ["L"] = left,
    }

    clickEvery()
    for i = 1, #path do
        local func = path:sub(i, i)
        ftable[func]()
    end
end

while (true) do
    main()
    wait(300)
end







