local Blastoise = {lookType = 590}
local Charizard = {lookType = 594}
local Venusaur = {lookType = 284}
local Electrode = {lookType = 286}
local Voltorb = {lookType = 287}

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE,COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 140)

local rollarea = createCombatArea{
{1, 1, 1},
{1, 2, 1},
{1, 1, 1},
}

function onSay(cid, var)
if getCreatureCondition(cid, CONDITION_OUTFIT) == true then
return true
end
doSendAnimatedText(getCreaturePosition(cid), 'FURY', 180)

if getCreatureOutfit(cid).lookType == 495 then
doSetCreatureOutfit(cid, Blastoise, -1)
elseif getCreatureOutfit(cid).lookType == 294 then
doSetCreatureOutfit(cid, Charizard, -1)
elseif getCreatureOutfit(cid).lookType == 123 then
doSetCreatureOutfit(cid, Voltorb, -1)
elseif getCreatureOutfit(cid).lookType == 115 then
doSetCreatureOutfit(cid, Sandslash, -1)
elseif getCreatureOutfit(cid).lookType == 43 then
doSetCreatureOutfit(cid, Sandshrew, -1)
end

local function damage(params)
local master = getCreatureMaster(cid)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

num1 = 1600 --- 1 dano
num2 = 1900 --- 2 dano
num3 = 2   --- bonus
num4 = 255 --- last

if isCreature(params.cid) then
if #getCreatureSummons(getCreatureMaster(cid)) >= 1 then
level = getDamagePoke(cid, FALSE)

if getCreatureOutfit(cid).lookType == 590 then
doAreaCombatHealth(params.cid, WATERDAMAGE, getThingPos(params.cid), rollarea,  -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4) 
end
if getCreatureOutfit(cid).lookType == 594 then
doAreaCombatHealth(params.cid, FIREDAMAGE, getThingPos(params.cid), rollarea,  -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4) 
end

else
return true
end
end
end

local function voltar(params)
if isCreature(params.cid) then
doRemoveCondition(params.cid, CONDITION_OUTFIT)
end
end
local vezes = 12
local delay = 750 -- não mexe
for i = 1, vezes do
addEvent(damage, delay*i, {cid = cid})
end
addEvent(voltar, 751*vezes, {cid = cid})
end 