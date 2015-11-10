local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 115)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -6.0, 0, -5.3, 0)

local combat2 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 115)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -6.0, 0, -5.3, 0)

local combat3 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 115)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -6.0, 0, -5.3, 0)

local combat4 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 115)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -6.0, 0, -5.3, 0)

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
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 2, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

arr3 = {
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

arr4 = {
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

local area1 = createCombatArea(arr1)
local area2 = createCombatArea(arr2)
local area3 = createCombatArea(arr3)
local area4 = createCombatArea(arr4)
setCombatArea(combat1, area1)
setCombatArea(combat2, area2)
setCombatArea(combat3, area3)
setCombatArea(combat4, area4)

local function onCastSpell1(parameters)
doCombat(parameters.cid, combat1, parameters.var)
doAreaCombatHealth(parameters.cid, FLYDAMAGE, getCreaturePosition(parameters.cid), area1,  -((parameters.num1)+(parameters.level*(parameters.num3))), -((parameters.num2)+(parameters.level*(parameters.num3))), 255)
end

local function onCastSpell2(parameters)
doCombat(parameters.cid, combat2, parameters.var)
doAreaCombatHealth(parameters.cid, FLYDAMAGE, getCreaturePosition(parameters.cid), area2,  -((parameters.num1)+(parameters.level*(parameters.num3))), -((parameters.num2)+(parameters.level*(parameters.num3))), 255)
end

local function onCastSpell3(parameters)
doCombat(parameters.cid, combat3, parameters.var)
doAreaCombatHealth(parameters.cid, FLYDAMAGE, getCreaturePosition(parameters.cid), area3,  -((parameters.num1)+(parameters.level*(parameters.num3))), -((parameters.num2)+(parameters.level*(parameters.num3))), 255)
end

local function onCastSpell4(parameters)
doCombat(parameters.cid, combat4, parameters.var)
doAreaCombatHealth(parameters.cid, FLYDAMAGE, getCreaturePosition(parameters.cid), area4,  -((parameters.num1)+(parameters.level*(parameters.num3))), -((parameters.num2)+(parameters.level*(parameters.num3))), 255)
end

function onSay(cid)
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
num1 = 100 --- 1 dano
num2 = 150 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last

local parameters = { cid = cid, level = level, num1 = num1, num2 = num2, num3 = num3, num4 =num4, var = numberToVariant(cid)}
addEvent(onCastSpell1, 100, parameters)
addEvent(onCastSpell2, 350, parameters)
addEvent(onCastSpell3, 700, parameters)
addEvent(onCastSpell4, 1050, parameters)
return true
end

local master = getCreatureMaster(cid)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

if getCreatureStorage(master, 20078) == 1 or isInArray(tShiny, b) then
level = getDamagePoke(cid, TRUE)
num1 = 200 --- 1 dano
num2 = 300 --- 2 dano
num3 = 4   --- bonus
num4 = 255 --- last
else
level = getDamagePoke(cid, FALSE)
num1 = 100 --- 1 dano
num2 = 150 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
end

local parameters = { cid = cid, level = level, num1 = num1, num2 = num2, num3 = num3, num4 =num4, var = numberToVariant(cid)}
addEvent(onCastSpell1, 100, parameters)
addEvent(onCastSpell2, 350, parameters)
addEvent(onCastSpell3, 700, parameters)
addEvent(onCastSpell4, 1050, parameters)

return TRUE
end