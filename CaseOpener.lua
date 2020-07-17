Settings:setCompareDimension(true, 480)
Settings:setScriptDimension(true, 480)
Settings:set("MinSimilarity", 0.6)
localPath = scriptPath()
setImmersiveMode(true)

loc1 = find("case.png")
loc2 = find("money.png")

function botCase()
    continueClick(loc1, 350)
end
function botCash()
    continueClick(loc2, 2000)
end

while (true) do
    pcall(botCase)
    existsClick("random.png")
    wait(1)
    existsClick("roll.png")
    wait(10)
    existsClick("get.png")
    wait(1)
    pcall(botCash)
end
