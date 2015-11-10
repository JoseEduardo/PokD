local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, GHOSTDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 139)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 139)

function onSay(cid)
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
element = GHOSTDAMAGE
num1 = 500 --- 1 dano
num2 = 700 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
	return doCombat(cid, combat, numberToVariant(getCreatureTarget(cid))) and
        doTargetCombatHealth(cid, getCreatureTarget(cid), element, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4) and
		doCreatureAddHealth(cid, math.random(350, 450))
end

local master = getCreatureMaster(cid)
if getCreatureStorage(master, 20098) == 1 or isInArray(tShiny, b) then
level = getDamagePoke(cid, TRUE)
element = GHOSTDAMAGE
num1 = 900 --- 1 dano
num2 = 1000 --- 2 dano
num3 = 2   --- bonus
num4 = 255 --- last
setPlayerStorageValue(master, 20098, 0)
else
level = getDamagePoke(cid, FALSE)
element = GHOSTDAMAGE
num1 = 500 --- 1 dano
num2 = 700 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
end
	return doCombat(cid, combat, numberToVariant(getCreatureTarget(cid))) and
        doTargetCombatHealth(cid, getCreatureTarget(cid), element, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4) and
		doCreatureAddHealth(cid, math.random(350, 450))
end