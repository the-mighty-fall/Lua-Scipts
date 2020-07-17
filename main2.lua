Settings:setCompareDimension(true, 1440)
Settings:setScriptDimension(true, 1440)

enableToasts = true

smurfMode = false

function initialDialog()
	dialogInit()
	addTextView("Please choose mode")
	newRow()
	addRadioGroup("runmode", 1)
	addRadioButton("smurfmode", 1)
	addRadioButton("hostmode", 2)
	dialogShow("Settings")
	if (runmode == 1) then
		smurfMode = true
	end
end

function toastText(text)
	if (enableToasts) then
		toast(tostring(text))
	end
end

function playSmurfMode()
	wearehere = checkWhereWeAre()
	
	toastText(wearehere)
	
	handlePopupsIfNecessary(wearehere)
	
	if (wearehere == "mainMenu") then
		checkIfIncomingRequests()
	end
	
	if (wearehere == "waitingongame") then
		wait(5)
	end
	
	if (wearehere == "ingame") then
		--click pause and quit.
		wait(2)
		click(Location(1382,51))
		wait(1)
		click(Location(1137,45))
	end
	
	toastText("waiting 5 sec..")
	wait(5)
end

function checkIfIncomingRequests()
	if (exists("friendrequest.png")) then
		toastText("Friend request found. accepting...")
		click(Location(100,86))
	end
	
	if (exists("letsplayrequest.png")) then
		toastText("we got requested a game. accepting...")
		click(Location(100,86))
	end
end

function checkWhereWeAre()
	if (exists("leveluppopup.png")) then
		return "leveluppopup"
	end
	
	if (exists("mainmenu.png")) then
		return "mainMenu"
	end
	
	if (exists("waitingforgametostart.png")) then
		return "waitingongame"
	end
	
	if (exists("loading.png")) then
		return "waitingongame"
	end
	
	if (exists("ingamepause.png")) then
		return "ingame"
	end

end

function handlePopupsIfNecessary(wherearewe)
	if (wherearewe == "leveluppopup") then
		click(Location(953,589)) --click okay
	end
end

function playHostMode()
	wearehere = checkWhereWeAre()
	
	handlePopupsIfNecessary(wearehere)
	
	if (wearehere == "mainMenu") then
		invitePlayers()
		click(Location(1243,768)) --Click go
	end
	
	if (wearehere == "ingame") then
		completeTrack()
	end
end

function completeTrack()
	while (not exists("trackdone.png")) do
		for i=0,10 do
			click(Location(712,443)) --Click middle of screen
			wait(0.1)
		end
	end
	if (exists("go.png")) then
		click(Location(1243,768))
		toastText("track Done")
	else
		toastText("couldnt complete track")
	end
end

function invitePlayers()
	toastText("inviting players...")
	friendregion = Region(1054,254,1427,697)
	click(Location(1321,135)) --Click Friends tab
	keeplooping = true
	counter = 0
	while (keeplooping) do
		playButtons = findAllNoFindException("playbutton.png")
		
		for i, m in ipairs(playButtons) do
			click(m)
		end
		
		toastText("checking if we are still in items")
		if (not exists("levelupnow.png")) then
			toastText("done checking if we are still in shop, checking for empty spot")
			if (not exists("emptyspacelobby.png")) then
				keeplooping = false
				toastText("no empty spot")
			end
		end
		
		wait(1)
		counter = counter + 1
		if (counter > 30) then
			simpleDialog("We've waited too long.. quitting bot..")
		end
	end
	toastText("done inviting players!!")
end

initialDialog()
--smurfMode = true
while (true) do
	if (smurfMode) then
		playSmurfMode()
	else
		playHostMode()
	end
end