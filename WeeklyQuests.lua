waitfordone = 0
salir = 0

repeat
	existsClick("IconoQuest.png" , 3)
	existsClick("WeeklyQuests.png" , 15)
	existsClick("QuestComplete.png" , 3)
	existsClick("StartQuest.png" , 3)
	if existsClick("GoNow.png" , 3) then
		waitfordone = 1
	end
	existsClick("Walk.png" , 3)
	if existsClick("Dialogo.png" , 3)	then
		salir = 1
	elseif waitfordone == 1 then
		existsClick("DoneSemanal.png" , 300)
		waitfordone = 0
	end
	if existsClick("QuestComplete.png" , 3) then
		wait(3)
		if existsClick("QuestComplete.png" , 3) then
			salir = 1
		end
	end
until (salir == 1)