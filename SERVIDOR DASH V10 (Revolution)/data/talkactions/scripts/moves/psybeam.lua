local combat, areadano, effect, area, dir = {}, {}, {108, 109, 108, 106, 107, 106, 108, 109, 108, 107, 106, 107}, {
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
num1 = 400 --- 1 dano
num2 = 300 --- 2 dano
num3 = 5   --- bonus
num4 = 255 ---last
	local d = getCreatureLookDirection(cid)
	for i = dir[d][1], dir[d][2] do 
	doCombat(cid, combat[i], numberToVariant(cid)) 
    doAreaCombatHealth(cid, PSYCHICDAMAGE, getCreaturePosition(cid), areadano[i],  -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4) 
	end
return true
end

local master = getCreatureMaster(cid)
if getCreatureStorage(master, 20098) == 1 or isInArray(tShiny, b) then
level = getDamagePoke(cid, TRUE)
num1 = 800 --- 1 dano
num2 = 600 --- 2 dano
num3 = 2   --- bonus
num4 = 255 --- last
setPlayerStorageValue(master, 20098, 0)
else
level = getDamagePoke(cid, FALSE)
num1 = 400 --- 1 dano
num2 = 300 --- 2 dano
num3 = 5   --- bonus
num4 = 255 ---last
end

	local d = getCreatureLookDirection(cid)
	for i = dir[d][1], dir[d][2] do 
	doCombat(cid, combat[i], numberToVariant(cid)) 
    doAreaCombatHealth(cid, PSYCHICDAMAGE, getCreaturePosition(cid), areadano[i],  -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4) 

	end
	return true
end