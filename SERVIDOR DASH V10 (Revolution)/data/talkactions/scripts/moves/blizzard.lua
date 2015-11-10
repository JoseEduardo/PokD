local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, ICEDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 247)

arr = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
{1, 1, 1, 1, 1, 3, 1, 1, 1, 1, 1},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local area = createCombatArea(arr)
setCombatArea(combat, area)

function onSay(cid)
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE) 
element = ICEDAMAGE
num1 = 1100 --- 1 dano
num2 = 1600 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
    return doCombat(cid, combat, numberToVariant(cid)) and
	doAreaCombatHealth(cid, element, getCreaturePosition(cid), area, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end

local master = getCreatureMaster(cid)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

if getCreatureStorage(master, 20078) == 1 or isInArray(tShiny, b) then
level = getDamagePoke(cid, TRUE)
element = ICEDAMAGE
num1 = 1300 --- 1 dano
num2 = 1700 --- 2 dano
num3 = 4   --- bonus
num4 = 255 --- last
else
level = getDamagePoke(cid, FALSE)
element = ICEDAMAGE
num1 = 1100 --- 1 dano
num2 = 1600 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
end
    return doCombat(cid, combat, numberToVariant(cid)) and
	doAreaCombatHealth(cid, element, getCreaturePosition(cid), area, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end