local acombat1 = createCombatObject()
local acombat3 = createCombatObject()
local acombat2 = createCombatObject()

local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 15)

 
local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 15)


local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 15)


arr1 = {
{1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1},
{0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0},
{0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{1, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0},
{0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0},
{1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1}
}

arr3 = {
{0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
{1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
{1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1},
{0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0},
{1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1},
{1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 0, 1, 1, 1, 0, 0}
}
 
arr2 = {
{0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0},
{1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1},
{0, 1, 0, 1, 1, 0, 1, 1, 0, 1, 0},
{0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0},
{0, 1, 0, 1, 1, 0, 1, 1, 0, 1, 0},
{1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1},
{0, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0}
}
 
local area1 = createCombatArea(arr1)
local area3 = createCombatArea(arr3)
local area2 = createCombatArea(arr2)
setCombatArea(acombat1, area1)
setCombatArea(acombat3, area3)
setCombatArea(acombat2, area2)

function onTargetTile(cid, pos)
    doCombat(cid,combat1,positionToVariant(pos))
end

function onTargetTile3(cid, pos)
    doCombat(cid,combat3,positionToVariant(pos))
end

function onTargetTile2(cid, pos)
    doCombat(cid,combat2,positionToVariant(pos))
end

setCombatCallback(acombat1, CALLBACK_PARAM_TARGETTILE, "onTargetTile")

setCombatCallback(acombat3, CALLBACK_PARAM_TARGETTILE, "onTargetTile3")

setCombatCallback(acombat2, CALLBACK_PARAM_TARGETTILE, "onTargetTile2")

local function onCastSpell1(parameters)
    doCombat(parameters.cid, acombat1, parameters.var)
	doAreaCombatHealth(parameters.cid, FIREDAMAGE, getCreaturePosition(parameters.cid), area1,  -((parameters.num1)+(parameters.level*(parameters.num3))), -((parameters.num2)+(parameters.level*(parameters.num3))), 255)
end
 
local function onCastSpell3(parameters)
    doCombat(parameters.cid, acombat3, parameters.var)
	doAreaCombatHealth(parameters.cid, FIREDAMAGE, getCreaturePosition(parameters.cid), area3,  -((parameters.num1)+(parameters.level*(parameters.num3))), -((parameters.num2)+(parameters.level*(parameters.num3))), 255)
end

local function onCastSpell2(parameters)
    doCombat(parameters.cid, acombat2, parameters.var)
	doAreaCombatHealth(parameters.cid, FIREDAMAGE, getCreaturePosition(parameters.cid), area2,  -((parameters.num1)+(parameters.level*(parameters.num3))), -((parameters.num2)+(parameters.level*(parameters.num3))), 255)
end
 
function onSay(cid)
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
num1 = 800 --- 1 dano
num2 = 1000 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last

local parameters = { cid = cid, level = level, num1 = num1, num2 = num2, num3 = num3, num4 =num4, element = element, var = numberToVariant(cid)}
addEvent(onCastSpell1, 100, parameters)
addEvent(onCastSpell3, 500, parameters)
addEvent(onCastSpell2, 900, parameters)
return true
end

local master = getCreatureMaster(cid)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

if getCreatureStorage(master, 20078) == 1 or isInArray(tShiny, b) then
level = getDamagePoke(cid, TRUE)
num1 = 1000 --- 1 dano
num2 = 1200 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
else
level = getDamagePoke(cid, FALSE)
num1 = 800 --- 1 dano
num2 = 1000 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
end
local parameters = { cid = cid, level = level, num1 = num1, num2 = num2, num3 = num3, num4 =num4, element = element, var = numberToVariant(cid)}
addEvent(onCastSpell1, 100, parameters)
addEvent(onCastSpell3, 500, parameters)
addEvent(onCastSpell2, 900, parameters)

end