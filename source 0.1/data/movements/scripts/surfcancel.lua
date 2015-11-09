local poke = {'Poliwag', 'Poliwhirl', 'Seaking', 'Dewgong', 'Blastoise', 'Tentacruel', 'Lapras', 'Gyarados', 'Shiny Gyarados', 'Omastar', 'Kabutops', 'Vaporeon', 'Staryu', 'Starmie', 'Goldeen', 'Seadra', 'Golduck', 'Squirtle', 'Wartortle', 'Tentacool', 'Snorlax', 'Poliwrath'}
local surf = {
["Poliwag"] = {lookType=278, speed = 285},
["Poliwhirl"] = {lookType=137, speed = 480},
["Seaking"] = {lookType=269, speed = 520},
["Dewgong"] = {lookType=183, speed = 700},
["Blastoise"] = {lookType=184, speed = 850},
["Tentacruel"] = {lookType=185, speed = 750},
["Lapras"] = {lookType=186, speed = 960},
["Gyarados"] = {lookType=187, speed = 1050},
["Omastar"] = {lookType=188, speed = 680},
["Kabutops"] = {lookType=189, speed = 840},
["Poliwrath"] = {lookType=190, speed = 680},
["Vaporeon"] = {lookType=191, speed = 800},
["Staryu"] = {lookType=266, speed = 385},
["Starmie"] = {lookType=267, speed = 685},
["Goldeen"] = {lookType=268, speed = 355},
["Seadra"] = {lookType=270, speed = 655},
["Golduck"] = {lookType=271, speed = 760},
["Squirtle"] = {lookType=273, speed = 365},
["Wartortle"] = {lookType=275, speed = 605},
["Tentacool"] = {lookType=277, speed = 340},
["Snorlax"] = {lookType=300, speed = 500},
["Shiny Gyarados"] = {lookType=529, speed = 1500},
}

function onStepIn(cid, item, position, fromPosition)
if getPlayerStorageValue(cid, 17000) >= 1 then
return true
end
if getPlayerStorageValue(cid, 63215) >= 1 then
doChangeSpeed(cid, -(getCreatureSpeed(cid)))
doChangeSpeed(cid, 250)
doRemoveCondition(cid, CONDITION_OUTFIT)
setPlayerStorageValue(cid, 63215, 0)
local item = getPlayerSlotItem(cid, 8)
doCreatureSay(cid, "" .. getItemAttribute(item.uid, "poke"):match("This is (.-)'s pokeball.")..", Im tired of surfing!", 1)
pk = doSummonCreature(getItemAttribute(item.uid, "poke"):match("This is (.-)'s pokeball."), getCreaturePosition(cid))
doConvinceCreature(cid, pk)
registerCreatureEvent(pk, "DiePoke")
registerCreatureEvent(pk, "Exp")
setCreatureMaxHealth(pk, (getPlayerStorageValue(cid, 61209)))
doCreatureAddHealth(pk, (getPlayerStorageValue(cid, 61209)))
doCreatureAddHealth(pk, (getPlayerStorageValue(cid, 61210))-(getPlayerStorageValue(cid, 61209)))
return true
end
end