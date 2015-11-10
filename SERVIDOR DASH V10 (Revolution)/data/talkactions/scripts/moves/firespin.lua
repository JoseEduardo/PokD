local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, FIREDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 5)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 3)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, FIREDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 5)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, 3)

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, FIREDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 5)
setCombatParam(combat3, COMBAT_PARAM_DISTANCEEFFECT, 3)



local function onCastSpell1(parameters)
    doCombat(parameters.cid, parameters.combat1, parameters.var)
   	doTargetCombatHealth(parameters.cid, getCreatureTarget(parameters.cid), parameters.element,  -((parameters.num1)+(parameters.level*(parameters.num3))), -((parameters.num2)+(parameters.level*(parameters.num3))), 255)
end

local function onCastSpell2(parameters)
    doCombat(parameters.cid, parameters.combat2, parameters.var)
   	doTargetCombatHealth(parameters.cid, getCreatureTarget(parameters.cid), parameters.element,  -((parameters.num1)+(parameters.level*(parameters.num3))), -((parameters.num2)+(parameters.level*(parameters.num3))), 255)
end

local function onCastSpell3(parameters)
    doCombat(parameters.cid, parameters.combat3, parameters.var)
   	doTargetCombatHealth(parameters.cid, getCreatureTarget(parameters.cid), parameters.element,  -((parameters.num1)+(parameters.level*(parameters.num3))), -((parameters.num2)+(parameters.level*(parameters.num3))), 255)
end



function onSay(cid)
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
element = FIREDAMAGE
num1 = 250 --- 1 dano
num2 = 350 --- 2 dano
num3 = 7   --- bonus

local parameters = { cid = cid, level = level, element = element, num1 = num1, num2 = num2, num3 = num3, var = numberToVariant(getCreatureTarget(cid)), combat1 = combat1, combat2 = combat2, combat3 = combat3, }
addEvent(onCastSpell1, 0, parameters)    
addEvent(onCastSpell2, 300, parameters)       
addEvent(onCastSpell3, 600, parameters)       
return true
end

local master = getCreatureMaster(cid)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

if getCreatureStorage(master, 20078) == 1 or isInArray(tShiny, b) then
level = getDamagePoke(cid, TRUE)
element = FIREDAMAGE
num1 = 600 --- 1 dano
num2 = 800 --- 2 dano
num3 = 6   --- bonus
else
level = getDamagePoke(cid, FALSE)
element = FIREDAMAGE
num1 = 250 --- 1 dano
num2 = 350 --- 2 dano
num3 = 7   --- bonus
end

local parameters = { cid = cid, level = level, element = element, num1 = num1, num2 = num2, num3 = num3, var = numberToVariant(getCreatureTarget(cid)), combat1 = combat1, combat2 = combat2, combat3 = combat3, }
addEvent(onCastSpell1, 0, parameters)    
addEvent(onCastSpell2, 300, parameters)       
addEvent(onCastSpell3, 600, parameters)       
end