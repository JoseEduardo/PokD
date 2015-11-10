local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 214)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 214)

function onSay(cid)
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
element = GHOSTDAMAGE
num1 = 200 --- 1 dano
num2 = 500 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
	return doCombat(cid, combat, numberToVariant(getCreatureTarget(cid))) and
doTargetCombatHealth(cid, getCreatureTarget(cid), element, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end

local master = getCreatureMaster(cid)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

if getCreatureStorage(master, 20078) == 1 or isInArray(tShiny, b) then
level = getDamagePoke(cid, TRUE)
element = GHOSTDAMAGE
num1 = 400 --- 1 dano
num2 = 600 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
else
level = getDamagePoke(cid, FALSE)
element = GHOSTDAMAGE
num1 = 200 --- 1 dano
num2 = 500 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
end
	return doCombat(cid, combat, numberToVariant(getCreatureTarget(cid))) and
doTargetCombatHealth(cid, getCreatureTarget(cid), element, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end