-- ========== Settings ================
Settings:setCompareDimension(true, 1280)
Settings:setScriptDimension(true, 1280)

claimreg = Region(514, 538, 150, 150)
botskipreg = Region(1113, 437, 150, 150)
acceptQ = Region(644, 537, 150, 150)
mainreg = Region(0, 160, 150, 150)
continueQreg = Region(962, 557, 150, 150)
contokreg = Region(699, 412, 150, 150)
skiptutreg = Region(1116, 0, 150, 150)
bubblereg = Region(613, 189, 150, 150)
donereg = Region(184, 168, 150, 150)
equipreg = Region(589, 465, 150, 150)
mainend = 0
timemin = 0 + os.date("%M")
timehr = 0 + os.date("%H")
oldtimemin = timemin

local function mainquestdo()
	equipreg:existsClick("equip.png", 0.1)
	donereg:existsClick("done.png", 0.1)
	if continueQreg:existsClick("continueQ.png", 0.1) then
		continueQreg:getLastMatch():highlight(0.2)
		mainreg:existsClick("main.png", 10)
	end
	if botskipreg:existsClick("botskip.png", 0.1) then
		mainreg:existsClick("main.png", 3)
		botskipreg:highlight(0.1)
	end
	acceptQ:existsClick("acceptQ.png", 0.1)
	acceptQ:highlight(0.1)
	if contokreg:existsClick("contok.png", 0.1) then
		contokreg:getLastMatch():highlight(0.2)
		mainreg:existsClick("main.png", 10)
	end
	skiptutreg:existsClick("skiptut.png", 0.1)
	skiptutreg:highlight(0.1)
	if claimreg:existsClick("claim.png", 0.1) then
		claimreg:getLastMatch():highlight(0.2)
		mainreg:existsClick("main.png")
	end
	if bubblereg:exists("bubble.png", 0.1) then
		bubblereg:getLastMatch():highlight(1)
		wait(2)
		bubblereg:existsClick("bubble.png")
	end
end

repeat
	oldtimemin = timemin
	timemin = 0 + os.date("%M")
	timehr = 0 + os.date("%H")

	if oldtimemin == timemin then
		mainquestdo()
	else
		swipe(Location(52, 552), Location(258, 609))
		toast("moving")
	end
until mainend == 1