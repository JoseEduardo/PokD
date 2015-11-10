local Golem = {lookType = 288}
local Sandslash = {lookType = 285}
local Sandshrew = {lookType = 284}
local Electrode = {lookType = 286}
local Voltorb = {lookType = 287}

local rollarea = createCombatArea{
{1, 1, 1},
{1, 2, 1},
{1, 1, 1},
}

function onSay(cid, var)
if getCreatureCondition(cid, CONDITION_OUTFIT) == true then
return true
end
doSendAnimatedText(getCreaturePosition(cid), 'ROLLOUT', 156)

if getCreatureOutfit(cid).lookType == 116 then
doSetCreatureOutfit(cid, Golem, -1)
elseif getCreatureOutfit(cid).lookType == 125 then
doSetCreatureOutfit(cid, Electrode, -1)
elseif getCreatureOutfit(cid).lookType == 123 then
doSetCreatureOutfit(cid, Voltorb, -1)
elseif getCreatureOutfit(cid).lookType == 115 then
doSetCreatureOutfit(cid, Sandslash, -1)
elseif getCreatureOutfit(cid).lookType == 43 then
doSetCreatureOutfit(cid, Sandshrew, -1)
end

local function damage(params)
if isSummon then
local master = getCreatureMaster(cid)
if getCreatureStorage(master, 20078) == 1 or isInArray(tShiny, b) then
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

level = getDamagePoke(cid, FALSE)
num1 = 80 --- 1 dano
num2 = 90 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
else
num1 = 80 --- 1 dano
num2 = 90 --- 2 dano
num3 = 2   --- bonus
num4 = 255 --- last
end
end

if isCreature(params.cid) then
if #getCreatureSummons(getCreatureMaster(cid)) >= 1 then
level = getDamagePoke(cid, FALSE)
doAreaCombatHealth(params.cid, ROCKDAMAGE, getThingPos(params.cid), rollarea,  -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4) 
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