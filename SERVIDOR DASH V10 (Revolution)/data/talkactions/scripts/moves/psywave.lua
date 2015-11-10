local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, PSYCHICDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 134)

arr =  {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0},
{0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0},
{0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0},
{0, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0},
{0, 1, 1, 1, 1, 2, 1, 1, 1, 1, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
{0, 1, 1, 0, 0, 1, 0, 0, 1, 1, 0},
{0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local area = createCombatArea(arr)
setCombatArea(combat, area)
function onSay(cid)
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
element = PSYCHICDAMAGE
num1 = 500 --- 1 dano
num2 = 600 --- 2 dano
num3 = 4   --- bonus
num4 = 255 --- last

	return doCombat(cid, combat, numberToVariant(cid)) and
	doAreaCombatHealth(cid, element, getCreaturePosition(cid), area,  -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end

local master = getCreatureMaster(cid)
if getCreatureStorage(master, 20098) == 1 or isInArray(tShiny, b) then
level = getDamagePoke(cid, TRUE)
element = PSYCHICDAMAGE
num1 = 1000 --- 1 dano
num2 = 1200 --- 2 dano
num3 = 1   --- bonus
num4 = 255 --- last
setPlayerStorageValue(master, 20098, 0)
else
level = getDamagePoke(cid, FALSE)
element = PSYCHICDAMAGE
num1 = 500 --- 1 dano
num2 = 600 --- 2 dano
num3 = 4   --- bonus
num4 = 255 --- last
end
	return doCombat(cid, combat, numberToVariant(cid)) and
	doAreaCombatHealth(cid, element, getCreaturePosition(cid), area,  -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end