function attacky(parameters)
    doSendMagicEffect(parameters.target, 114)
end

function attackF(parameters)
   doSetItemActionId(getThingfromPos({x=parameters.pos.x,y=parameters.pos.y,z=parameters.pos.z,stackpos=0}).uid,0)
    doSendMagicEffect(parameters.target, 114)
end


local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 8)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 13)

function onSay(cid)
local target = getCreaturePosition(getCreatureTarget(cid))
local master = getCreatureMaster(cid)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

if getCreatureStorage(master, 20078) == 1 or isInArray(tShiny, b) then
level = getDamagePoke(cid, TRUE)
element = POISONDAMAGE
num1 = 900 --- 1 dano
num2 = 1000 --- 2 dano
num3 = 4   --- bonus
num4 = 255 --- last
else
level = getDamagePoke(cid, FALSE)
element = POISONDAMAGE
num1 = 500 --- 1 dano
num2 = 900 --- 2 dano
num3 = 4   --- bonus
num4 = 255 --- last
end

local pos = getTileThingByPos(target)
doSetItemActionId(getThingfromPos({x=pos.x,y=pos.y,z=pos.z,stackpos=0}).uid, 1555)

  parameters = {cid=cid, target = target, pos = pos}
  addEvent(attacky, 1000, parameters)
  addEvent(attacky, 3000, parameters)
  addEvent(attacky, 5000, parameters)
  addEvent(attacky, 7000, parameters)
  addEvent(attacky, 10000, parameters)
  addEvent(attacky, 12000, parameters)
  addEvent(attacky, 15000, parameters)


	return doCombat(cid, combat, numberToVariant(getCreatureTarget(cid))) and
doTargetCombatHealth(cid, getCreatureTarget(cid), element, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end