local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 5)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 3)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 5)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, 3)

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 5)
setCombatParam(combat3, COMBAT_PARAM_DISTANCEEFFECT, 3)



local function onCastSpell1(parameters)
    doCombat(parameters.cid, parameters.combat1, parameters.var)
	doTargetCombatHealth(parameters.cid, getCreatureTarget(parameters.cid), COMBAT_PHYSICALDAMAGE, -250, -350, 255)
end

local function onCastSpell2(parameters)
    doCombat(parameters.cid, parameters.combat2, parameters.var)
	doTargetCombatHealth(parameters.cid, getCreatureTarget(parameters.cid), COMBAT_PHYSICALDAMAGE, -250, -350, 255)
end

local function onCastSpell3(parameters)
    doCombat(parameters.cid, parameters.combat3, parameters.var)
	doTargetCombatHealth(parameters.cid, getCreatureTarget(parameters.cid), COMBAT_PHYSICALDAMAGE, -250, -350, 255)
end



function onSay(cid)
local parameters = { cid = cid, var = numberToVariant(getCreatureTarget(cid)), combat1 = combat1, combat2 = combat2, combat3 = combat3, }
addEvent(onCastSpell1, 0, parameters)    
addEvent(onCastSpell2, 300, parameters)       
addEvent(onCastSpell3, 600, parameters)       
end






