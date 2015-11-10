local combat, areadano, effect, area, dir = {}, {}, {42, 42, 42, 42, 42, 42, 42, 42}, {
{ {2}, {1} }, { {2}, {0}, {1}, {1} },
{ {1, 2} }, { {1, 1, 1, 0, 2} },
{ {1}, {2} }, { {1}, {1}, {0}, {2} },
{ {2, 1} }, { {2, 0, 1, 1, 1} },
},
{ [0] = {1, 2}, [1] = {3, 4}, [2] = {5, 6}, [3] = {7, 8} }
for i = 1, 8 do
	table.insert(combat, createCombatObject())
	table.insert(areadano, createCombatArea(area[i]))
	setCombatParam(combat[i], COMBAT_PARAM_TYPE, ICEDAMAGE)
	setCombatParam(combat[i], COMBAT_PARAM_EFFECT, effect[i])
	setCombatArea(combat[i], createCombatArea(area[i]))
end

function onSay(cid, var)
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
element = FLYDAMAGE
num1 = 75 --- 1 dano
num2 = 100 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
local d = getCreatureLookDirection(cid)
	for i = dir[d][1], dir[d][2] do 
	doCombat(cid, combat[i], numberToVariant(cid))
	doAreaCombatHealth(cid, FLYDAMAGE, getCreaturePosition(cid), areadano[i],  -((num1)+(level*(num3))), -((num2)+(level*(num3))), 255) 
	end
	return true
end

local master = getCreatureMaster(cid)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

if getCreatureStorage(master, 20078) == 1 or isInArray(tShiny, b) then
level = getDamagePoke(cid, TRUE)
element = FLYDAMAGE
num1 = 100 --- 1 dano
num2 = 200 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
else
level = getDamagePoke(cid, FALSE)
element = FLYDAMAGE
num1 = 75 --- 1 dano
num2 = 100 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
end

local d = getCreatureLookDirection(cid)
	for i = dir[d][1], dir[d][2] do 
	doCombat(cid, combat[i], numberToVariant(cid))
	doAreaCombatHealth(cid, FLYDAMAGE, getCreaturePosition(cid), areadano[i],  -((num1)+(level*(num3))), -((num2)+(level*(num3))), 255) 
	end
return TRUE
end