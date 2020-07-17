version = "1.2.0"

function stringsZH()
    enderrorString = "錯誤"
    warningString = "警告"
    settingsString = "設定"

    immersiveString = "浸潤模式(沒有海苔條請勾選)"
    saveFileNameString = "儲存錄製點擊到檔案: "

    fileExistsString = "檔案已存在，要覆蓋嗎?"
    overWriteOriginalString = "覆蓋原檔: "
    appendOriginalString = "擴充原檔: "
    overWriteNewString = "覆蓋新檔: "
    storeNewString = "儲存到新檔: "

    stopLocationString = "停止錄製區域\n (按此紅色區域可以停止錄製): "
    upperLeftString = "左上角"
    upperRightString = "右上角"
    lowerLeftString = "左下角"
    lowerRightString = "右下角"

    stopRecordString = "停止錄製"

    scriptToPlayString = "選擇要回放的檔案: "
    scriptToExpandString = "選擇要擴充的檔案:  "

    timesString = "回放次數: "
    gapString = "回放間隔幾秒: "
    contentString = "回放內容"

    modifiedString = "內容已更動"

    chooseActionString ="選擇要做的事"
    recordString = "錄製"
    playString = "回放"
    expandString = "擴充已存luar (將於下頁選擇檔案)"

    snapWidthString = "往左右各截取幾點? "
    snapHeightString = "往上下各截取幾點? "
    snapRegionExtraString = "搜尋區域網上下左右各長幾點? "
    duplicateDetectString = "重複圖行偵測(相同圖形不會記錄)"
    repeatDetectRegionString = "重複圖行偵測左右各長幾點?"
    dragDropOptionString = "拖放或滑動圖形要執行的動作: "
    dragDropOptionTable = {"依照偵測到的動作","拖放", "滑動", "發現A圖時點擊B圖", "詢問" }
    dragDropAskString = "偵測到拖放或滑動，請選擇要執行動作:"


    smartOrderString = "智慧順序(如果背景圖形已經被截取過，新截圖將排在前面)"
    repeatFoundString = "發現重複圖案，不會新增重複圖案"
    backgroundFoundString = "發現其他已存在圖案， 將重新排序"

    specifyFileNameString = "手動輸入圖檔名稱"
    inputFileNameString = "輸入檔案名稱: "
    inputDragFileNameString = "輸入拖行檔案名稱: "
    inputDropFileNameString = "輸入放置檔案名稱: "


    similarString = "最低相似度(0~0.99): "
    allWithRegionString = "所有搜尋都要用區域搜尋"
    searchFromBeginningString = "每次都從第一個圖開始搜尋\n(如果沒勾選，則會從上次找到的圖往下搜尋)"
    whichWithRegionString = "哪些搜尋要用區域搜尋"
    withRegsionString = "用區域搜尋"
    searchPngString = "搜尋到固定圖片幾次後停止\n(將於下頁做細部設定)"
    searchPngPreString = "搜尋到 "
    searchTimesString = "次就停止"
    runTimeString = "執行幾分鐘後停止: "
    searchReachString = "已經找到 %s.png %d次"
    timeReachString = "腳本已執行 %d分鐘"
    randomTouchString = "隨機點擊(上下左右畫數): "
    waitString = "等待"
    underWaitString = "等待中...\n請勿碰觸螢幕!"
    waitOptionString = "啟用等待選項"
    waitSecondString = "， 每次等待秒數: "
    waitDescriptionString ="如果當螢幕變淡黃時遊戲會暫停，請啟用此選項"

--     pokemon quest related
    newStageString = "打新的或Boss關卡(沒勾選將打最近過關的關卡)"
    failOptionString = "失敗後選項"
    lastWorkString = "打最近過關的關卡"
    stopString = "停止腳本"
    retryString = "重打同一關"
    newCookString = "自動做新料理"

    failString = "失敗! 停止腳本"
    buyEnergyString = "使用禮券購買電池電量"
    noEnergyString = "沒有電量，等待五分鐘"
    cookStopString = "煮好料理時停止腳本"
    potTypeString = "料理鍋子"

    potTypeTable = {"鐵鍋", "銅鍋", "銀鍋", "金鍋" }
    cookContentName = {"小磨菇", "墨梅果", "球果", "化石", "彩虹素材", "大根莖", "冰冷岩石", "甜蜜蜜", "芳香磨菇", "大彩" }

end


function stringsEN()
    errorString = "Error"
    warningString = "Warning"
    settingsString = "Settings"

    immersiveString = "Immersive mode"
    saveFileNameString = "Save recording to file: "

    fileExistsString = "File exists. Overwrite?"
    overWriteOriginalString = "Overwrite original file: "
    appendOriginalString = "Append original file: "
    overWriteNewString = "Overwrite new file: "
    storeNewString = "Store to new file: "

    stopLocationString = "Stop recording area\n (click this red area to stop): \n"
    upperLeftString = "Upper left"
    upperRightString = "Upper right"
    lowerLeftString = "Lower left"
    lowerRightString = "Lower Right"

    stopRecordString = "Stop recoring"

    scriptToPlayString = "The file to playbak: "
    scriptToExpandString = "The file to expand: "
    timesString = "Replay times: "
    gapString = "Gap (second) between replay: "
    contentString = "Plackback Content"

    modifiedString = "Content modified"

    chooseActionString ="Choose what to do"
    recordString = "Record"
    playString = "Playback"
    expandString = "Expand existing luar (Select file in next dialog.)"

    snapWidthString = "How many pixels to snap in left and right? "
    snapHeightString = "How many pixels to snap in up and down? "
    snapRegionExtraString = "How many pixels to expand in searching region? "
    duplicateDetectString = "Detect duplication(same images will not be recorded again)"
    repeatDetectRegionString = "How many pixels to expand in searching duplication?"
    dragDropOptionString = "The action when drag & drop or swipe detected: "
    dragDropOptionTable = {"According to detected action","drag and drop", "swipe", "If A found, click B", "Ask" }
    dragDropAskString = "DragDrop/swipe detected, choose the actions:"

    smartOrderString = "Smart order(If previous snaps found in background, new snap will arrange in front)"
    repeatFoundString = "Find duplicate image. The image is not recorded."
    backgroundFoundString = "Find previous snaps in background, the new snap is rearranged."

    specifyFileNameString = "Manually specify image file name "
    inputFileNameString = "Input file name: "
    inputDragFileNameString = "Input drag file name: "
    inputDropFileNameString = "Input drop file name: "

    similarString = "Minimum similarity(0~0.99): "
    allWithRegionString = "All searchings with regions"
    searchFromBeginningString = "Always search from first image.\n(If not selected, will search from next image of found one.)"
    whichWithRegionString = "Which searchings with region?"
    withRegsionString = "search with region"
    searchPngString = "Stop when finding chosen snap for fixed times.\n (If clicked, setting in next diaglog.)"
    searchPngPreString = "Stop when finding "
    searchTimesString = "times"
    runTimeString = "How many minutes to stop? "
    searchReachString = "Have found %s.png %d times"
    timeReachString = "Script have run %d minutes"
    randomTouchString = "Random click (up/down/left/right pixels): "

    waitString = "Wait"
    underWaitString = "Waiting...\nDon't touch screen!"
    waitOptionString = "Enable wait option"
    waitSecondString = ", waiting seconds: "
    waitDescriptionString ="Enable this if the game pauses when the screen is light yellow."

    --     pokemon quest related
    newStageString = "New stage (If not selected, will fight latest successful stage.)"
    failOptionString = "What to do if failure"
    lastWorkString = "Fight latest successful stage"
    stopString = "Stop the script"
    retryString = "Try the same stage again"
    newCookString = "Start cooking automatically"

    failString = "Fail! Stop the script"
    buyEnergyString = "Use coupon to buy battery energy"
    noEnergyString = "No energy, wait five minutes"
    cookStopString = "Stop the script when cooking done"
    potTypeString = "Select cooking pot "

    potTypeTable = {"Iron Pot", "Copper Pot", "Silver Pot", "Gold Pot" }
    cookContentName = {"Tiny Mushroom", "Bluk Berry", "Arpicon", "Fossil", "Rainbow Matter",
        "Big Root", "Icy Rock", "Honey", "Balm Mushroom", "Mystical Shell" }

end


function regionWaitMulti(target, seconds, debug, skipLocation, index, previousSnap)
    local timer = Timer()
    local match
    local length = table.getn(target)
--    print(index)

    while (true) do
        --        for i, t in ipairs(target) do
        snapshot()
        for i = index, length do
            local t = target[i]
            if (debug and t.region) then t.region:highlight(0.2) end
            if ((t.region and (t.region):exists(t.target, 0)) or
                    (not t.region and exists(t.target, 0))) then -- check once
                usePreviousSnap(false)
                if (t.region) then
                    match = (t.region):getLastMatch()
                else
                    match = getLastMatch()
                end
                --            if (debug) then match:highlight(0.5) end
                return i, t.id, match
            end
        end
        index = 1
        if (skipLocation ~= nil) then click(skipLocation) end
        if (timer:check() > seconds) then
            usePreviousSnap(false)
            return -1, "__none__"
        end
    end
end

function targetExists(target, seconds)
    if (not seconds) then seconds = 3 end
    if (target.region) then
        return (target.region:exists(target.target, seconds))
    end
    return (exists(target.target, seconds))
end

function loadStringsFunction()
    local language = getLanguage()
    stringsEN()

    if (language == "zh") then
--        if (getCountry() == "CN") then
--            stringsZHCN()
--        else
            stringsZH()
--        end
--    elseif (language == "pt") then
--      stringsPT()
--    else
--        stringsEN()
    end
end

function fileExists(name)
    local fName = localPath .. "luar/" .. name .. ".luar"
    local f=io.open(fName,"r")
    if f~=nil then io.close(f) return true else return false end
end

function fileCheck(name, text)
    overwrite = 0
    removePreference("overwriteFileName")
    local fName = string.gsub(name, ".luar$", "")
    name = fName
    fileName = preferenceGetString("fileName", "")

    while (overwrite == 0 and fileExists(fName)) do
        dialogInit()
        addTextView(text)
        newRow()
        addRadioGroup("overwrite", 0)
        addRadioButton(overWriteOriginalString .. name .. ".luar", 1)
        addRadioButton(appendOriginalString .. name .. ".luar", 11)
        if (fName ~= "") then
            addRadioButton(overWriteNewString .. fileName .. ".luar", 2)
        end

        addRadioButton(storeNewString, 0)
        newRow()
        addEditText("fileName", "touch2")
        addTextView(".luar")
        dialogShowFullScreen(text)

        --        if (overwrite == 1) then
        --            fName = overwriteFileName
        --        else
        fName = fileName
        --        end
    end
    return localPath .. "luar/" .. fName .. ".luar", (overwrite == 11) -- extend
end

function locationInRegion(loc, reg)
    local l = loc
    if (not reg) then return true end
    local x = l:getX()
    local y = l:getY()
    return (x > reg:getX() and x < (reg:getX() + reg:getW()) and
            y > reg:getY() and y < (reg:getY() + reg:getH()))
end

function locationToString(loc)
    return(string.format("Location(%d, %d)", loc:getX(), loc:getY()))
end

function locationToRegion(loc, widthHalf, heightHalf)

    local x = loc:getX()
    if (x - widthHalf < 0 ) then
        x = 0;
    end

    local y = loc:getY()
    if (y - heightHalf < 0) then
        y = 0;
    end

    return Region(x - widthHalf, y - heightHalf, 2 * widthHalf, 2 * heightHalf)
end

function fileHeader(fPointer)
    fPointer:write("----- created by AnkuLua snap and play script ------\n")
    fPointer:write("immersive = " .. tostring(immersive) .. "\n")
    fPointer:write("setImmersiveMode(immersive)\n")
    fPointer:write("scriptDimension = " .. scriptDimension .. "\n")
    fPointer:write("Settings:setScriptDimension(true, scriptDimension)\n")
    fPointer:write("Settings:setCompareDimension(true, scriptDimension)\n")
    fPointer:write("local index = 1\n")
    fPointer:write("touchList = {}\n")
    fPointer:write("waitList = {}\n")
    fPointer:write("\n")
end

------------------------ record function ----------------------
function regionToString(reg, snapRegionExtra)
    if (not reg) then return ('nil') end
    return("Region(" .. (reg:getX() - snapRegionExtra) .. ", " .. (reg:getY() - snapRegionExtra) .. ", "
            .. (reg:getW() + 2 * snapRegionExtra) .. ", " .. (reg:getH() + 2 * snapRegionExtra) .. ")")
end

function repeatDetect(targetReg, duplicateDetect)
    local startIndex = 1
    local meet = {}
    local repeatIndex = -1
    local backgroundIndex = -1

    while (true) do
        local choice, id, match = regionWaitMulti(touchList, 1, false, nil, startIndex, true)
        if (choice == -1) then
            break
        else
            --            targetReg:highlight()
            --            setHighlightStyle(0x80ffffff, true)
            --            match:highlight(1)
            --            targetReg:highlight()
            --            setHighlightStyle(0x80ff0000, true)

            if (locationInRegion(Location(match:getX(), match:getY()), targetReg) and
                    locationInRegion(Location(match:getX() + match:getW(), match:getY() + match:getH()), targetReg)) then
                repeatIndex = choice
                break
            else
                if (backgroundIndex == -1) then backgroundIndex = choice end
                if (repeatIndex ~= -1 or not duplicateDetect) then break end
            end

            if (startIndex == #touchList) then
                return repeatIndex, backgroundIndex
            end
            startIndex = choice + 1;

        end
    end

    return repeatIndex, backgroundIndex

end

function targetToString(t)

    if (typeOf(t) == "string") then return ('"' .. t .. '"') end

    target = 'Pattern("' .. t:getFileName() .. '")'
    target = target .. ':similar(' .. t:getSimilar() ..')'
    local tOffset = t:getTargetOffset()
    if (tOffset:getX() ~= 0 or tOffset:getY() ~= 0) then
        target = target .. string.format(':targetOffset(%d, %d)', tOffset:getX() ,tOffset:getY())
    end

    return target
end


function touchListToFile()
    io.close(fPointer)
    fPointer = io.open(fileName, "w")

    fileHeader(fPointer)
    local index = 1
    for i, t in ipairs(touchList) do
        if (not t.action) then t.action = "click" end
        local text = string.format('touchList[index] = {target =  %s, region = %s, id = "%s", action = \'%s\'',
            targetToString(t.target), regionToString(t.region, 0), t.id, t.action)
        if (t.target2) then
            text = text .. string.format(',\n                    target2 = %s, region2 = %s',
                targetToString(t.target2), regionToString(t.region2, 0))
        end
        fPointer:write("------ " .. index .. " -----\n")
        fPointer:write(text .. "}\n")
        fPointer:write("index = index + 1\n\n")

        index = index + 1
    end
end

function record(expand)
    dialogInit()
    addCheckBox("immersive", immersiveString, false)
    newRow()
    addCheckBox("specifyFileName", specifyFileNameString, false)
    --    addSeparator()
    newRow()
    newRow()

    local fileList
    if (expand) then
        fileList = scandir(luarPath ..  "*.luar")
        addTextView(scriptToExpandString)
        newRow()
        addRadioGroup("fileNum", 1)
        for i, f in ipairs(fileList) do
            local subString = localPath .. "luar/"
            local shortName = string.gsub(f, luarPath, "")
            addRadioButton(shortName, i)
            fileList[i] = shortName
        end
    else
        addTextView(saveFileNameString)
        newRow()
        addEditText("fileName", "test")
        addTextView(".luar")
    end

    newRow()
    newRow()
    addTextView(stopLocationString)
    local areaItems = {upperLeftString, upperRightString, lowerLeftString, lowerRightString }
    addSpinnerIndex("stopIndex", areaItems, areaItems[3])
    newRow()
    newRow()

    addSeparator()
    addCheckBox("waitOption", waitOptionString, false)
    addTextView(waitSecondString)
    addEditNumber("waitSecond", 10)
    newRow()
    addTextView(waitDescriptionString)
    dialogShowFullScreen(settingsString)

    if (expand) then
        fileName = string.gsub(fileList[fileNum], ".luar$", "")
    end

    setImmersiveMode(immersive)
    if (immersive) then
        scriptDimension = getRealScreenSize():getX()
    else
        scriptDimension = getAppUsableScreenSize():getX()
    end
    Settings:setScriptDimension(true, scriptDimension)
    Settings:setCompareDimension(true, scriptDimension)

    luarPath = localPath .. "luar"
    os.execute("mkdir " .. luarPath)
    luarImagePath = luarPath .. "/" .. fileName .. "Image"
    os.execute("mkdir " .. luarImagePath)
    setImagePath(luarImagePath)
    luarImagePath = luarImagePath .."/"

    dialogInit()
    addTextView(snapWidthString)
    addEditNumber("snapWidth", 25)
    newRow()
    addTextView(snapHeightString)
    addEditNumber("snapHeight", 25)
    newRow()
    addTextView(snapRegionExtraString)
    addEditNumber("snapRegionExtra", 50)
    newRow()
    addTextView(dragDropOptionString)
    addSpinnerIndex("dragDropAction", dragDropOptionTable, 1)
    newRow()
    newRow()
    addCheckBox("duplicateDetect",duplicateDetectString, false)
    newRow()
    addTextView("        " ..  repeatDetectRegionString)
    addEditNumber("repeatRegionExtra", 15)

    newRow()
    newRow()
    addCheckBox("smartOrder", smartOrderString, false)
    dialogShowFullScreen(settingsString)

    if (expand) then
        fileName = localPath .. "luar/" .. fileName .. ".luar"
        appendFile = true
    else
        fileName, appendFile = fileCheck(fileName, fileExistsString) -- fileName is with .luar
    end

    askDragDrop = dragDropAction == 5
    local index
    if (appendFile) then
        os.execute("cp "..fileName .. " " .. fileName..".bak")
        fPointer = io.open(fileName, "a+")
        dofile(fileName)
        index = #touchList + 1
    else
        fPointer = io.open(fileName, "w")
        fileHeader(fPointer)
        index = 1
        touchList = {}
    end

    local width = getRealScreenSize():getX()
    local height = getRealScreenSize():getY()
    if (immersive) then
        width = getRealScreenSize():getX()
        height = getRealScreenSize():getY()
    else
        width = getAppUsableScreenSize():getX()
        height = getAppUsableScreenSize():getY()
    end
    local stopWidth = width / 8
    local stopHeight = height / 8
    if (stopIndex == 1) then
        stopArea = Region(0, 0, stopWidth, stopHeight)
        waitArea = Region(0, stopHeight + 5, stopWidth, stopHeight)
    elseif (stopIndex == 2) then
        stopArea = Region(width - stopWidth, 0, stopWidth, stopHeight)
        waitArea = Region(width - stopWidth, stopHeight + 5, stopWidth, stopHeight)
    elseif (stopIndex == 3) then
        stopArea = Region(0, height - stopHeight, stopWidth, stopHeight)
        waitArea = Region(0, height - stopHeight * 2 - 5, stopWidth, stopHeight)
    else
        stopArea = Region(width - stopWidth, height - stopHeight, stopWidth, stopHeight)
        waitArea = Region(width - stopWidth, height - stopHeight * 2 - 5, stopWidth, stopHeight)
    end

    centerArea = Region(width / 2 - stopWidth/2, height /2 - stopHeight /2, stopWidth, stopHeight)
    fullArea = Region(0, 0, width, height)
    setHighlightStyle(0x80ff0000, true)
    setHighlightTextStyle(0x80ff0000, 0x80ffffff, 16)
    stopArea:highlight("Stop!")
    if (waitOption) then
        waitArea:highlight("Wait!")
    end


    local timer = Timer()
    local waitTime, text
    local tmpFileName1 = "___tmp1.png"
    local tmpFileName2 = "___tmp2.png"
    while(true) do

        local action, locTable, touchTable = getTouchEvent()

        if (action == "click" or action == "longClick") then
            firstDown = locTable
        else
            firstDown = locTable[1]
        end
        if (locationInRegion(firstDown, stopArea)) then
            print("stop clicked")
            io.close(fPointer)
            scriptExit(stopRecordString)
        end

        if (waitOption and locationInRegion(firstDown, waitArea)) then
            hideAndWait()
        else
            if (action == "click" or action == "longClick") then

                local reg = locationToRegion(locTable, snapWidth, snapHeight)
                reg:save(tmpFileName1)

                reg:highlight(0.5)
                _G[action](locTable)

                local extraReg = reg:grow(repeatRegionExtra, repeatRegionExtra, repeatRegionExtra, repeatRegionExtra)
                local repeatIndex, backgroundIndex
                if (smartOrder or duplicateDetect ) then
                    repeatIndex, backgroundIndex = repeatDetect(extraReg, duplicateDetect)
                end
                if (not smartOrder) then backgroundIndex = -1 end
                if (not duplicateDetect) then repeatIndex = -1 end

                if (repeatIndex ~= -1) then index = index - 1 end
                if (repeatIndex ~= -1 and backgroundIndex ~= -1) then
                    toast (repeatFoundString .. "\n" .. backgroundFoundString)
                    local original = touchList[repeatIndex]
                    dofile(fileName)
                    table.insert(touchList, backgroundIndex, original)
                    table.remove(touchList, repeatIndex + 1)
                    touchListToFile()
                elseif (repeatIndex ~= -1 and backgroundIndex == -1) then
                    toast (repeatFoundString)
                else -- repeatIndex == -1
                if (specifyFileName) then
                    dialogInit()
                    addTextView(inputFileNameString)
                    newRow()
                    addEditText("pngFileName", ""..index)
                    addTextView(".png")
                    dialogShowFullScreen(settingsString)
                else
                    pngFileName = "" .. index
                end

                os.execute("mv ".. luarImagePath .. tmpFileName1 ..  " " ..luarImagePath .. pngFileName..".png")


                if (backgroundIndex ~= -1) then
                    toast (backgroundFoundString)
                    local original = { target = pngFileName .. ".png",
                        region = reg:grow(snapRegionExtra, snapRegionExtra, snapRegionExtra, snapRegionExtra),
                        id = pngFileName, action = action }
                    table.insert(touchList, backgroundIndex, original)
                    touchListToFile()
                else
                    local regionText = regionToString(reg, snapRegionExtra)
                    text = string.format('touchList[index] = {target =  "%s.png", region = %s, id = "%s", action = \'%s\'}',
                        pngFileName, regionText, pngFileName, action)

                    fPointer:write("------ " .. index .. " -----\n")
                    fPointer:write(text .. "\n")
                    print(index .. ": " .. text)
                    fPointer:write("index = index + 1\n\n")
                    text = string.format("index = %d\n", index) .. text
                    local f = loadstring(text)
                    f()
                end
                end

            end

            if (action == "swipe" or action == "dragDrop") then
                if (locationInRegion(locTable[1], stopArea)) then
                    print("stop clicked")
                    io.close(fPointer)
                    scriptExit(stopRecordString)
                end
                local reg1 = locationToRegion(locTable[1], snapWidth, snapHeight)
                reg1:save(tmpFileName1)
                local reg2 = locationToRegion(locTable[2], snapWidth, snapHeight)
                reg2:save(tmpFileName2)
                reg1:highlight()
                reg2:highlight(0.5)
                reg1:highlight()

--                dragDropOptionTable = {"According to detected action","drag and drop", "swipe", "If A found, click B", "Ask"}
                if (askDragDrop) then
                    dialogInit()
                    addTextView(dragDropAskString)
                    addRadioGroup("dragDropAction",2)
                    addRadioButton(dragDropOptionTable[2], 2)
                    addRadioButton(dragDropOptionTable[3], 3)
                    addRadioButton(dragDropOptionTable[4], 4)
                    dialogShowFullScreen(dragDropAskString)
                end

                if (dragDropAction == 2) then
                    action = "dragDrop"
                elseif (dragDropAction == 3) then
                    action = "swipe"
                elseif (dragDropAction == 4) then
                    action = "findA_ClickB"
                end

                if (action == "findA_ClickB") then
                    click(locTable[2])
                else
                    _G[action](locTable[1], locTable[2])
                end


                if (specifyFileName) then
                    dialogInit()
                    addTextView(inputDragFileNameString)
                    newRow()
                    addEditText("pngFileName1", ""..index)
                    addTextView(".png")
                    newRow()
                    addTextView("   ")
                    newRow()
                    addTextView(inputDropFileNameString)
                    addEditText("pngFileName2", ""..index.."drop")
                    addTextView(".png")
                    dialogShowFullScreen(settingsString)
                else
                    pngFileName1 = "" .. index
                    pngFileName2 = "" .. index.."drop"
                end

                os.execute("mv ".. luarImagePath .. tmpFileName1 .. " " ..luarImagePath .. pngFileName1..".png")
                os.execute("mv ".. luarImagePath .. tmpFileName2 ..  " " ..luarImagePath ..pngFileName2..".png")
                local regionText1 = regionToString(reg1, snapRegionExtra)
                local regionText2 = regionToString(reg2, snapRegionExtra)

                text = string.format(
                    'touchList[index] = {target =  "%s.png", region = %s, id = "%s", action = \'%s\',\n'..
                            '                    target2 = "%s.png", region2 = %s}',
                    pngFileName1, regionText1, pngFileName1,
                    action, pngFileName2, regionText2)

                fPointer:write("------ " .. index .. " -----\n")
                fPointer:write(text .. "\n")
                text = string.format("index = %d\n", index) .. text
                local f = loadstring(text)
                f()
                print(index .. ": " .. text)
                fPointer:write("index = index + 1\n\n")

            end

            --        timer:set()
            index = index + 1
            if (waitOption) then
                hideAndWait()
            end

        end

    end

end

function hideAndWait()
    stopArea:highlightOff()
    waitArea:highlightOff()
    setHighlightStyle(0x80ffffff, true)
    setHighlightTextStyle(0x80ffffff, 0xff0000ff, 64)
    fullArea:highlight(underWaitString, waitSecond)
    setHighlightStyle(0x80ff0000, true)
    setHighlightTextStyle(0x80ff0000, 0x80ffffff, 16)
    stopArea:highlight("Stop!")
    waitArea:highlight("Wait!")
end

------------------ playback related functions -------------------

function scandir(directory)

    local listFile = localPath .. "__list"
    local command = "ls " .. directory .. " > " .. listFile
    os.execute(command)

    local lines = {}
    local i = 1
    for line in io.lines(listFile) do
        lines[#lines + 1] = line
    end

    os.execute("rm " .. listFile)
    return lines
end

---------------------------- playback related functions ------------------
function playback()

--    local fileList = scandir(luarPath ..  "*.luar")
--    dialogInit()
--
--    addTextView(similarString)
--    addEditNumber("similar", 0.9)
--    newRow()
--    addCheckBox("allFromBeginning", searchFromBeginningString, false)
--    newRow()
--
--    addCheckBox("searchLimit", searchPngString, false)
--    --    addEditNumber("pngIndex", 1)
--    --    addTextView(".png ")
--    --    addEditNumber("pngTimes", 5)
--    --    addTextView(searchTimesString)
--    newRow()
--
--    addCheckBox("timeLimit", runTimeString, false)
--    addEditNumber("runTime", 10)
--    newRow()
--
--    addCheckBox("allWithRegion", allWithRegionString, true)
--    newRow()
--    addCheckBox("randomClick", randomTouchString, false)
--    addEditNumber("randomClickNumber", 5)
--    newRow()
--    addCheckBox("debug", "debug", true)
--    newRow()
--    newRow()
--    --    addSeparator()
--
--    addTextView(scriptToPlayString)
--    newRow()
--    addRadioGroup("fileNum", 1)
--    for i, f in ipairs(fileList) do
--        local subString = localPath .. "luar/"
--        local shortName = string.gsub(f, luarPath, "")
--        addRadioButton(shortName, i)
--        fileList[i] = shortName
--    end
--    newRow()
--    dialogShowFullScreen(settingsString)
--
--    fileName = fileList[fileNum]


    similar = 0.8
    allFromBeginning = false
    searchLimit = false
    timeLimit = false
    allWithRegion = true
    randomClick = false
    fileName = "pokemonQuest.luar"

    luarImagePath = luarPath .. string.sub(fileName, 1, -6) .. "Image"

    setImagePath(luarPath .. "pokemonQuestImage")



    Settings:set("MinSimilarity", similar)


    dofile (luarPath .. fileName)

    if (not searchLimit) then
        pngIndex = -1
    end

    if (not randomClick) then randomClickNumber = 0 end

    if (not allWithRegion or searchLimit) then
        dialogInit()

        if (searchLimit) then
            local spinner = {}
            for i = 1, table.getn(touchList) do
                table.insert(spinner, touchList[i].id)
            end
            addTextView(searchPngPreString)
            addSpinnerIndex("pngIndex", spinner, 1)
            addTextView(".png ")
            addEditNumber("pngTimes", 5)
            addTextView(searchTimesString)
            newRow()
            newRow()
        end

        if (not allWithRegion) then
            addTextView(whichWithRegionString)
            newRow()
            for i = 1, table.getn(touchList) do
                addCheckBox("withRegion"..i, "  " .. touchList[i].id, true)
                newRow()
            end
        end
        dialogShowFullScreen(settingsString)

        if (not allWithRegion) then
            for i = 1, table.getn(touchList) do
                if (not _G["withRegion"..i]) then
                    touchList[i].region = nil
                end
            end
        end
    end



    local index = 1
    local timer = Timer()
    local findTimes = 0
    local pngTimesList = {}
    for i = 1, table.getn(touchList) do
        pngTimesList[i] = 0
    end

    if (continueScan == nil) then
        continueScan = not allFromBeginning
    end

    while (true) do
        if (timeLimit and timer:check() >= (runTime * 60)) then
            scriptExit(string.format(timeReachString, runTime))
        end
        local choice, id, match = regionWaitMulti(touchList, 30, debug, nil, index)
        if (choice ~= -1 and match) then
            if (debug) then print("find "..id) end

            if (pngTimesList[choice]) then
                pngTimesList[choice] = pngTimesList[choice] + 1
            else
                pngTimesList[choice] = 0;
            end

            local stopMessage = ""
            for i = 1, table.getn(touchList) do
                --            for i, t in ipairs(touchList) do
                if (touchList[i] and pngTimesList[i]) then
                    stopMessage = stopMessage .. touchList[i].id..": "..pngTimesList[i] .."\n"
                end
            end
            setStopMessage(stopMessage)

            if (debug) then
                match:highlight(0.5)
            end
            if (choice == pngIndex) then
                findTimes = findTimes + 1
                if (findTimes == pngTimes) then
                    scriptExit(string.format(searchReachString, touchList[pngIndex].id, pngTimes))
                end
            end

            local matchObject = touchList[choice]
            local matchLocation = match:getTarget()
            if (randomClick) then
                match = matchLocation:offset(math.random(2*randomClickNumber) - randomClickNumber,
                    math.random(2*randomClickNumber) - randomClickNumber)
            end
            if (not matchObject.action) then matchObject.action = "click" end

            if (matchObject.action ==  "longClick" or matchObject.action == "click" or
                    matchObject.action == "doubleClick") then
                _G[matchObject.action](match)
            elseif (matchObject.action == "swipe" or matchObject.action == "dragDrop" or
                matchObject.action == "findA_ClickB") then
                local match2 = targetExists({target = matchObject.target2, region = matchObject.region2}, 0)
                if (match2) then
                    if (debug) then match2:highlight(0.5) end
                    local match2Location = match2:getTarget()
                    if (randomClick) then
                        match2 = match2Location:offset(math.random(2*randomClickNumber) - randomClickNumber,
                            math.random(2*randomClickNumber) - randomClickNumber)
                    end
                    if (matchObject.action == "findA_ClickB") then
                        click(match2)
                    else
                        _G[matchObject.action](match, match2)
                    end
                end
            else
                matchResult = match
                local func = assert(loadstring(matchObject.action))
                func()
            end
            wait(3)
            if (continueScan) then index = choice + 1 end
        end
    end

end

function setupRegions(horizontalImmersive, verticalImmersive, width)
    -- setup Regions
    local deviceWidth
    if (horizontalImmersive) then
        deviceWidth = getRealScreenSize():getX()
    else
        deviceWidth = getAppUsableScreenSize():getX()
    end

    local deviceHeight
    if (verticalImmersive) then
        deviceHeight= getRealScreenSize():getY()
    else
        deviceHeight = getAppUsableScreenSize():getY()
    end

    local height = deviceHeight * width / deviceWidth

    upRegion = Region(0, 0, width, height/2)
    upperRegion = Region(0, 0, width, height/3)
    uppestRegion = Region(0, 0, width, height/4)

    upLeftRegion     = Region(0, 0, width/2, height/2)
    upLefterRegion   = Region(0, 0, width/3, height/2)
    upLeftestRegion  = Region(0, 0, width/4, height/2)
    upCenterRegion   = Region(width/3, 0, width/3, height/2)
    upRightRegion    = Region(width/2, 0, width/2, height/2)
    upRighterRegion  = Region(width*2/3, 0, width/3, height/2)
    upRightestRegion = Region(width*3/4, 0, width/4, height/2)

    upperLeftRegion     = Region(0, 0, width/2, height/3)
    upperLefterRegion   = Region(0, 0, width/3, height/3)
    upperLeftestRegion  = Region(0, 0, width/4, height/3)
    upperCenterRegion   = Region(width/3, 0, width/3, height/3)
    upperRightRegion    = Region(width/2, 0, width/2, height/3)
    upperRighterRegion  = Region(width*2/3, 0, width/3, height/3)
    upperRightestRegion = Region(width*3/4, 0, width/4, height/3)

    uppestLeftRegion     = Region(0, 0, width/2, height/4)
    uppestLefterRegion   = Region(0, 0, width/3, height/4)
    uppestLeftestRegion  = Region(0, 0, width/4, height/4)
    uppestCenterRegion   = Region(width/3, 0, width/3, height/4)
    uppestRightRegion    = Region(width/2, 0, width/2, height/4)
    uppestRighterRegion  = Region(width*2/3, 0, width/3, height/4)
    uppestRightestRegion = Region(width*3/4, 0, width/4, height/4)

    centerLeftRegion     = Region(0, height/3, width/2, height/3)
    centerLefterRegion   = Region(0, height/3, width/3, height/3)
    centerLeftestRegion  = Region(0, height/3, width/4, height/3)
    centerCenterRegion   = Region(width/3, height/3, width/3, height/3)
    centerRightRegion    = Region(width/2, height/3, width/2, height/3)
    centerRighterRegion  = Region(width*2/3, height/3, width/3, height/3)
    centerRightestRegion = Region(width*3/4, height/3, width/4, height/3)

    lowLeftRegion     = Region(0, height/2, width/2, height/2)
    lowLefterRegion   = Region(0, height/2, width/3, height/2)
    lowLeftestRegion  = Region(0, height/2, width/4, height/2)
    lowCenterRegion   = Region(  width/3, height/2, width/3, height/2)
    lowRightRegion    = Region(  width/2, height/2, width/2, height/2)
    lowRighterRegion  = Region(width*2/3, height/2, width/3, height/2)
    lowRightestRegion = Region(width*3/4, height/2, width/4, height/2)

    lowerLeftRegion     = Region(0, height*2/3, width/2, height/3)
    lowerLefterRegion   = Region(0, height*2/3, width/3, height/3)
    lowerLeftestRegion  = Region(0, height*2/3, width/4, height/3)
    lowerCenterRegion   = Region(width/3, height*2/3, width/3, height/3)
    lowerRightRegion    = Region(width/2, height*2/3, width/2, height/3)
    lowerRighterRegion  = Region(width*2/3, height*2/3, width/3, height/3)
    lowerRightestRegion = Region(width*3/4, height*2/3, width/4, height/3)

    lowestLeftRegion     = Region(0, height*3/4, width/2, height/4)
    lowestLefterRegion   = Region(0, height*3/4, width/3, height/4)
    lowestLeftestRegion  = Region(0, height*3/4, width/4, height/4)
    lowestCenterRegion   = Region(  width/3, height*3/4, width/3, height/4)
    lowestRightRegion    = Region(  width/2, height*3/4, width/2, height/4)
    lowestRighterRegion  = Region(width*2/3, height*3/4, width/3, height/4)
    lowestRightestRegion = Region(width*3/4, height*3/4, width/4, height/4)

    lowRegion = Region(0, height/2, width, height/2)
    lowerRegion = Region(0, height*2/3, width, height/3)
    lowestRegion = Region(0, height*3/4, width, height/4)


    centerRegion = Region(0, height / 3, width, height / 3)


    leftRegion    = Region(0, 0, width / 2, height)
    lefterRegion  = Region(0, 0, width / 3, height)
    leftestRegion = Region(0, 0, width / 4, height)

    rightRegion    = Region(width / 2, 0, width / 2, height)
    righterRegion  = Region(width *2/3, 0, width / 3, height)
    rightestRegion = Region(width * 3 / 4, 0, width / 4, height)

end

function removeTouchList(list, elements)
    --        print(typeOf(elements))
    if (typeOf(elements) == "string") then
        elements = {elements}
    end
    for i = #list, 1, -1 do
        local target = touchList[i]
        for k, t in ipairs(elements) do
            if (target.id == t) then
                table.remove(list, i)
                print (t .. " removed")
                break
            end
        end
    end
end

-- pokemon quest functions
function cook()
    if (not newCook) then return end
--    startCookTable = { {target =  "potIcon.png", region = nil, id = "majorStage" } }
--    local choice, id, startCook = regionWaitMulti(startCookTable, 0, debug, nil, 1, false)
    local potIcon = exists("potIcon.png")
    if (not potIcon) then
        print ("potIcon not found")
    end

    local cookOffset = {Location(145, -265), Location(265, -265),
        Location(90, -140), Location(210, -140), Location(330, -140) }

--    startCook:setTargetOffset(-190, -50) -- potIcon
    for i = 2, potType do
        click(potIcon)
        wait(2)
    end

    local position = 1
    for i = 1, 5 do
        local content = cookContentPng[_G["cookContent" .. i]]
        potIcon:setTargetOffset(cookOffset[i])
        dragDrop(content, potIcon)
    end

    potIcon:highlight(2)
    potIcon:setTargetOffset(210, 50)
    click(potIcon) -- start Cooking
    wait(2)
    if (not existsClick("yesZH.png") and not existsClick("bigYesEN.png", 0)) then
        materialNotEnough = true
        existsClick("return.png")
        wait(2)
        existsClick("return.png")
        wait(2)
--        existsClick("return.png")
--        wait(2)
        existsClick("yesZH.png")
        existsClick("bigYesEN.png", 0)
        wait(2)
    end
    wait(5)
    for i = 1, 5 do
        if (existsClick("adventure.png", 5)) then
            print ("adventure")
            if (waitVanish("adventure.png", 3)) then
                print("adventure vanish")
                return
            else
                existsClick("cancelZH.png", 0)
            end
        end
        wait(3)
    end
    scriptExit("No adventure")

--    for i = 1, 5 do
--        local content = cookContentPng[_G["cookContent" .. i]]
--        print ("content = " .. content)
--        local cookNum =  _G["cookNumber" ..i] - 1
--        print ("cookNumber = " .. cookNum)
--        for j = 1, cookNum do
--           print("j = " .. j)
--           startCook:setTargetOffset(cookOffset[position])
--           startCook:highlight(0.5)
--           dragDrop(content, startCook)
--           if (position == 5) then
--
--               return
--           end
--           position = position + 1
--       end
--    end
end

function failHandler()
    if (failOption == STOP) then
        scriptExit(failString)
    end
    if (failOption == LAST_WORK) then
        newStage = false
    end
    click(matchResult)
    existsClick("yesZH.png")
end

function stageFromEditTeam()
    if (exists("base.png", 0)) then
        click(matchResult);
        wait(2);
        local loc = matchResult:getTarget()
        matchResult = Match(loc:getX(), loc:getY(), 8, 8, 0.7)
        matchResult:setTargetOffset(370, 55)
        enterStage();
    end
end

function enterStage()
    materialNotEnough = false;
    print("enter stage")
    stageEntry = {target =  "stageEntry.png", region = Region(372, 132, 350, 350)}
    if (newStage and stageEntry.region:exists(stageEntry.target,0)) then
        matchResult:setTargetOffset(370, 55)
        click(matchResult)
        wait(2)
        matchResult:setTargetOffset(100, 55)
        click(matchResult)
--        return
    else
        click(matchResult)
        if (newStage) then
            wait(3);click(matchResult);
        end
    end
--    print("check coupon")

    if (lowLeftRegion:exists("coupon.png", 3)) then
--        scriptExit("coupon found")
        if (buyEnergy) then
    --        toast("buy energy")
    --        lowLeftRegion:highlight(2)
--            scriptExit("buyEnergy")
            if (lowLeftRegion:existsClick("coupon.png", 5)) then
                click(matchResult)
            end
        else
            lowRightRegion:existsClick("return.png", 2)
            centerCenterRegion:highlight(noEnergyString, 5 * 60)
        end
    end

end

localPath = scriptPath()
luarPath = localPath .. "luar/"
setImagePath(luarPath .. "pokemonQuestImage")
setDragDropTiming(1000, 1000)
setDragDropStepCount(3000)

loadStringsFunction()

setupRegions(true, false, 1280)

print ("Version: " .. version)


dialogInit()
addCheckBox("newStage", newStageString, false)
newRow()
addCheckBox("buyEnergy", buyEnergyString, false)
newRow()

addSeparator()

addTextView(failOptionString)
newRow()

LAST_WORK = 1
STOP = 2
RETRY = 3
addRadioGroup("failOption", LAST_WORK)
addRadioButton(lastWorkString, LAST_WORK)
addRadioButton(stopString, STOP)
addRadioButton(retryString, RETRY)
newRow()

addSeparator()
--addCheckBox("cookStop", cookStopString, false)
--newRow()
addCheckBox("newCook", newCookString, false)

newRow()
addTextView(potTypeString)
potTypePngTable = {"ironPot.png", "copperPot.png", "silverPot.png", "goldPot.png" }
addSpinnerIndex("potType", potTypeTable, 1)

newRow()
cookNumTable = {"0", "1", "2", "3", "4" }
cookContentPng = {"smallRed.png", "smallBlue.png", "smallYellow.png", "smallBlack.png", "smallRainbow.png",
    "bigRed.png", "bigBlue.png", "bigYellow.png", "bigBlack.png", "bigRainbow.png"}
local cookContent = {}
for i = 1, 5 do
--    addSpinnerIndex("cookNumber" .. i , cookNumTable, 0)
    addSpinnerIndex("cookContent" .. i , cookContentName, 1)
    newRow()
end

newRow()
addSeparator()
addCheckBox("debug", "debug", false)
dialogShowFullScreen(settingsString)

--cook()
potTypePng = potTypePngTable[potType]
playback()

