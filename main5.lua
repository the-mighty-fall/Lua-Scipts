while 1 do 
	debug = Region(190,10,1000,30)
	
	debug:highlight("Battle Screen checking...",1)
     
	if exists(Pattern("battle1.jpeg"):similar(0.99),2) then
		debug:highlight("Battle Screen Triggered",1)
	     
		waitClick(Pattern("battle1.jpeg"):similar(0.99),60)
         
		waitClick(Pattern("battle2.jpeg"):similar(0.99),60)
     
	end

          



	debug:highlight("'Auto Repeat' checking ...",1)
     
	if exists(Pattern("battle3.jpeg"):similar(0.999),1) then
         
		debug:highlight("'Auto Repeat' Triggered",1) 
         
		waitClick(Pattern("battle3.jpeg"):similar(0.999),60)

	end


	debug:highlight("Confirm 'Auto Repeat' checking ...",1)

	if exists(Pattern("battle4.jpeg"):similar(0.999),1) then

		debug:highlight("Confirm 'Auto Repeat' Triggered",1)
         
		waitClick(Pattern("battle4.jpeg"):similar(0.99))
     
	end
	

debug:highlight("Use Stamina Potion checking ...",1)

     
	if exists(Pattern("no_sta_2.jpeg"):similar(0.99),1) then

		debug:highlight("Use STA potion triggered",1)
          
		waitClick(Pattern("no_sta_2.jpeg"):similar(0.99),60)
		
		waitClick(Pattern("no_sta_3.jpeg"):similar(0.99),60) 
		waitClick(Pattern("no_sta_4.jpeg"):similar(0.99),60) 
     end

	
debug:highlight("'No Stamina' warning checking ...",1)
	
	if exists(Pattern("no_sta_0.jpeg"):similar(0.999),1) then    
		debug:highlight("No STA detected",1)
		
		waitClick(Pattern("no_sta_1.jpeg"):similar(0.99),60)   

	end 
 
	debug:highlight("Select Stamina Potion checking ...",1)
	
	if exists(Pattern("no_sta_2.jpeg"):similar(0.999),1) then    

		debug:highlight("Select Stamina Potion Triggered",1)
		
		waitClick(Pattern("no_sta_2.jpeg"):similar(0.99),60) 
		waitClick(Pattern("no_sta_3.jpeg"):similar(0.99),60) 
		waitClick(Pattern("no_sta_4.jpeg"):similar(0.99),60) 
	 end


	debug:highlight("'Auto Repeat' after Stamina potion checking ...",1)
    
	if exists(Pattern("no_sta_5.jpeg"):similar(0.99),1) then

		debug:highlight("'Auto Repeat' after Stamina potion triggered",1)		
          
		waitClick(Pattern("no_sta_5.jpeg"):similar(0.99),60)
		waitClick(Pattern("no_sta_6.jpeg"):similar(0.99),60)
     
	end

	debug:highlight("Inventory  Full Warning checking ....",1)
	
	if exists(Pattern("inv_1.jpeg"):similar(0.99),1) then     
		debug:highlight("Inventory clearing triggered",1)
		
		waitClick(Pattern("inv_2.jpeg"):similar(0.99),60) 
		end

	debug:highlight("'Go to Inventory' checking ...",1)

	if  exists(Pattern("inv_3.jpeg"):similar(0.99),1) then

		debug:highlight("Selling is triggered",1)
		
		waitClick(Pattern("inv_3.jpeg"):similar(0.99),60) 
		waitClick(Pattern("inv_4.jpeg"):similar(0.99),60) 
		waitClick(Pattern("inv_5.jpeg"):similar(0.99),60)
		waitClick(Pattern("inv_6.jpeg"):similar(0.99),60)
		
		waitClick(Pattern("inv_7.jpeg"):similar(0.99),60)
		waitClick(Pattern("inv_8.jpeg"):similar(0.99),60)
	end     

	debug:highlight("Battle Loss checking ...",1)
    
	if exists(Pattern("loss0.jpeg"):similar(0.99),1) then

		debug:highlight("Battle Loss detected",1)		
          
		waitClick(Pattern("loss1.jpeg"):similar(0.99),60)
          
		waitClick(Pattern("loss2.jpeg"):similar(0.99),60)
          
		waitClick(Pattern("loss3.jpeg"):similar(0.99),60)
          
		waitClick(Pattern("loss4.jpeg"):similar(0.99),60)
     
	end



	debug:highlight("Done Cycled",1)

end  