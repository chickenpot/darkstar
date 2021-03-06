-----------------------------------
-- Area: Ru'Lude Gardens
--  NPC: Dabih Jajalioh
-- Standard Merchant NPC
-- Additional script for pereodical
-- goods needed.
-- Partitially implemented.
-----------------------------------
package.loaded["scripts/zones/RuLude_Gardens/TextIDs"] = nil;
-----------------------------------
require("scripts/globals/shop");
require("scripts/zones/RuLude_Gardens/TextIDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)

    player:showText(npc,DABIHJAJALIOH_SHOP_DIALOG);

    local stock =
    {
        0x03b4,60,    --Carnation
     0x027c,119,    --Chamomile
     0x03be,120,    --Marguerite
     0x03b5,96,    --Rain Lily
     0x03ad,80,    --Red Rose
     0x03b7,110}    --Wijnruit

--     Place for difficult script

    dsp.shop.general(player, stock);
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;

