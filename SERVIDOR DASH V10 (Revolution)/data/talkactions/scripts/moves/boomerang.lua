local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, NORMALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 117)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 8)
function boomerang(paramis)
if not isCreature(getCreatureTarget(paramis.cid)) then
	doSendDistanceShoot(paramis.target, getThingPos(paramis.cid), 8)
return true
end
    
	doSendDistanceShoot(getThingPos(getCreatureTarget(paramis.cid)), getThingPos(paramis.cid), 8)
end

function onSay(cid, words, param)
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
element = GROUNDDAMAGE
num1 = 100 --- 1 dano
num2 = 200 --- 2 dano
num3 = 7   --- bonus
num4 = 255 --- last
local target = getThingPos(getCreatureTarget(cid))
      paramis = {cid=cid, target = target}
      addEvent(boomerang, 1000, paramis)
	return doCombat(cid, combat, numberToVariant(getCreatureTarget(cid))) and
    doTargetCombatHealth(cid, getCreatureTarget(cid), element, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end

local master = getCreatureMaster(cid)
if getCreatureStorage(master, 20078) == 1 or isInArray(tShiny, b) then
level = getDamagePoke(cid, TRUE)
element = GROUNDDAMAGE
num1 = 200 --- 1 dano
num2 = 400 --- 2 dano
num3 = 1   --- bonus
num4 = 255 --- last
setPlayerStorageValue(master, 20078, 0)
else
level = getDamagePoke(cid, FALSE)
element = GROUNDDAMAGE
num1 = 100 --- 1 dano
num2 = 200 --- 2 dano
num3 = 7   --- bonus
num4 = 255 --- last
end
local target = getThingPos(getCreatureTarget(cid))
      paramis = {cid=cid, target = target}
      addEvent(boomerang, 1000, paramis)
	return doCombat(cid, combat, numberToVariant(getCreatureTarget(cid))) and
    doTargetCombatHealth(cid, getCreatureTarget(cid), element, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end