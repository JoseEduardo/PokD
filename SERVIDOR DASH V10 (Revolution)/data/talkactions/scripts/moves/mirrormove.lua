local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 135)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 135)

function onSay(cid)
	return doCombat(cid, combat, numberToVariant(getCreatureTarget(cid))) and
	doTargetCombatHealth(cid, getCreatureTarget(cid), COMBAT_PHYSICALDAMAGE, -300, -500, 255)
end