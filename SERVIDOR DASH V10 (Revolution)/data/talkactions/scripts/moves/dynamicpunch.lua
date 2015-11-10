local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, FIGHTINGDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 112)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 26)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, FIGHTINGDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 5)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, 26)

local function onCastSpell1(parameters)
    doCombat(parameters.cid, parameters.combat1, parameters.var)
   	doTargetCombatHealth(parameters.cid, getCreatureTarget(parameters.cid), parameters.element,  -((parameters.num1)+(parameters.level*(parameters.num3))), -((parameters.num2)+(parameters.level*(parameters.num3))), 255)
end

local function onCastSpell2(parameters)
    doCombat(parameters.cid, parameters.combat2, parameters.var)
   	doTargetCombatHealth(parameters.cid, getCreatureTarget(parameters.cid), parameters.element,  -((parameters.num1)+(parameters.level*(parameters.num3))), -((parameters.num2)+(parameters.level*(parameters.num3))), 255)
end

function onSay(cid)
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
element = FIGHTINGDAMAGE
num1 = 700 --- 1 dano
num2 = 1000 --- 2 dano
num3 = 2   --- bonus
num4 = 255 --- last
local parameters = { cid = cid, level = level, num1 = num1, num2 = num2, num3 = num3, num4 =num4, element = element, var = numberToVariant(getCreatureTarget(cid)), combat1 = combat1, combat2 = combat2, }
addEvent(onCastSpell1, 0, parameters)    
addEvent(onCastSpell2, 900, parameters)          
return true
end

local master = getCreatureMaster(cid)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

if getCreatureStorage(master, 20078) == 1 or isInArray(tShiny, b) then
level = getDamagePoke(cid, TRUE)
element = FIGHTINGDAMAGE
num1 = 900 --- 1 dano
num2 = 1000 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
else
level = getDamagePoke(cid, FALSE)
element = FIGHTINGDAMAGE
num1 = 700 --- 1 dano
num2 = 1000 --- 2 dano
num3 = 2   --- bonus
num4 = 255 --- last
end

local parameters = { cid = cid, level = level, num1 = num1, num2 = num2, num3 = num3, num4 =num4, element = element, var = numberToVariant(getCreatureTarget(cid)), combat1 = combat1, combat2 = combat2, }
addEvent(onCastSpell1, 0, parameters)    
addEvent(onCastSpell2, 900, parameters)          

end