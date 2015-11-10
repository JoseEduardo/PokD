local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 44)

function onSay(cid)
jus = {x = getThingPos(cid).x-2, y = getThingPos(cid).y - 6, z = getThingPos(cid).z}
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
element = ROCKDAMAGE
num1 = 80 --- 1 dano
num2 = 150 --- 2 dano
num3 = 2   --- bonus
num4 = 255 --- last
	doSendDistanceShoot(jus, getThingPos(getCreatureTarget(cid)), 11)
	return doCombat(cid, combat, numberToVariant(getCreatureTarget(cid))) and
doTargetCombatHealth(cid, getCreatureTarget(cid), element, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end

local master = getCreatureMaster(cid)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

if getCreatureStorage(master, 20078) == 1 or isInArray(tShiny, b) then
level = getDamagePoke(cid, TRUE)
element = ROCKDAMAGE
num1 = 80 --- 1 dano
num2 = 150 --- 2 dano
num3 = 5   --- bonus
num4 = 255 --- last
else
level = getDamagePoke(cid, FALSE)
element = ROCKDAMAGE
num1 = 80 --- 1 dano
num2 = 150 --- 2 dano
num3 = 2   --- bonus
num4 = 255 --- last
end
	doSendDistanceShoot(jus, getThingPos(getCreatureTarget(cid)), 11)
	return doCombat(cid, combat, numberToVariant(getCreatureTarget(cid))) and
doTargetCombatHealth(cid, getCreatureTarget(cid), element, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end