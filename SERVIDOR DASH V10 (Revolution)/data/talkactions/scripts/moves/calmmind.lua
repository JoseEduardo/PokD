local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HEALING)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 12)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_DRUNK)

function onSay(cid)
	return doCombat(cid, combat, numberToVariant(cid)) and
		doCreatureAddHealth(cid, math.random(0, 0))
end