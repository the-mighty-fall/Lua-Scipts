-- ========== Settings ================
Settings:setCompareDimension(true, 480)
Settings:setScriptDimension(true, 480)
setDragDropStepCount(100)
setDragDropStepInterval(5)

-- ========== main program ===========
-- ========== declare images ============
buttonCoinSmall = Pattern("button_coin_small.png")
buttonHome = Pattern("button_home.png")

-- ========== declare regions and locations ===========
buttonBuyWorkRegion = Region(140, 75, 190, 640)
buttonBuyUpgradeRegion = Region(320, 75, 160, 640)
buttonHomeRegion = Region(0, 0, 90, 75)

-- ========== declare program variables ===========
swipesDone = 0

function findAllAndMatchColor(region, PSMRL, color, colorAccuracy)
	matches = {}
	j = 1
	if region:exists(PSMRL) ~= nil then
		all = listToTable(region:findAll(PSMRL))
		for i=1, table.getn(all) do
			r, g, b = getColor(Location(all[i].x + 15, all[i].y - 3))
			if r > color[1] - (colorAccuracy/2) and r < color[1] + (colorAccuracy/2) and g > color[2] - (colorAccuracy/2) and g < color[2] + (colorAccuracy/2) and b > color[3] - (colorAccuracy/2) and b < color[3] + (colorAccuracy/2) then
				matches[j] = all[i]
				j = j + 1
			end
		end
	end
	return matches
end

while 1 do
	repeat
		
		buyWorkButtons = findAllAndMatchColor(buttonBuyWorkRegion, buttonCoinSmall, {255, 111, 226}, 20)
		toast("Found " .. table.getn(buyWorkButtons) .. " work buttons")
		if table.getn(buyWorkButtons) > 0 then
			click(buyWorkButtons[1])
			do break end
		end
		
		buyUpgradeButtons = findAllAndMatchColor(buttonBuyUpgradeRegion, buttonCoinSmall, {83, 252, 151}, 20)
		toast("Found " .. table.getn(buyUpgradeButtons) .. " upgrade buttons")
		if table.getn(buyUpgradeButtons) > 0 then
			click(buyUpgradeButtons[1])
			do break end
		end
		
		if swipesDone < 3 then
			dragDrop(Location(230, 650), Location(230, 150))
			swipesDone = swipesDone + 1
		else
			buttonHomeRegion:existsClick(buttonHome, 1)
			swipesDone = 0
		end
		
	until true -- doesn't really repeat: cause it's always true it just won't repeat but helps for placing a continue somewhere ;)
	sleep(1)
end