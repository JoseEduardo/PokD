local combat, areadano, dir, area = {}, {}, {[0] = {1}, [1] = {2}, [2] = {3}, [3] = {4}}, {
{{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0}},

{{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0},
{1, 1, 1, 1, 1, 2, 0, 0, 0, 0, 0},
{1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}},

{{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}},

{{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1},
{0, 0, 0, 0, 0, 2, 1, 1, 1, 1, 1},
{0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}},
}

	for i = 1, 4 do
		table.insert(combat, createCombatObject())
		table.insert(areadano, createCombatArea(area[i]))
		setCombatParam(combat[i], COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
		setCombatParam(combat[i], COMBAT_PARAM_EFFECT,1)
		setCombatArea(combat[i], createCombatArea(area[i]))
		end
function onSay(cid)
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
num1 = 700 --- 1 dano
num2 = 900 --- 2 dano
num3 = 4   --- bonus
num4 = 255 --- last

		local d = getCreatureLookDirection(cid)
		doCombat(cid, combat[dir[d][1]], numberToVariant(cid)) 
		doAreaCombatHealth(cid, WATERDAMAGE, getCreaturePosition(cid), areadano[dir[d][1]],  -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
return true
end

local master = getCreatureMaster(cid)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

if getCreatureStorage(master, 20078) == 1 or isInArray(tShiny, b) then
level = getDamagePoke(cid, TRUE)
num1 = 700 --- 1 dano
num2 = 900 --- 2 dano
num3 = 5   --- bonus
num4 = 255 --- last
else
level = getDamagePoke(cid, FALSE)
num1 = 700 --- 1 dano
num2 = 900 --- 2 dano
num3 = 4   --- bonus
num4 = 255 --- last
end

		local d = getCreatureLookDirection(cid)
		doCombat(cid, combat[dir[d][1]], numberToVariant(cid)) 
		doAreaCombatHealth(cid, WATERDAMAGE, getCreaturePosition(cid), areadano[dir[d][1]],  -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
	return true
end