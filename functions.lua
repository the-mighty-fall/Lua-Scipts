bDebug=true

-- ========== Functions ===============
function getRegion2search (img)
if exists(img,1) then
	local m=getLastMatch()
	local x1=m:getX()
	local y1=m:getY()
	local w1=m:getW()
	local h1=m:getH()
	local out = string.format("Match score: %3.2f      reg_%s = Region (%s,%s,%s,%s)",m:getScore(),string.gsub(img,".png",""),x1,y1,w1,h1)
	df(out)
	return true
else
	df("not found")
	return false
end
end


function clickRandomIfMatch (img)
if exists(img,1) then
	local m=getLastMatch()
	local x=m:getX()
	local y=m:getY()
	local w=m:getW()
	local h=m:getH()
	local rx=math.random(x,x+w)
	local ry=math.random(y,y+h)
	local l=Location(rx,ry)
	click(l)
	return true
else
	return false
end
end


function clickRandomInRegion (r)
	local t=Timer()
	local t1=t:check()
	local rx=math.random(r:getX(),r:getX()+r:getW())
	local ry=math.random(r:getY(),r:getY()+r:getH())
	local l=Location(rx,ry)
		click(l)
		local t2=t:check()
		local str=string.format("clickRandomInRegion Location: %4d %4d. Time: %s",rx,ry,t2-t1)
		df(str)
	return true
end


function checkImgInRegion(reg,img)
local tab = listToTable(reg:findAllNoFindException(img))
if table.getn(tab)>0
	then
		local r=tab[1]
		local s=reg2string(r)
		return true
	else
		return false
	end
end


function checkImgInRegionAndClickRandom(reg,img, ...)
local tab = listToTable(reg:findAllNoFindException(img))
if table.getn(tab)>0
	then
		local check4grey=arg[1]
		local r=tab[1]
		if arg[1] == nil then
			clickRandomInRegion(r)
			return true
		else
			local R,G,B=getColor(r:getCenter())
			if (R==G and R==B) then
				return false
			else
				clickRandomInRegion(r);
				return true;
			end
		end
	else
		return false
	end
end


function df (str)
	if bDebug
	then
		local f=assert(io.open("/mnt/shared/bot.ms.ankulua/debug.out","a"))
		local out=string.format("%s %6.2f %s\n",os.date("%X"),globalTimer:check()-globalTimerT,str)
		f:write(out)
		globalTimerT=globalTimer:check()
		f:close()
	end
end


function reg2string (r)
	local x=r:getX()
	local y=r:getY()
	local w=r:getW()
	local h=r:getH()
	return string.format("(%4s,%4s,%4s,%4s)",x,y,w,h)
end



function fixSnapshot()
	local reg = Region(0, 0, 2, 2) -- set a small region
	reg:exists("white4px.png", 0) -- set time out to 0 for reducing time
	usePreviousSnap(true)
end


function unfixSnapshot()
	usePreviousSnap(false)
end
