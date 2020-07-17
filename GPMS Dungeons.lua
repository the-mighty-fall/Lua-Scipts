function getMirrorNumber()
    Settings:set("MinSimilarity", 0.85)
    local slash = find("slash.png")
    local numberRegion = Region(slash:getX() - 55,slash:getY(), 55, slash:getH())
    numberRegion:highlight(1)
    local mirrorNumber = numberOCR(numberRegion, "mirror")
    Settings:set("MinSimilarity", 0.9)
    return(mirrorNumber)
end

function buyMirror()
	waitClick("CandyShop.png", 5)
	waitClick("MirrorShop.png", 5)
	waitClick("buy10.png", 5)
	waitClick("Buy.png",2)
	waitClick("Yes.png",5)
	waitClick("Confirm.png",5)
	waitClick("X.png",5)
end


-- ========== Settings ================
Settings:setCompareDimension(true, 2560)
Settings:setScriptDimension(true, 2560)
setImmersiveMode(true)
Settings:set("MinSimilarity", 0.9)
-- ==========  main program ===========

while (true) do
	wait(Pattern("Start.png"), 20)

	local mirrors = getMirrorNumber()
	if(mirrors < 85) then
		buyMirror()
	end
	
    waitClick("Start.png", 10)
    wait(Pattern("AutoCombat.png"), 25)
    wait(2)
    click("AutoCombat.png")
    waitClick("Confirm.png", 60*10) --10 Min wait
end