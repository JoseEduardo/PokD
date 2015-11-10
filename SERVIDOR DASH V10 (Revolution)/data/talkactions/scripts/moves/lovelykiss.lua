local function eff(cid,uid,n,old,effect) --- Script by mock effeitos seguindo
local interval = 0.5*1000  
   if isCreature(uid) == false or n == 10 then
      return false
   end
   doSendMagicEffect(getCreaturePosition(uid), effect)
   n = n+1
   addEvent(rot, interval,cid,uid,n,old, effect)
end

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 147)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 16)

local condition = createConditionObject(CONDITION_DRUNK)
setConditionParam(condition, CONDITION_PARAM_TICKS, 5000)
setCombatCondition(combat, condition)

function onSay(cid)
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
element = NORMALDAMAGE
num1 = 500 --- 1 dano
num2 = 500 --- 2 dano
num3 = 4   --- bonus
num4 = 255 --- last

for i = 1, 10 do
    addEvent(eff, 0.5*1000,cid,getCreatureTarget(cid),1,getCreaturePosition(cid), 147)
end
	return doCombat(cid, combat, numberToVariant(getCreatureTarget(cid))) and
doTargetCombatHealth(cid, getCreatureTarget(cid), element, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end

local master = getCreatureMaster(cid)
if getCreatureStorage(master, 20098) == 1 or isInArray(tShiny, b) then
level = getDamagePoke(cid, TRUE)
element = NORMALDAMAGE
num1 = 1000 --- 1 dano
num2 = 1000 --- 2 dano
num3 = 4   --- bonus
num4 = 255 --- last
setPlayerStorageValue(master, 20098, 0)
else
level = getDamagePoke(cid, FALSE)
element = NORMALDAMAGE
num1 = 500 --- 1 dano
num2 = 500 --- 2 dano
num3 = 4   --- bonus
num4 = 255 --- last
end

for i = 1, 10 do
    addEvent(eff, 0.5*1000,cid,getCreatureTarget(cid),1,getCreaturePosition(cid), 147)
end
	return doCombat(cid, combat, numberToVariant(getCreatureTarget(cid))) and
doTargetCombatHealth(cid, getCreatureTarget(cid), element, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end