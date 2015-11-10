local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 160)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 160)

function onSay(cid, words, param)
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
element = NORMALDAMAGE
num1 = 300 --- 1 dano
num2 = 400 --- 2 dano
num3 = 4   --- bonus
num4 = 255 --- last
	return doCombat(cid, combat, numberToVariant(getCreatureTarget(cid))) and
doTargetCombatHealth(cid, getCreatureTarget(cid), element, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end

local master = getCreatureMaster(cid)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

if getCreatureStorage(master, 20078) == 1 or isInArray(tShiny, b) then
level = getDamagePoke(cid, TRUE)
element = NORMALDAMAGE
num1 = 700 --- 1 dano
num2 = 900 --- 2 dano
num3 = 7   --- bonus
num4 = 255 --- last
setPlayerStorageValue(master, 20078, 0)
else
level = getDamagePoke(cid, FALSE)
element = NORMALDAMAGE
num1 = 300 --- 1 dano
num2 = 400 --- 2 dano
num3 = 4   --- bonus
num4 = 255 --- last
end
	return doCombat(cid, combat, numberToVariant(getCreatureTarget(cid))) and
doTargetCombatHealth(cid, getCreatureTarget(cid), element, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)

end