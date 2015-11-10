function removiC(params)
    setPlayerStorageValue(params.target, 84145, 0)
end

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, PSYCHICDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 136)

local condition = createConditionObject(CONDITION_DRUNK)
setConditionParam(condition, CONDITION_PARAM_TICKS, 10000)
setCombatCondition(combat, condition)


arr =  {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 2, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local area = createCombatArea(arr)
setCombatArea(combat, area)

function onSay(cid)

if not isSummon(cid) then
 level = getDamagePoke(cid, FALSE)
 element = PSYCHICDAMAGE
 num1 = 50 --- 1 dano
 num2 = 100 --- 2 dano
 num3 = 3   --- bonus
 num4 = 255 --- last

local target = getCreatureTarget(cid)
      params = {cid=cid, target=target}
if isCreature(getCreatureTarget(cid)) then
    registerCreatureEvent(target, "Miss")  
	registerCreatureEvent(target, "Fear")
    setPlayerStorageValue(target, 84145, 1)
    addEvent(removiC, 5000, params)
end

return doCombat(cid, combat, numberToVariant(cid)) and
doAreaCombatHealth(cid, element, getCreaturePosition(cid), area,  -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end


local master = getCreatureMaster(cid)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

if getCreatureStorage(master, 20078) == 1 or isInArray(tShiny, b) then
level = getDamagePoke(cid, TRUE)
element = PSYCHICDAMAGE
num1 = 60 --- 1 dano
num2 = 200 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
else
level = getDamagePoke(cid, FALSE)
element = PSYCHICDAMAGE
num1 = 50 --- 1 dano
num2 = 100 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
end
local target = getCreatureTarget(cid)
    params = {cid=cid, target=target}
if isCreature(getCreatureTarget(cid)) then
    registerCreatureEvent(target, "Miss")  
	registerCreatureEvent(target, "Fear")
    setPlayerStorageValue(target, 84145, 1)
    addEvent(removiC, 5000, params)
end
return doCombat(cid, combat, numberToVariant(cid)) and
doAreaCombatHealth(cid, element, getCreaturePosition(cid), area,  -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end