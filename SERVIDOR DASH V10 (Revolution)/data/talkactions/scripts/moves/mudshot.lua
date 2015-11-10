	local function effect(params)
	if isCreature(params.cid) then
	doSendMagicEffect(getThingPos(params.cid), 34)
	end
	end
	
local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 137)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 1)

local condition = createConditionObject(CONDITION_DRUNK)
setConditionParam(condition, CONDITION_PARAM_TICKS, 5000)
setCombatCondition(combat, condition)

function onSay(cid)
setCreatureConditionValue(getCreatureTarget(cid), IDMISS, 1)

if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
element = GROUNDDAMAGE
num1 = 100 --- 1 dano
num2 = 200 --- 2 dano
num3 = 4   --- bonus
num4 = 255 --- last
local aqrvui = getCreatureTarget(cid)
for vx = 1, 7 do
addEvent(effect, vx*500, {cid = aqrvui})
end
	return doCombat(cid, combat, numberToVariant(getCreatureTarget(cid))) and
doTargetCombatHealth(cid, getCreatureTarget(cid), element, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end

local master = getCreatureMaster(cid)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

if getCreatureStorage(master, 20078) == 1 or isInArray(tShiny, b) then
level = getDamagePoke(cid, TRUE)
element = GROUNDAMAGE
num1 = 500 --- 1 dano
num2 = 600 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
else
level = getDamagePoke(cid, FALSE)
element = GROUNDDAMAGE
num1 = 100 --- 1 dano
num2 = 200 --- 2 dano
num3 = 4   --- bonus
num4 = 255 --- last
end
local aqrvui = getCreatureTarget(cid)
for vx = 1, 7 do
addEvent(effect, vx*500, {cid = aqrvui})
end
	return doCombat(cid, combat, numberToVariant(getCreatureTarget(cid))) and
doTargetCombatHealth(cid, getCreatureTarget(cid), element, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end