local acombat1 = createCombatObject()
local acombat4 = createCombatObject()

local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 134)
 

local combat4 = createCombatObject()
setCombatParam(combat4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat4, COMBAT_PARAM_EFFECT, 136)

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
 
arr4 = {
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
local area4 = createCombatArea(arr4)
setCombatArea(acombat1, area1)
setCombatArea(acombat4, area4)

function onTargetTile(cid, pos)
    doCombat(cid,combat1,positionToVariant(pos))
end

function onTargetTile2(cid, pos)
    doCombat(cid,combat4,positionToVariant(pos))
end

setCombatCallback(acombat1, CALLBACK_PARAM_TARGETTILE, "onTargetTile")

setCombatCallback(acombat4, CALLBACK_PARAM_TARGETTILE, "onTargetTile2")

local function onCastSpell1(parameters)
    doCombat(parameters.cid, acombat1, parameters.var)
	doAreaCombatHealth(parameters.cid, PSYCHICDAMAGE, getCreaturePosition(parameters.cid), area1,  -((parameters.num1)+(parameters.level*(parameters.num3))), -((parameters.num2)+(parameters.level*(parameters.num3))), 255)
end
 
local function onCastSpell4(parameters)
    doCombat(parameters.cid, acombat4, parameters.var)
	doAreaCombatHealth(parameters.cid, PSYCHICDAMAGE, getCreaturePosition(parameters.cid), area4,  -((parameters.num1)+(parameters.level*(parameters.num3))), -((parameters.num2)+(parameters.level*(parameters.num3))), 255)
end
 
function onSay(cid)
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
element = PSYCHICDAMAGE
num1 = 1000 --- 1 dano
num2 = 1300 --- 2 dano
num3 = 2   --- bonus
num4 = 255 --- last
local parameters = { cid = cid, level = level, num1 = num1, num2 = num2, num3 = num3, num4 =num4, element = element, var = numberToVariant(cid)}
addEvent(onCastSpell1, 100, parameters)
addEvent(onCastSpell4, 400, parameters)
return true
end

local master = getCreatureMaster(cid)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

if getCreatureStorage(master, 20078) == 1 or isInArray(tShiny, b) then
level = getDamagePoke(cid, TRUE)
element = POISONDAMAGE
num1 = 1200 --- 1 dano
num2 = 1400 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
else
level = getDamagePoke(cid, FALSE)
element = PSYCHICDAMAGE
num1 = 1000 --- 1 dano
num2 = 1300 --- 2 dano
num3 = 2   --- bonus
num4 = 255 --- last
end
local parameters = { cid = cid, level = level, num1 = num1, num2 = num2, num3 = num3, num4 =num4, element = element, var = numberToVariant(cid)}
addEvent(onCastSpell1, 100, parameters)
addEvent(onCastSpell4, 400, parameters)

end