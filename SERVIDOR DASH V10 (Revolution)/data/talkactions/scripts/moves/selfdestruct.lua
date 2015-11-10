local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, NORMALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 6)


arr = {
	{0, 0, 1, 1, 1, 0, 0},
	{0, 1, 1, 1, 1, 1, 0},
	{1, 1, 1, 1, 1, 1, 1},
	{1, 1, 1, 3, 1, 1, 1},
	{1, 1, 1, 1, 1, 1, 1},
	{0, 1, 1, 1, 1, 1, 0},
	{0, 0, 1, 1, 1, 0, 0}
}
local area = createCombatArea(arr)
setCombatArea(combat, area)

function onSay(cid)
level = getDamagePoke(cid, FALSE)
num1 = 10500 --- 1 dano
num2 = 10800 --- 2 dano
num3 = 300   --- bonus
num4 = 255 --- last

    doCreatureAddHealth(cid, -150000)
	return doCombat(cid, combat, numberToVariant(cid)) and
	doAreaCombatHealth(cid, NORMALDAMAGE, getCreaturePosition(cid), area,  -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end