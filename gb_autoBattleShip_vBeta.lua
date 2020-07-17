--
-- Created by IntelliJ IDEA.
-- User: Jimmy
-- Date: 2017/3/26
-- Time: 下午 12:45
-- To change this template use File | Settings | File Templates.
--

Settings:setCompareDimension(true, 720)
Settings:setScriptDimension(true, 720)
Settings:set("MinSimilarity", 0.7)

local SpaceRift = 0 --number of Space Rift
local idone = 0 -- i hv done somthing
--local total_assault=0
--local total_search=0
--local total_unseal=0
--local total_whatever=0
--local total=0
find=Pattern("AIRSHIP_Find_New.png")

--=========Main Function Collections========
    function assault()
        reg_assault = Region(575,290,130,60)
        if(reg_assault:exists(Pattern("AIRSHIP_Assault.png")))then
            wait(0.5)
            if(Region(320,930,80,85):exists("AIRSHIP_Wrong_SpaceRift.png",1))then
                toast("Wrong Space Rift")
            else
                continueClick(Location(640, 320), 2) --click assault
                wait(3)
                existsClick("AIRSHIP_Skip.png", 2) --click skip
                wait(1)
                continueClick(Location(640, 320), 2) --click anywhere
                --total_assault=total_assault+1
            end
        end
    end
    function search()
        reg_Search = Region(575,290,130,60)
        if(reg_Search:exists("AIRSHIP_Search.png"))then
            touchDown(Location(640, 320))
            wait(0.3)
            touchUp(Location(640, 320))
            --total_search=total_search+1
        elseif(reg_Search:exists("AIRSHIP_Search1.png"))then
            touchDown(Location(640, 320))
            wait(0.3)
            touchUp(Location(640, 320))
            --total_search=total_search+1
        end
    end
--====sub function collections====
--    function battery()
--        local flag = 0
--        --while(flag==0)do
--        existsClick("AIRSHIP_Charge.png", 2)
--        wait(3)
--        -- -click use1 bottom
--
--        use1=Pattern("AIRSHIP_Use1.png")
--        reg_use1 = Region(400,750,200,200)
--        if(reg_use1:exists(use1,3))then
--            --toast("found")
--            existsClick(use1,2)
--            flag =1
--            wait(2)
--        else
--            --            sensor1=sensor1+1
--            --            toast(sensor1)
--        end
--    end
    function unseal() --unseal

        if(reg_find:exists("AIRSHIP_Temple.png",2))then
            touchDown(Location(210, 730))
            wait(0.3)
            touchUp(Location(210, 730))
            idone=1
            --total_unseal=total_unseal+1
        end
    end
    function talk()
        touchDown(Location(350,850))
        wait(0.3)
        touchUp(Location(350,850))
    end
    function confirm()
        if(exists("AIRSHIP_Confirm1.png",2))then
            existsClick("AIRSHIP_Confirm1.png", 1)
            idone=1
        end
    end
    function anyBottom()
        if(exists("AIRSHIP_Whatever_Bottom.png",2))then
            existsClick("AIRSHIP_Whatever_Bottom.png", 1)
        elseif(exists("AIRSHIP_Whatever_Bottom1.png",1))then
            existsClick("AIRSHIP_Whatever_Bottom1.png", 1)
        else
            toast("refresh")
        end
    end
    function whatever()
        reg_find = Region(570,720,110,50)
        if(reg_find:exists("AIRSHIP_Charge.png",2))then
            touchDown(Location(640, 320))
            wait(0.3)
            touchUp(Location(640, 320))
            wait(2)
            talk()
            anyBottom()
        else
            confirm()
            anyBottom()
        end
    end

--==== Main Script ====
while (true) do
    idone=0
    continueClick(Location(5, 500), 1)
    --====== 5 times explore ======
    reg_find = Region(250,700,115,80) --find new location
    if(reg_find:exists(find,1))then
        continueClick(Location(360, 730), 5)
    end
    --
    --    --if no energy then  use 1 battery
    --    energy=Pattern("AIRSHIP_Energy.png")
    --    reg_energy = Region(550,800,200,50) --Energy bar
    --    if(reg_energy:exists(energy))then
    --        sensor1=sensor1+1
    --        toast(sensor1)
    --        done = 0
    --    else
    --
    --    end

    --click info
    reg_info = Region(575,1110,125,60)
    if(reg_info:exists(Pattern("AIRSHIP_Info.png")))then
        continueClick(Location(640,1150),2)
        wait(3)
        assault()
        search()
        unseal()
        if(idone==0)then
            whatever()--other case
        end
    end
    --total=total+1
    --        toast("assault")
    --        toast(total_assault)
    --        toast("search")
    --        toast(total_search)
    --        toast("unseal")
    --        toast(total_unseal)
    --    toast("whatever")
    --    total_whatever=total_whatever+1
    --    toast(total_whatever)
    --    toast("total")
    --    toast(total)
end