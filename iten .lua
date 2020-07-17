while 1 do

mainStatImages = {  "inv_1.jpeg", "inv_2.jpeg", "inv_3.jpeg", "inv_4.jpeg", "inv_5.jpeg",
  "inv_6.jpeg", "inv_7.jpeg", "inv_8.jpeg", "iten_0.jpeg", "iten_1.jpeg" }
function setDimension16by9()
Settings:setScriptDimension(true, 1920)
Settings:setCompareDimension(true, 1920)
end
 
	debug = Region(190,10,1000,30)
	
	debug:highlight("iten_1 check",1)
    
	if exists(Pattern("iten_1.jpeg"):similar(0.99),1) then

		debug:highlight("'iten_1 triggered",1)		
          
		waitClick(Pattern("iten_1.jpeg"):similar(0.99),60)
     
	end
	
	debug:highlight("iten_0 check",1)
     
	if exists(Pattern("iten_0.jpeg"):similar(0.99),2) then
		debug:highlight("iten_0 Triggered",1)
	     
		waitClick(Pattern("iten_0.jpeg"):similar(0.99),60)
     
	end

	debug:highlight("iten_1 check",1)
    
	if exists(Pattern("iten_1.jpeg"):similar(0.99),1) then

		debug:highlight("'iten_1 triggered",1)		
          
		waitClick(Pattern("iten_1.jpeg"):similar(0.99),60)
     
	end
	
	debug:highlight("iten_1 check",1)
    
	if exists(Pattern("iten_1.jpeg"):similar(0.99),1) then

		debug:highlight("'iten_1 triggered",1)		
          
		waitClick(Pattern("iten_1.jpeg"):similar(0.99),60)
     
	end
	
	debug:highlight("Inventory Full check",1)
	
	if exists(Pattern("inv_1.jpeg"):similar(0.99),1) then     
		debug:highlight("Inventory Selling triggered",1)
		
		waitClick(Pattern("inv_2.jpeg"):similar(0.99),60) 
		end

	debug:highlight("'Move to Inventory' check",1)

	if  exists(Pattern("inv_3.jpeg"):similar(0.99),1) then

		debug:highlight("Selling is triggered",1)
		
		waitClick(Pattern("inv_3.jpeg"):similar(0.99),60) 
		waitClick(Pattern("inv_4.jpeg"):similar(0.99),60) 
		waitClick(Pattern("inv_5.jpeg"):similar(0.99),60)
		waitClick(Pattern("inv_6.jpeg"):similar(0.99),60)
		
		waitClick(Pattern("inv_7.jpeg"):similar(0.99),60)
		waitClick(Pattern("inv_8.jpeg"):similar(0.99),60)

     
	end     

	
	debug:highlight("Repeat",1)

end  