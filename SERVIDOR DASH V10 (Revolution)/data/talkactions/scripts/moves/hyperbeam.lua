local combat, areadano, effect, area, dir = {}, {}, {152, 158, 156, 149, 157, 153, 151, 158, 155, 150, 157, 154}, {
{ {2}, {1} }, { {2}, {0}, {1}, {1} }, { {2}, {0}, {0}, {0}, {1} },
{ {1, 2} }, { {1, 1, 1, 0, 2} }, { {1, 0, 0, 0, 0, 2} },
{ {1}, {2} }, { {1}, {1}, {0}, {2} }, { {1}, {0}, {0}, {0}, {2} },
{ {2, 1} }, { {2, 0, 1, 1, 1} }, { {2, 0, 0, 0, 0, 1} }
},
{ [0] = {1, 3}, [1] = {4, 6}, [2] = {7, 9}, [3] = {10, 12} }
for i = 1, 12 do
	table.insert(combat, createCombatObject())
	table.insert(areadano, createCombatArea(area[i]))
	setCombatParam(combat[i], COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
	setCombatParam(combat[i], COMBAT_PARAM_EFFECT, effect[i])
	setCombatArea(combat[i], createCombatArea(area[i]))
end
function onSay(cid)
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
element = NORMALDAMAGE
num1 = 1000 --- 1 dano
num2 = 1800 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
	local d = getCreatureLookDirection(cid)
	for i = dir[d][1], dir[d][2] do 
	doCombat(cid, combat[i], numberToVariant(cid)) 
	doAreaCombatHealth(cid, element, getCreaturePosition(cid), areadano[i], -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
	end
	return true
end

local master = getCreatureMaster(cid)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

if getCreatureStorage(master, 20078) == 1 or isInArray(tShiny, b) then
level = getDamagePoke(cid, TRUE)
element = NORMALDAMAGE
num1 = 1200 --- 1 dano
num2 = 2000 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
else
level = getDamagePoke(cid, FALSE)
element = NORMALDAMAGE
num1 = 1000 --- 1 dano
num2 = 1800 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
end

	local d = getCreatureLookDirection(cid)
	for i = dir[d][1], dir[d][2] do 
	doCombat(cid, combat[i], numberToVariant(cid)) 
	doAreaCombatHealth(cid, element, getCreaturePosition(cid), areadano[i], -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
	end
	return true
end