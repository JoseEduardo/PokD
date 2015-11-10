local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE,COMBAT_POISONDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT,114)

arr = {
{1, 0, 0, 0, 0, 1, 1, 0, 0, 1, 1},
{1, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0},
{0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0},
{1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0},
{1, 1, 0, 0, 1, 1, 0, 0, 0, 1, 1},
{0, 1, 1, 1, 0, 2, 1, 1, 1, 1, 1},
{0, 1, 1, 1, 0, 0, 1, 1, 1, 0, 0},
{1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0},
{1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0},
{0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1},
{0, 1, 1, 0, 0, 1, 1, 0, 0, 1, 1},
}

local area = createCombatArea(arr)
setCombatArea(combat, area)

function onSay(cid)
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
element = POISONDAMAGE
num1 = 400 --- 1 dano
num2 = 600 --- 2 dano
num3 = 4   --- bonus
num4 = 255 --- last
    return doCombat(cid, combat, numberToVariant(cid)) and
	doAreaCombatHealth(cid, POISONDAMAGE, getCreaturePosition(cid), area, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
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
num1 = 400 --- 1 dano
num2 = 600 --- 2 dano
num3 = 4   --- bonus
num4 = 255 --- last
end
    return doCombat(cid, combat, numberToVariant(cid)) and
	doAreaCombatHealth(cid, POISONDAMAGE, getCreaturePosition(cid), area, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end