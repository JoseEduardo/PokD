local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, FIREDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_FIREATTACK)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_FIRE)

function onSay(cid)
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
element = FIREDAMAGE
num1 = 200 --- 1 dano
num2 = 400 --- 2 dano
num3 = 5   --- bonus
num4 = 255 --- last
	return doCombat(cid, combat, numberToVariant(getCreatureTarget(cid))) and
    doTargetCombatHealth(cid, getCreatureTarget(cid), element, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end

local master = getCreatureMaster(cid)
if getCreatureStorage(master, 20078) == 1 or isInArray(tShiny, b) then
level = getDamagePoke(cid, TRUE)
element = FIREDAMAGE
num1 = 400 --- 1 dano
num2 = 800 --- 2 dano
num3 = 2   --- bonus
num4 = 255 --- last
setPlayerStorageValue(master, 20078, 0)
else
level = getDamagePoke(cid, FALSE)
element = FIREDAMAGE
num1 = 200 --- 1 dano
num2 = 400 --- 2 dano
num3 = 5   --- bonus
num4 = 255 --- last
end

	return doCombat(cid, combat, numberToVariant(getCreatureTarget(cid))) and
doTargetCombatHealth(cid, getCreatureTarget(cid), element, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end