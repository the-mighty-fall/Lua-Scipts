------------------------------Setting------------------------------
Settings:setCompareDimension(true,640)
Settings:setScriptDimension(true,1280)
local localPath = scriptPath()
setImagePath(localPath.."/KRDragon")
setButtonPosition(925,0)
--------------------------Global Function----------------------------
--notifReg = Region(246,0,100,100) --x,y,panjang,lebar
--setHighlightStyle(0x8fffff00, true)
--notifReg : highlight(2)

notif = Region(900,0,380,40)

--ok
okReg		= Region(580,500,120,100),1
okIcon		= Pattern("ok.png"),1--:similar(0.9) 

function ok() 	
	if okReg : exists(okIcon) then 	
	okReg : existsClick(okIcon) 	 	
	end 
end
	
--click
clickReg		= Region(100,100,1,1),1

function clicks() 	
	click(clickReg) 	
	
end


--Stamina 
StaminaIcon		= Pattern("stamina.png"),1--:similar(0.7),1
StaminaReg		= Region(380, 210, 520, 190)
--StaminaReg : highlight(10)
function stamina()
	if (StaminaReg : exists(StaminaIcon)) then
	notif:highlight("Stamina"..Dragon,1)
	StaminaReg : existsClick(StaminaIcon)
	wait(1)
	ok()
	wait(1)
	yes()
	end
end


--YES 
YesIcon		= Pattern("yes.png"),1--:similar(0.9)
YesReg		= Region(720, 550, 80, 80)

function yes()
	if (YesReg : exists(YesIcon )) then
	YesReg : existsClick(YesIcon )
	end
end

--YES Middle
YesMidIcon		= Pattern("yes.png"),1--:similar(0.9)
YesMidReg		= Region(600, 490, 80, 80) 

function yesmid()
	if (YesMidReg : exists(YesMidIcon )) then
	YesMidReg : existsClick(YesMidIcon )
	end
end



--Close 
CloseReg = Region(900,140,100,100),1 --x,y,panjang,lebar
CloseIcon = Pattern("close.png"):similar(0.9),1

function close()
	if CloseReg : exists(CloseIcon) then
	CloseReg : existsClick(CloseIcon)

	end
end


---------------------------------Gear is Full-----------------------------------
CheckGearIcon = Pattern("gearfull.png"),1--:similar(0.9),1
CheckGoInvenIcon = Pattern("goinven.png"),1--:similar(0.9),1
CheckGearReg = Region(565, 330, 150, 50)
CheckGoInvenReg = Region(540, 510, 200, 45)

DragonSellIcon = Pattern("manage.png"),1
DragonSellReg = Region(80, 415, 90, 60)


--Dragon Sell 
function selldragont5()
	--if CheckGearReg : exists(DragonSellIcon) then
	--wait(2)  --for lagger cpu add more time
	click(DragonSellReg)
	notif:highlight("Sell items",1)
	SellPhase =1
	BackValue = 0
		while true do
			sellall()
			backtodragont5()
		end
	--end
end

CheckGearIcon = Pattern("gearfull.png"),1--:similar(0.9),1
CheckGoInvenIcon = Pattern("goinven.png"),1--:similar(0.9),1
CheckGearReg = Region(565, 330, 150, 50)
CheckGoInvenReg = Region(540, 510, 200, 45)

SellIcon 		= Pattern("sell.png"),1--:similar(0.9),1
SellReg 		= Region(1050, 600, 60, 50) 
SellAllIcon 	= Pattern("sellall.png"),1--:similar(0.9),1
SellAllReg 		= Region(680, 600, 100, 55)
SellCfrmIcon 	= Pattern("sell.png"),1--:similar(0.9),1
SellCfrm1Reg 	= Region(610, 580, 60, 50),1  
SellCfrm2Reg 	= Region(735, 510, 60, 45),1 

function sellall()
	if SellPhase == 1 then
	notif:highlight("SellPhase ="..SellPhase,1)
			--Click Sell
			if SellReg : exists(SellIcon) then
			SellReg : existsClick(SellIcon)
			x = x + 1
			end
				if SellAllReg :exists(SellAllIcon) then
				SellAllReg : existsClick(SellAllIcon)
				end
					if SellCfrm1Reg :exists(SellCfrmIcon) then
					SellCfrm1Reg : existsClick(SellCfrmIcon)
					end
						if SellCfrm2Reg : exists(SellCfrmIcon) then
						SellCfrm2Reg : existsClick(SellIcon)
						SellPhase = SellPhase + 1
						end
	end
end

		function backtodragont5()
			if SellPhase == 2 then
			notif:highlight("SellPhase ="..SellPhase,1)
				if BackValue == 0 then
				backfromsell()
				end
					if BackValue > 0 then
					wait(3)  --for lagger cpu +value
					x=1
					t5()
					end
				
			end
		end
		
		--back 
		BackIcon	= Pattern("back.png"):similar(0.9),1
		BackReg		= Region(100, 0, 80, 60)
		function backfromsell()
			if (exists(BackIcon)) then
			BackValue = BackValue + 1
			notif:highlight("Back ="..BackValue,1)
			BackReg : existsClick(BackIcon)
			end
		end
	
StartDragonIcon 		= Pattern("startdragon.png"),1--:similar(0.9),1
PrepareDragonIcon 		= Pattern("preparedragon.png"),1--:similar(0.9),1
StartDragonReg 			= Region(1080, 615, 100, 70) 

DragonBarIcon			= Pattern("dragonicon.png"):similar(0.4),1
DragonBarReg 			= Region(1185, 255, 80, 75) --icon

GearDragonIcon			= Pattern("geardragon1.png"):similar(0.6),1
GearDragonReg 			= Region(570, 313, 40, 40) --icon

--r between 130~140
--if (140>r and r >130 and 30>b and b>20 and 20>g and g >10) then


function dragongear()
	if GearDragonReg : exists(GearDragonIcon)  then
	notif:highlight("GEAR IS FULL",1)
	Dragon = 1
	selldragont5()
	end
end
	

AbandonIcon 		= Pattern("abandon.png"),1
AbandonnReg 		= Region(755, 575, 140, 80) 

function abandon()
	if AbandonnReg : exists(AbandonIcon)  then
	Dragon = Dragon + 1 
	click(AbandonnReg)
	end
end

ClaimIcon 		= Pattern("claim.png"),1--:similar(0.9),1
ClaimReg 		= Region(790, 580, 220, 70) 

function claim()
	if ClaimReg : exists(ClaimIcon)  then
	click(ClaimReg)
	end
end

ExitIcon 		= Pattern("exit.png"),1--:similar(0.9),1
ExitReg 		= Region(1150, 580, 100, 100) 

function exit()
	local r,g,b		= getColor(Location(1188, 630)) 
	local r1,g1,b1	= getColor(Location(1188, 650)) 
	local r2,g2,b2	= getColor(Location(77, 600)) 	
	local r3,g3,b3	= getColor(Location(76, 626)) 	

	if (r>230 and g>220 and b>200 and r1<20 and 120>g1 and g1>80 and 120>b1 and b1>80 and 100>r2 and r2>50 and 80>g2 and g2>40 and 60>b2 and b2>20 and r3>230 and g3>230 and b3>200) then
	click(ExitReg)
	wait(1)
	click(ExitReg)
	wait(1)
	click(ExitReg)
	Dragon = 1
	t5()
	end
end
		
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------


ClickStartCount = 0	


function startdragont5()
		while true do	
		notif:highlight("Start Cycle",1)

			local r,g,b = getColor(Location(1029,666))
			if (r<55 and g>200 and b>200) then
			notif:highlight("Start Dragon",1)
			StartDragonReg : existsClick(StartDragonIcon)
			dragongear()
			click(YesMidReg)
			dragongear()
			stamina()
			end
			
   					local r,g,b = getColor(Location(1212, 282))
   					local r1,g1,b1 = getColor(Location(1222, 420)) 
					
					if (r>170 and g<50 and b<50 and r1<70 and g1>100 and b<180) then
					notif:highlight("Dragon Battle",1)
					Dragon = Dragon + 1
					t5()
					end
		end
	
end
--------------------------------------------------------------------------------
--------------------------------------Main--------------------------------------
--------------------------------------------------------------------------------

function t5()
	notif:highlight("Dragon --Retract",1)
	while true do
		if Dragon == 1 then
		exit()
		startdragont5()
		end
			if Dragon > 1 and Dragon < 3 then
			abandon()
			exit()
			notif:highlight("Dragon Battle")
			end
				if Dragon > 2 then
				notif:highlight("Claim Item",1)
				claim()
				clicks()
				exit()
				end
	end					
end

Dragon = 1

x=0
i=1
	
while true do
	t5()
	
end





--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
