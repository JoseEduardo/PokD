local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 15)

local area = createCombatArea(arr)
arr = {
	{0, 1, 1, 1, 0},
	{1, 1, 1, 1, 1},
	{1, 1, 2, 1, 1},
	{1, 1, 1, 1, 1},
	{0, 1, 1, 1, 0}
}
setCombatArea(combat, area)

function onSay(cid)
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
element = FIREDAMAGE
num1 = 900 --- 1 dano
num2 = 1500 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
    return doCombat(cid, combat, numberToVariant(cid)) and
	doAreaCombatHealth(cid, FIREDAMAGE, getCreaturePosition(cid), area, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end

local master = getCreatureMaster(cid)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

if getCreatureStorage(master, 20078) == 1 or isInArray(tShiny, b) then
level = getDamagePoke(cid, TRUE)
element = FIREDAMAGE
num1 = 1000 --- 1 dano
num2 = 1300 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
else
level = getDamagePoke(cid, FALSE)
element = FIREDAMAGE
num1 = 900 --- 1 dano
num2 = 1500 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
end
    return doCombat(cid, combat, numberToVariant(cid)) and
	doAreaCombatHealth(cid, FIREDAMAGE, getCreaturePosition(cid), area, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end