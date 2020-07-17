-- ==========  Settings  ================
localPath = scriptPath()
dofile(localPath.."lib/commonLib.lua")

-- ==========  Dialogue Box  ================
dialogInit()
addCheckBox("refillenergy", "Refill energy using crystal", false)
newRow()
addCheckBox("nextarea", "Continue to next area", false)
dialogShow("Welcome")
-- ==========  Main Program  ================
click("start.png")
while (true) do
waitClick("chest.png",600)
wait(4)
	if(nextarea == true) then
		click("next.png")
		wait(3)
		if (exists("retry.png")) then
			waitClick("home.png",10)
			waitClick("close.png",10)
				if(refillenergy == true) then
					waitClick("add.png", 10)
					waitClick("yes.png", 10)
					waitClick("adventure.png", 10)
				else
					scriptExit("Success!, Run Cycle Complete!")
				end
		end
	else
		click("retry.png")
		wait(3)
		if (exists("retry.png")) then
			waitClick("home.png",10)
			waitClick("close.png",10)
				if(refillenergy == true) then
					waitClick("add.png", 10)
					waitClick("yes.png", 10)
					waitClick("adventure.png", 10)
				else
					scriptExit("Success!, Run Cycle Complete!")
				end
		end
	end
	
end