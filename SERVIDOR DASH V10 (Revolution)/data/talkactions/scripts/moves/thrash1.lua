local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 111)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 26)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -1, -10, -1, -20, 5, 5, 1.4, 2.1)

function onSay(cid)
	return doCombat(cid, combat, numberToVariant(getCreatureTarget(cid))) and
	doTargetCombatHealth(cid, getCreatureTarget(cid), COMBAT_PHYSICALDAMAGE, -200, -500, 255)
end