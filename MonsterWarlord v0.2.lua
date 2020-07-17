Settings:setCompareDimension(true, 600)
Settings:setScriptDimension(true, 600)
-- ============ Locations ==========
mission_reg = Region(400,520,125,150)
energybuy_reg = Region(65,540,50,40)
x10_reg = Region(210,745,180,55)
home = Location(50,850)
chest_reg = Region(220,550,115,125)
go1 = Location(506,515)
go2 = Location(500,770)
gotomission = Location(250,855)
attackboss = Location(290,745)
goboss = Location(505,490)
close_button = Location(300,750)
open_box = Location(45,375)
open_gift = Location(485,310)
gift00 = Pattern("gift00.png"):similar(0.75)

--=========== Dialog =============
removePreference("bosskill")
removePreference("typeloc")
dialogInit()
addTextView("Created By Kryptor, Skype: bruno.lima135")
newRow()
--addCheckBox("bosskill", "Check to kill Quest Boss 1 (Morpheu)", false)
addRadioGroup("typeloc",1)
addRadioButton("Mission Type",1)
newRow()
addCheckBox("bosskill", "Check to kill Quest Boss 1 (Morpheu)", false)
newRow()
addRadioButton("Gift Opens",2)
newRow()
dialogShow("MonsterWarlord Mission1 Bot")
if(typeloc == 1)then
wait(0.7)
click(gotomission)
wait(0.7)
end
if(typeloc == 2)then
wait(0.7)
click(home)
wait(0.7)
end



--============ Functions ========
function CloseWindow()
close_reg = Region(170,700,80,75)
	CheckEnergy()
	if (close_reg:exists("close1.png")) then
	click(close_button)
	end
end

function Gift_()
Gift_open = Region(0,320,105,105)
Gift_reg = Region(450,280,100,100)
Gift_reg2 = Region(406,274,100,100)
if(Gift_open:exists(gift00)) then
wait(1)
click(open_box)
wait(1)
if(Gift_reg2:exists("gift02.png")) then
while(Gift_reg2:exists("gift02.png")) do
wait(0.3)
click(open_gift)
wait(1.7)
click(open_gift)
wait(1.5)
end
scriptExit("Finish")
else
scriptExit("You not have Gifts")
end
else
scriptExit("You not have Gifts")
end
end

function CheckEnergy()
energy_reg = Region(350,590,90,90)
	if(energy_reg:exists("energybuy.png")) then
		wait(15)	
		click(close_button)
	end
end

function KillBoss()
attack_boss_reg = Region(190,725,110,100)
	if(bosskill) then
		click(goboss)
		wait(1)
			while(attack_boss_reg:exists("attack10.png")) do
			click(attackboss)
			end
			else
				click(go2)
	end		
end

function Mission1()
boss_reg = Region(230,510,180,180)
	if (boss_reg:exists("boss2.png")) then
	KillBoss()
	else
	click(go1)
	end
end

 -- ======Playing ========
while (true) do
	if(typeloc == 2)then
		Gift_()
	end
if(typeloc == 1) then
		CloseWindow()
		Mission1()
	end
end
