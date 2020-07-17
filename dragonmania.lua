Settings:setCompareDimension(true, 960)
Settings:setScriptDimension(true, 960)

farm = findAll(Pattern("farm.png"))
fruit = Pattern("fruit.png")
fruitfinish = Pattern("fruitfinish.png"):similar(0.9)
berry = Pattern("berry.png")
portal = Pattern("portal.png")

click(portal)
wait(3)
farms = {}

for i, m in ipairs(farm) do
	farms[i] = m
end
while true do
	for i=1, 4 do
		toast("working on farm "..i)
		if(exists(fruitfinish)) then
			click(fruitfinish)
			wait(1)
		end
		click(farms[i])
		wait(1)
		existsClick(fruit)
		wait(1)
		existsClick(berry)
		click(portal)
		wait(2)
	end
end