local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 5)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -6.0, 0, -5.3, 0)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 5)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -6.0, 0, -4.3, 0)

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 5)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, -6.0, 0, -4.3, 0)

arr1 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 2, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

arr2 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 1, 0, 2, 0, 1, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

arr3 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0},
{0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0},
{0, 1, 1, 0, 0, 2, 0, 0, 1, 1, 0},
{0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0},
{0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local area1 = createCombatArea(arr1)
local area2 = createCombatArea(arr2)
local area3 = createCombatArea(arr3)
setCombatArea(combat1, area1)
setCombatArea(combat2, area2)
setCombatArea(combat3, area3)

local function onCastSpell1(parameters)
doCombat(parameters.cid, combat1, parameters.var)
	doAreaCombatHealth(parameters.cid, COMBAT_FIREDAMAGE, getCreaturePosition(parameters.cid), area1,   -((parameters.num1)+(parameters.level*(parameters.num3))), -((parameters.num2)+(parameters.level*(parameters.num3))), 255)
end

local function onCastSpell2(parameters)
doCombat(parameters.cid, combat2, parameters.var)
	doAreaCombatHealth(parameters.cid, COMBAT_FIREDAMAGE, getCreaturePosition(parameters.cid), area2,  -((parameters.num1)+(parameters.level*(parameters.num3))), -((parameters.num2)+(parameters.level*(parameters.num3))), 255)
end
local function onCastSpell3(parameters)
doCombat(parameters.cid, combat3, parameters.var)
	doAreaCombatHealth(parameters.cid, COMBAT_FIREDAMAGE, getCreaturePosition(parameters.cid), area3,   -((parameters.num1)+(parameters.level*(parameters.num3))), -((parameters.num2)+(parameters.level*(parameters.num3))), 255)
end

function onSay(cid)
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
element = COMBAT_FIREDAMAGE
num1 = 900 --- 1 dano
num2 = 1500 --- 2 dano
num3 = 7   --- bonus
num4 = 255 --- last

local parameters = { cid = cid, level = level, num1 = num1, num2 = num2, num3 = num3, num4 =num4, var = numberToVariant(cid)}
addEvent(onCastSpell1, 100, parameters)
addEvent(onCastSpell2, 600, parameters)
addEvent(onCastSpell3, 1200, parameters)

return true
end

level = getDamagePoke(cid, FALSE)
element = COMBAT_FIREDAMAGE
num1 = 900 --- 1 dano
num2 = 1500 --- 2 dano
num3 = 7   --- bonus
num4 = 255 --- last

local parameters = { cid = cid, level = level, num1 = num1, num2 = num2, num3 = num3, num4 =num4, var = numberToVariant(cid)}
addEvent(onCastSpell1, 100, parameters)
addEvent(onCastSpell2, 600, parameters)
addEvent(onCastSpell3, 1200, parameters)

return TRUE
end