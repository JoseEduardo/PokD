local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 8)

function onSay(cid)
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
element = COMBAT_PHYSICALDAMAGE
num1 = 300 --- 1 dano
num2 = 400 --- 2 dano
num3 = 4   --- bonus
num4 = 255 --- last
else
level = getDamagePoke(cid, FALSE)
element = COMBAT_PHYSICALDAMAGE
num1 = 300 --- 1 dano
num2 = 400 --- 2 dano
num3 = 4   --- bonus
num4 = 255 --- last
end

	return doCombat(cid, combat, numberToVariant(getCreatureTarget(cid))) and
doTargetCombatHealth(cid, getCreatureTarget(cid), element, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4) and
		doCreatureAddHealth(cid, math.random(100, 150))
end