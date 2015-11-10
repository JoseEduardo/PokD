local function eff(cid,uid,n,old,effect) 
    local interval = 0.5*1000  
      if isCreature(uid) == false or n == 10 then
      return false
    end
      doSendMagicEffect(getCreaturePosition(uid), effect)
      n = n+1
    addEvent(rot, interval,cid,uid,n,old, effect)
    end

local combat, areadano, effect, dir, area = {}, {}, {120, 121, 122, 119}, {[0] = {1}, [1] = {2}, [2] = {3}, [3] = {4}}, {
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
local combat2, areadano2, effect2, dir2, area2 = {}, {}, {120, 121, 122, 119}, {[0] = {1}, [1] = {2}, [2] = {3}, [3] = {4}}, {
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
	end
function closee1(parameters)
		local d = getCreatureLookDirection(parameters.cid)
		doCombat(parameters.cid, parameters.combat2[parameters.dir2[d][1]], numberToVariant(parameters.cid)) 
		doAreaCombatHealth(parameters.cid, GROUNDDAMAGE, getCreaturePosition(parameters.cid), parameters.areadano2[parameters.dir2[d][1]], -((parameters.num1)+(parameters.level*(parameters.num3))), -((parameters.num2)+(parameters.level*(parameters.num3))), parameters.num4)
end

function onSay(cid)
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
element = COMBAT_PHYSICALDAMAGE
num1 = 250 --- 1 dano
num2 = 400 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last

parameters = {cid=cid, combat2 = combat2, dir2 = dir2, areadano2 = areadano2, level = level, num1 = num1, num2 = num2, num3 = num3, num4 = num4}
addEvent(closee1, 200, parameters)
		local d = getCreatureLookDirection(cid)
		doCombat(cid, combat[dir[d][1]], numberToVariant(cid)) 
		doAreaCombatHealth(cid, GROUNDDAMAGE, getCreaturePosition(cid), areadano[dir[d][1]], -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
        for i = 1, 10 do
         addEvent(eff, 0.5*1000,cid,getCreatureTarget(cid),1,getCreaturePosition(cid), 34)
       end

return true
end

local master = getCreatureMaster(cid)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

if getCreatureStorage(master, 20078) == 1 or isInArray(tShiny, b) then
level = getDamagePoke(cid, TRUE)
element = POISONDAMAGE
num1 = 600 --- 1 dano
num2 = 800 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
else
level = getDamagePoke(cid, FALSE)
element = COMBAT_PHYSICALDAMAGE
num1 = 250 --- 1 dano
num2 = 400 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
end

parameters = {cid=cid, combat2 = combat2, dir2 = dir2, areadano2 = areadano2, level = level, num1 = num1, num2 = num2, num3 = num3, num4 = num4}
addEvent(closee1, 200, parameters)
		local d = getCreatureLookDirection(cid)
		doCombat(cid, combat[dir[d][1]], numberToVariant(cid)) 
		doAreaCombatHealth(cid, GROUNDDAMAGE, getCreaturePosition(cid), areadano[dir[d][1]], -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
        for i = 1, 10 do
         addEvent(eff, 0.5*1000,cid,getCreatureTarget(cid),1,getCreaturePosition(cid), 34)
       end
	return true
end