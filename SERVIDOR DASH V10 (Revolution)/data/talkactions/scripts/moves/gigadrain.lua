local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 8)

function onSay(cid)
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
element = COMBAT_PHYSICALDAMAGE
num1 = 500 --- 1 dano
num2 = 900 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
	return doCombat(cid, combat, numberToVariant(getCreatureTarget(cid))) and
doTargetCombatHealth(cid, getCreatureTarget(cid), element, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4) and
    doCreatureAddHealth(cid, math.random(300, 400))
end

level = getDamagePoke(cid, FALSE)
element = COMBAT_PHYSICALDAMAGE
num1 = 500 --- 1 dano
num2 = 900 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last

	return doCombat(cid, combat, numberToVariant(getCreatureTarget(cid))) and
doTargetCombatHealth(cid, getCreatureTarget(cid), element, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4) and
		doCreatureAddHealth(cid, math.random(300, 400))
end