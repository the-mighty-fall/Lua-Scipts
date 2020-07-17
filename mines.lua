globalTimer=Timer()
globalTimer1=globalTimer:check()
globalTimerT=globalTimer1
-- ========== Settings ================
Settings:setCompareDimension(true, 1280)
Settings:setScriptDimension(true, 1280)
Settings:set("MinSimilarity", 0.85)

-- ========== Load includes ===========
package.path = package.path .. ";" .. scriptPath() .. '?.lua'
require "functions"


reg_lblMines            = Region (507,76,213,33)
reg_lbl_minesEmptySquad = Region (458,512,76,81)
reg_btn_minesAttack     = Region (540,643,201,45)
reg_btn_minesX2         = Region (  38, 334,  57,  37)
reg_btn_return          = Region (1043, 529,  62,  62)
reg_btn_minesRush       = Region (1195, 681,  28,  12)
reg_lbl_minesFull       = Region (453,329,382,66)
reg_minesBtns           = Region (150,600,980,60)
reg_btn_retry           = Region (687,462,122,44)


--These two lines are uncommented, when one needs to find region locations
--print(getRegion2search("btn_retry.png"))
--scriptExit("break")


-- ========== Choose suatable mines duration (3hours,6hours,12hours) ===============
f=true
x2clicked=false
local t=Timer()

while f do
	t1=t:check()

	fixSnapshot()
	if rgIndex == nil then
		dialogInit()
		addRadioGroup("rgIndex", 1)
		addRadioButton(" 3 hours", 1)
		addRadioButton(" 6 hours", 2)
		addRadioButton("12 hours", 3)

		dialogShow("Mines")

	else
		if checkImgInRegion(reg_lbl_minesFull,"lbl_minesFull.png") then f=false
		elseif checkImgInRegionAndClickRandom(reg_btn_minesRush,  "btn_minesRush.png") then df("found image btn_minesRush"); wait(5)
		elseif checkImgInRegion(reg_minesBtns,"btn_mines2battle.png") then
			tabBtns = listToTable(reg_minesBtns:findAll("btn_mines2battle.png"))
			m=tabBtns[rgIndex]
			clickRandomInRegion(m)
			df("found image btn_mines2battle")
			wait(0.1)

		-- ========== Main part ===============
		-- checking squad and hitting run
		elseif checkImgInRegion(reg_lbl_minesEmptySquad,"lbl_minesEmptySquad.png") then scriptExit("Empty squad")
		elseif checkImgInRegionAndClickRandom(reg_btn_minesAttack,  "btn_minesAttack.png") then wait(1); df("found image btn_minesAttack")

		-- checking and clicking on х2 for speed up
		elseif x2clicked==false and checkImgInRegionAndClickRandom(reg_btn_minesX2,  "btn_minesX2.png") then
			df("found image btn_minesX2")
			x2clicked=true
			wait(3)
		elseif checkImgInRegionAndClickRandom(reg_btn_retry,   "btn_retry.png")  then df("found image btn_retry")
		elseif checkImgInRegionAndClickRandom(reg_btn_return,  "btn_return.png") then df("found image btn_return");x2clicked=false
  end

	--wait at least 1 second until second check
	while (t:check()-t1)<1 do
		wait(0.1)
	end

	end
	unfixSnapshot()
end

globalTimer2=globalTimer:check()
print("Global execution took:",globalTimer2-globalTimer1,"sec")
