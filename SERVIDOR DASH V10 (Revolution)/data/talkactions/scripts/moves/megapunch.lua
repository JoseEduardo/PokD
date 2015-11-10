local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 112)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 26)

function onSay(cid, words, param)
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
element = FIGHTINGDAMAGE
num1 = 1000 --- 1 dano
num2 = 1300 --- 2 dano
num3 = 2   --- bonus
num4 = 255 --- last

	return doCombat(cid, combat, numberToVariant(getCreatureTarget(cid))) and
    doTargetCombatHealth(cid, getCreatureTarget(cid), element, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end

local master = getCreatureMaster(cid)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

if getCreatureStorage(master, 20078) == 1 or isInArray(tShiny, b) then
level = getDamagePoke(cid, TRUE)
element = FIGHTINGDAMAGE
num1 = 1300 --- 1 dano
num2 = 1500 --- 2 dano
num3 = 2   --- bonus
num4 = 255 --- last
else
level = getDamagePoke(cid, FALSE)
element = FIGHTINGDAMAGE
num1 = 1000 --- 1 dano
num2 = 1300 --- 2 dano
num3 = 2   --- bonus
num4 = 255 --- last
end
	return doCombat(cid, combat, numberToVariant(getCreatureTarget(cid))) and
    doTargetCombatHealth(cid, getCreatureTarget(cid), element, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end