local combat, areadano, dir, area = {}, {}, {[0] = {1}, [1] = {2}, [2] = {3}, [3] = {4}}, {
{{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}},

{{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}},

{{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
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
{0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}},
}

	for i = 1, 4 do
		table.insert(combat, createCombatObject())
		table.insert(areadano, createCombatArea(area[i]))
		setCombatParam(combat[i], COMBAT_PARAM_TYPE, FIGHTINGDAMAGE)
		setCombatParam(combat[i], COMBAT_PARAM_EFFECT, 59)
		setCombatArea(combat[i], createCombatArea(area[i]))
		end

function closee(parameters)
if #getCreatureSummons(parameters.master) <= 0 then
return true
end
if parameters.b == ("Elite Hitmonlee") then
local outfit = {lookType = 526, lookHead = 88, lookBody = 114, lookLegs = 114, lookFeet = 88, lookAddons = 3}
doCreatureChangeOutfit(parameters.cid, outfit)
else
local outfit = {lookType = 20, lookHead = 88, lookBody = 114, lookLegs = 114, lookFeet = 88, lookAddons = 3}
doCreatureChangeOutfit(parameters.cid, outfit)
end
end

function onSay(cid)
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
element = FIGHTINGDAMAGE
num1 = 800 --- 1 dano
num2 = 500 --- 2 dano
num3 = 2   --- bonus
num4 = 255 --- last
local outfit = {lookType = 301, lookHead = 88, lookBody = 114, lookLegs = 114, lookFeet = 88, lookAddons = 3}
doCreatureChangeOutfit(cid, outfit)
		local d = getCreatureLookDirection(cid)
		doCombat(cid, combat[dir[d][1]], numberToVariant(cid)) 
		doAreaCombatHealth(cid, element, getCreaturePosition(cid), areadano[dir[d][1]], -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4) 
	return true
end

local master = getCreatureMaster(cid)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

parameters = {cid=cid, b = b, master = master}
addEvent(closee, 1000, parameters)

if b == ("Elite Hitmonlee") then
level = getDamagePoke(cid, TRUE)
element= FIGHTINGDAMAGE
num1 = 900 --- 1 dano
num2 = 700 --- 2 dano
num3 = 2   --- bonus
num4 = 255 --- last
local outfit = {lookType = 527, lookHead = 88, lookBody = 114, lookLegs = 114, lookFeet = 88, lookAddons = 3}
doCreatureChangeOutfit(cid, outfit)
else
level = getDamagePoke(cid, FALSE)
element = FIGHTINGDAMAGE
num1 = 800 --- 1 dano
num2 = 500 --- 2 dano
num3 = 2   --- bonus
num4 = 255 --- last
local outfit = {lookType = 301, lookHead = 88, lookBody = 114, lookLegs = 114, lookFeet = 88, lookAddons = 3}
doCreatureChangeOutfit(cid, outfit)
end

		local d = getCreatureLookDirection(cid)
		doCombat(cid, combat[dir[d][1]], numberToVariant(cid)) 
		doAreaCombatHealth(cid, element, getCreaturePosition(cid), areadano[dir[d][1]], -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4) 
	return true
end