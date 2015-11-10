local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, ELECTRICDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 11)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 34)


area = {
{1, 0, 1, 0, 1},
{0, 1, 1, 1, 0},
{1, 1, 3, 1, 1},
{0, 1, 1, 1, 0},
{1, 0, 1, 0, 1}
}

local arean = createCombatArea(area)
setCombatArea(combat, arean)

function onSay(cid)
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
num1 = 1500 --- 1 dano
num2 = 1800 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
	return doCombat(cid, combat, numberToVariant(cid)) and
	doAreaCombatHealth(cid, ELECTRICDAMAGE, getCreaturePosition(cid), area,  -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end

local master = getCreatureMaster(cid)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

if getCreatureStorage(master, 20078) == 1 or isInArray(tShiny, b) then
level = getDamagePoke(cid, TRUE)
num1 = 1500 --- 1 dano
num2 = 1800 --- 2 dano
num3 = 4   --- bonus
num4 = 255 --- last
else
level = getDamagePoke(cid, FALSE)
num1 = 1500 --- 1 dano
num2 = 1800 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
end
	return doCombat(cid, combat, numberToVariant(cid)) and
	doAreaCombatHealth(cid, ELECTRICDAMAGE, getCreaturePosition(cid), area,  -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end