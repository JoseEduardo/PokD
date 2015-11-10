local function eff(cid,uid,n,old,effect) --- Script by mock effeitos seguindo
local interval = 0.5*1000  
   if isCreature(uid) == false or n == 100 then
      return false
   end
   doSendMagicEffect(getCreaturePosition(uid), effect)
   n = n+1
   addEvent(rot, interval,cid,uid,n,old, effect)
end

local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, true)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)

local condition = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 5000)
setConditionFormula(condition, -4.0, 1, -5.0, 1)
setCombatCondition(combat, condition)

function onSay(cid)
for i = 1, 50 do
    addEvent(eff, 0.5*1000,cid,getCreatureTarget(cid),1,getCreaturePosition(cid), 32)
end
   setPlayerStorageValue(cid, 15,1) 
	return doCombat(cid, combat, numberToVariant(getCreatureTarget(cid)))
end