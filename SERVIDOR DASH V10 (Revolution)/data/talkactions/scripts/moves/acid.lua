local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, POISONDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 0)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 14)

local function onCastSpell1(parameters)
if not isCreature(getCreatureTarget(parameters.cid)) then
return true
end
    doCombat(parameters.cid, parameters.combat1, parameters.var)
   	doTargetCombatHealth(parameters.cid, getCreatureTarget(parameters.cid), parameters.element,  -((parameters.num1)+(parameters.level*(parameters.num3))), -((parameters.num2)+(parameters.level*(parameters.num3))), 255)
end

function onSay(cid, var)

if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
element = POISONDAMAGE
num1 = 300 --- 1 dano
num2 = 400 --- 2 dano
num3 = 2   --- bonus

	local parameters = { cid = cid, element = element, level = level, num1 = num1, num2 = num2, num3 = num3, num4 =num4, var = numberToVariant(getCreatureTarget(cid)), combat1 = combat1, }
    addEvent(onCastSpell1, 0, parameters)    
	return true
end

local master = getCreatureMaster(cid)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

if getCreatureStorage(master, 20078) == 1 or isInArray(tShiny, b) then
level = getDamagePoke(cid, TRUE)
element = POISONDAMAGE
num1 = 600 --- 1 dano
num2 = 800 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
else
level = getDamagePoke(cid, FALSE)
element = POISONDAMAGE
num1 = 300 --- 1 dano
num2 = 400 --- 2 dano
num3 = 2   --- bonus
end
    local parameters = { cid = cid, element = element, level = level, num1 = num1, num2 = num2, num3 = num3, num4 =num4, var = numberToVariant(getCreatureTarget(cid)), combat1 = combat1, }
    addEvent(onCastSpell1, 0, parameters) 
	return true
end