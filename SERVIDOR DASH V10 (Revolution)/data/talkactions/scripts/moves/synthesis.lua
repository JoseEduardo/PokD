local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HEALING)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 132)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)
setHealingFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 50, 50, 50, 70)

function onSay(cid) 
if not isSummon(cid) then
	return doCombat(cid, combat, numberToVariant(cid)) and
		doCreatureAddHealth(cid, math.random(800, 1000))
end

local master = getCreatureMaster(cid)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

if isInArray(tShiny, b) then
	return doCombat(cid, combat, numberToVariant(cid)) and
		doCreatureAddHealth(cid, math.random(800, 1000))
else
	return doCombat(cid, combat, numberToVariant(cid)) and
		doCreatureAddHealth(cid, math.random(1000, 1500))
end
end