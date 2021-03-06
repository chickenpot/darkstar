-----------------------------------
-- Area: Metalworks
--  NPC: Udine A.M.A.N
-- Type: Mentor Recruiter
-----------------------------------
package.loaded["scripts/zones/Metalworks/TextIDs"] = nil;
-----------------------------------
require("scripts/zones/Metalworks/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    local var = 0;
    if (player:getMentor() == 0) then
        if (player:getMainLvl() >= 30 and player:getPlaytime() >= 648000) then
            var = 1;
        end
    elseif (player:getMentor() >= 1) then
        var = 2;
    end
    player:startEvent(826, var);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
    if (csid == 826 and option == 0) then
        player:setMentor(1);
    end
end;
