local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, NORMALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 146)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 146)

function onSay(cid, words, param)
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
element = NORMALDAMAGE
num1 = 130 --- 1 dano
num2 = 200 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
	return doCombat(cid, combat, numberToVariant(getCreatureTarget(cid))) and
    doTargetCombatHealth(cid, getCreatureTarget(cid), element, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end

local master = getCreatureMaster(cid)
if getCreatureStorage(master, 20078) == 1 or isInArray(tShiny, b) then
level = getDamagePoke(cid, TRUE)
element = NORMALDAMAGE
num1 = 200 --- 1 dano
num2 = 400 --- 2 dano
num3 = 2   --- bonus
num4 = 255 --- last
setPlayerStorageValue(master, 20078, 0)
else
level = getDamagePoke(cid, FALSE)
element = NORMALDAMAGE
num1 = 100 --- 1 dano
num2 = 200 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
end
	return doCombat(cid, combat, numberToVariant(getCreatureTarget(cid))) and
    doTargetCombatHealth(cid, getCreatureTarget(cid), element, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end