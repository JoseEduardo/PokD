local acombat1 = createCombatObject()

local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 42)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 22)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -0.3, 0, -0.4, 0) 

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
{1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1},
}
 
local area1 = createCombatArea(arr1)
setCombatArea(acombat1, area1)

function onTargetTile(cid, pos)
    doCombat(cid,combat1,positionToVariant(pos))
end


setCombatCallback(acombat1, CALLBACK_PARAM_TARGETTILE, "onTargetTile")


local function onCastSpell1(parameters)
    doCombat(parameters.cid, acombat1, parameters.var)
doAreaCombatHealth(parameters.cid, FLYDAMAGE, getCreaturePosition(parameters.cid), area1,  -((parameters.num1)+(parameters.level*(parameters.num3))), -((parameters.num2)+(parameters.level*(parameters.num3))), 255)
end
 
 
function onSay(cid)
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
num1 = 1200 --- 1 dano
num2 = 1800 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last

local parameters = { cid = cid, num1 = num1, num2 = num2, level = level, num3 = num3, num4 =num4, var = numberToVariant(cid)}
addEvent(onCastSpell1, 100, parameters)

return true
end

local master = getCreatureMaster(cid)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

if getCreatureStorage(master, 20078) == 1 or isInArray(tShiny, b) then
level = getDamagePoke(cid, TRUE)
element = POISONDAMAGE
num1 = 1200 --- 1 dano
num2 = 1800 --- 2 dano
num3 = 4   --- bonus
num4 = 255 --- last
else
level = getDamagePoke(cid, FALSE)
num1 = 1200 --- 1 dano
num2 = 1800 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
end

local parameters = { cid = cid, num1 = num1, num2 = num2, level = level, num3 = num3, num4 =num4, var = numberToVariant(cid)}
addEvent(onCastSpell1, 100, parameters)
end