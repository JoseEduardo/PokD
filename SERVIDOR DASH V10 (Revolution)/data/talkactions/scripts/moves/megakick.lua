local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 113)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 42)

function onSay(cid, words, param)
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
else
level = getDamagePoke(cid, FALSE)
end
element = PHYSICALDAMAGE
num1 = 1000 --- 1 dano
num2 = 800 --- 2 dano
num3 = 2   --- bonus
num4 = 255 --- last

	return doCombat(cid, combat, numberToVariant(getCreatureTarget(cid))) and
    doTargetCombatHealth(cid, getCreatureTarget(cid), element, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end