local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 236)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 42)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 236)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, 42)

local function onCastSpell1(parameters)
if not isCreature(getCreatureTarget(parameters.cid)) then
return true
end
	doSendDistanceShoot(parameters.jus, getThingPos(getCreatureTarget(parameters.cid)), 41)
    doCombat(parameters.cid, parameters.combat1, parameters.var)
   	doTargetCombatHealth(parameters.cid, getCreatureTarget(parameters.cid), parameters.element,  -((parameters.num1)+(parameters.level*(parameters.num3))), -((parameters.num2)+(parameters.level*(parameters.num3))), 255)
end

local function onCastSpell2(parameters)
if not isCreature(getCreatureTarget(parameters.cid)) then
return true
end
	doSendDistanceShoot(getThingPos(parameters.cid), parameters.jus, 41)
	doSendDistanceShoot(parameters.jus, getThingPos(getCreatureTarget(parameters.cid)), 41)
    doCombat(parameters.cid, parameters.combat2, parameters.var)
   	doTargetCombatHealth(parameters.cid, getCreatureTarget(parameters.cid), parameters.element,  -((parameters.num1)+(parameters.level*(parameters.num3))), -((parameters.num2)+(parameters.level*(parameters.num3))), 255)
end

function onSay(cid)
jus = {x = getThingPos(cid).x-2, y = getThingPos(cid).y - 6, z = getThingPos(cid).z}
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
element = NORMALDAMAGE
num1 = 550 --- 1 dano
num2 = 650 --- 2 dano
num3 = 4   --- bonus
num4 = 255 --- last

	doSendDistanceShoot(getThingPos(cid), jus, 41)
local parameters = { cid = cid,jus = jus, level = level, num1 = num1, num2 = num2, num3 = num3, num4 =num4, element = element, var = numberToVariant(getCreatureTarget(cid)), combat1 = combat1, combat2 = combat2, combat3 = combat3 }
addEvent(onCastSpell1, 0, parameters)    
addEvent(onCastSpell2, 600, parameters)            
return true
end

local master = getCreatureMaster(cid)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

if getCreatureStorage(master, 20078) == 1 or isInArray(tShiny, b) then
level = getDamagePoke(cid, TRUE)
element = NORMALDAMAGE
num1 = 600 --- 1 dano
num2 = 800 --- 2 dano
num3 = 4   --- bonus
num4 = 255 --- last
else
level = getDamagePoke(cid, FALSE)
element = NORMALDAMAGE
num1 = 550 --- 1 dano
num2 = 650 --- 2 dano
num3 = 4   --- bonus
num4 = 255 --- last
end

	doSendDistanceShoot(getThingPos(cid), jus, 41)
local parameters = { cid = cid,jus = jus, level = level, num1 = num1, num2 = num2, num3 = num3, num4 =num4, element = element, var = numberToVariant(getCreatureTarget(cid)), combat1 = combat1, combat2 = combat2, combat3 = combat3 }
addEvent(onCastSpell1, 0, parameters)    
addEvent(onCastSpell2, 600, parameters)            
end