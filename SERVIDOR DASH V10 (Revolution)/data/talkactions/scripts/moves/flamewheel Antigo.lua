local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 6)

local area = createCombatArea(arr)
arr = {
	{0, 1, 1, 1, 0},
	{1, 1, 1, 1, 1},
	{1, 1, 3, 1, 1},
	{1, 1, 1, 1, 1},
	{0, 1, 1, 1, 0}
}
setCombatArea(combat, area)

function onSay(cid)
level = getPlayerLevel(getCreatureMaster(cid))
element = COMBAT_FIREDAMAGE
num1 = 900 --- 1 dano
num2 = 1500 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last

    return doCombat(cid, combat, numberToVariant(cid)) and
	doAreaCombatHealth(cid, COMBAT_PHYSICALDAMAGE, getCreaturePosition(cid), area, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end