local combat, areadano, effect, area, dir = {}, {}, {109, 109, 106, 106, 108, 108, 107, 107}, {
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
 
function onSay(cid)
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
num1 = 1100 --- 1 dano
num2 = 1500 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
else
 local master = getCreatureMaster(cid)
 local a = getPlayerSlotItem(master, 8)
 local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

  if getCreatureStorage(master, 20078) == 1 or isInArray(tShiny, b) then
   level = getDamagePoke(cid, TRUE)
   num1 = 1100 --- 1 dano
   num2 = 1500 --- 2 dano
   num3 = 3   --- bonus
   num4 = 255 --- last
  else
   level = getDamagePoke(cid, FALSE)
   num1 = 900 --- 1 dano
   num2 = 1100 --- 2 dano
   num3 = 3   --- bonus
   num4 = 255 --- last
  end
end

local d = getCreatureLookDirection(cid)
	for i = dir[d][1], dir[d][2] do 
	doCombat(cid, combat[i], numberToVariant(cid))
	doAreaCombatHealth(cid, ICEDAMAGE, getCreaturePosition(cid), areadano[i],  -((num1)+(level*(num3))), -((num2)+(level*(num3))), 255) 
	end
	return true

end