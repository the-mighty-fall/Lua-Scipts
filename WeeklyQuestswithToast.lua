waitfordone = 0
salir = 0
toast ("empezamos")

repeat
	toast ("IconoQuest")
	existsClick("IconoQuest.png" , 3)
	toast ("WeeklyQuests")
	existsClick("WeeklyQuests.png" , 15)
	toast ("QuestComplete")
	existsClick("QuestComplete.png" , 3)
	toast ("StartQuest")
	existsClick("StartQuest.png" , 3)
	toast ("GoNow")
	if existsClick("GoNow.png" , 3) then
		waitfordone = 1
	end
	
	toast ("Walk")
	existsClick("Walk.png" , 3)
	toast ("Done")
	if existsClick("Dialogo.png" , 3)	then
		salir = 1
	elseif waitfordone == 1 then
		toast ("DoneSemanal")
		existsClick("DoneSemanal.png" , 300)
		waitfordone = 0
	end
	toast ("QuestComplete")
	existsClick("QuestComplete.png" , 3)
	if existsClick("QuestComplete.png" , 3) then
		wait(3)
		if existsClick("QuestComplete.png" , 3) then
			salir = 1
		end
	end
until (salir == 1)