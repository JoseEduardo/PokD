local combat, areadano, effect, dir, area = {}, {}, {33, 51, 30, 49}, {[0] = {1}, [1] = {2}, [2] = {3}, [3] = {4}}, {
{{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}},

{{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}},

{{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
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
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}},
}
local combat2, areadano2, effect2, dir2, area2 = {}, {}, {33, 51, 30, 49}, {[0] = {1}, [1] = {2}, [2] = {3}, [3] = {4}}, {
{{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}},

{{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}},

{{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
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
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}},
}

local combat3, areadano3, effect3, dir3, area3 = {}, {}, {33, 51, 30, 49}, {[0] = {1}, [1] = {2}, [2] = {3}, [3] = {4}}, {
{{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}},

{{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}},

{{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
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
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 2, 0, 0, 1, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}},
}

	for i = 1, 4 do
    local condition = createConditionObject(CONDITION_DRUNK)
		table.insert(combat, createCombatObject())
		table.insert(areadano, createCombatArea(area[i]))
		setCombatParam(combat[i], COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
		setCombatParam(combat[i], COMBAT_PARAM_EFFECT,effect[i] )
        setCombatParam(combat[i], COMBAT_PARAM_AGGRESSIVE, true)
		setCombatArea(combat[i], createCombatArea(area[i]))
        setConditionParam(condition, CONDITION_PARAM_TICKS, 10000)
        setCombatCondition(combat[i], condition)		

    local condition2 = createConditionObject(CONDITION_DRUNK)
		table.insert(combat2, createCombatObject())
		table.insert(areadano2, createCombatArea(area2[i]))
		setCombatParam(combat2[i], COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
		setCombatParam(combat2[i], COMBAT_PARAM_EFFECT,effect2[i] )
        setCombatParam(combat2[i], COMBAT_PARAM_AGGRESSIVE, true)
		setCombatArea(combat2[i], createCombatArea(area2[i]))
        setConditionParam(condition2, CONDITION_PARAM_TICKS, 10000)
        setCombatCondition(combat2[i], condition2)

    local condition3 = createConditionObject(CONDITION_DRUNK)
		table.insert(combat3, createCombatObject())
		table.insert(areadano3, createCombatArea(area3[i]))
		setCombatParam(combat3[i], COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
		setCombatParam(combat3[i], COMBAT_PARAM_EFFECT,effect3[i] )
        setCombatParam(combat3[i], COMBAT_PARAM_AGGRESSIVE, true)
		setCombatArea(combat3[i], createCombatArea(area3[i]))
        setConditionParam(condition3, CONDITION_PARAM_TICKS, 10000)
        setCombatCondition(combat3[i], condition3)

	end
function closee1(parameters)
		local d = getCreatureLookDirection(parameters.cid)
		doCombat(parameters.cid, parameters.combat2[parameters.dir2[d][1]], numberToVariant(parameters.cid)) 
		doAreaCombatHealth(parameters.cid, DRAGONDAMAGE, getCreaturePosition(parameters.cid), parameters.areadano2[parameters.dir2[d][1]], -((parameters.num1)+(parameters.level*(parameters.num3))), -((parameters.num2)+(parameters.level*(parameters.num3))), parameters.num4)
end

function closee2(parameters2)
		local d = getCreatureLookDirection(parameters.cid)
		doCombat(parameters.cid, parameters.combat2[parameters.dir2[d][1]], numberToVariant(parameters.cid)) 
		doAreaCombatHealth(parameters.cid, DRAGONDAMAGE, getCreaturePosition(parameters.cid), parameters.areadano2[parameters.dir2[d][1]], -((parameters.num1)+(parameters.level*(parameters.num3))), -((parameters.num2)+(parameters.level*(parameters.num3))), parameters.num4)
end

function onSay(cid)
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
element = DRAGONDAMAGE
num1 = 250 --- 1 dano
num2 = 400 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
parameters = {cid=cid, combat2 = combat2, dir2 = dir2, areadano2 = areadano2, level = level, num1 = num1, num2 = num2, num3 = num3, num4 = num4}
addEvent(closee1, 200, parameters)
parameters2 = {cid=cid, combat2 = combat3, dir2 = dir3, areadano2 = areadano2, level = level, num1 = num1, num2 = num2, num3 = num3, num4 = num4}
addEvent(closee2, 300, parameters2)
		local d = getCreatureLookDirection(cid)
		doCombat(cid, combat[dir[d][1]], numberToVariant(cid)) 
		doAreaCombatHealth(cid, DRAGONDAMAGE, getCreaturePosition(cid), areadano[dir[d][1]], -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
	return true
end

local master = getCreatureMaster(cid)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

if getCreatureStorage(master, 20078) == 1 or isInArray(tShiny, b) then
level = getDamagePoke(cid, FALSE)
element = DRAGONDAMAGE
num1 = 600 --- 1 dano
num2 = 800 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
else
level = getDamagePoke(cid, FALSE)
element = DRAGONDAMAGE
num1 = 250 --- 1 dano
num2 = 400 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
end

parameters = {cid=cid, combat2 = combat2, dir2 = dir2, areadano2 = areadano2, level = level, num1 = num1, num2 = num2, num3 = num3, num4 = num4}
addEvent(closee1, 200, parameters)
parameters2 = {cid=cid, combat2 = combat3, dir2 = dir3, areadano2 = areadano2, level = level, num1 = num1, num2 = num2, num3 = num3, num4 = num4}
addEvent(closee2, 300, parameters2)

		local d = getCreatureLookDirection(cid)
		doCombat(cid, combat[dir[d][1]], numberToVariant(cid)) 
		doAreaCombatHealth(cid, DRAGONDAMAGE, getCreaturePosition(cid), areadano[dir[d][1]], -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
	return true
end