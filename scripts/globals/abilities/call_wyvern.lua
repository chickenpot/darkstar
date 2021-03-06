-----------------------------------
-- Ability: Call Wyvern
-- Summons a Wyvern to fight by your side.
-- Obtained: Dragoon Level 1
-- Recast Time: 20:00
-- Duration: Instant
-- Special: Only available if Dragoon is your main class.
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/status");
require("scripts/globals/pets");
require("scripts/globals/msg");
-----------------------------------

function onAbilityCheck(player,target,ability)
    if (player:getPet() ~= nil) then
         return dsp.msg.basic.ALREADY_HAS_A_PET,0;
    elseif (player:hasStatusEffect(dsp.effect.SPIRIT_SURGE) == true) then
        return dsp.msg.basic.UNABLE_TO_USE_JA,0;
    elseif (not player:canUsePet()) then
        return dsp.msg.basic.CANT_BE_USED_IN_AREA,0;
    else
        return 0,0;
    end
end;

function onUseAbility(player,target,ability)
    player:spawnPet(dsp.pet.id.WYVERN);
end;
