local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, POISONDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_GREEN_RINGS)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_POISON)

local area = createCombatArea(arr)
arr = {
	{1, 1, 1},
	{1, 3, 1},
	{1, 1, 1}
}
setCombatArea(combat, area)
function onSay(cid)
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
element = POISONDAMAGE
num1 = 400 --- 1 dano
num2 = 550 --- 2 dano
num3 = 2   --- bonus
num4 = 255 --- last
	return doCombat(cid, combat, numberToVariant(cid)) and
		doAreaCombatHealth(cid, element, getCreaturePosition(cid), area, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
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
element = POISONDAMAGE
num1 = 400 --- 1 dano
num2 = 550 --- 2 dano
num3 = 2   --- bonus
num4 = 255 --- last
end
	return doCombat(cid, combat, numberToVariant(cid)) and
		doAreaCombatHealth(cid, element, getCreaturePosition(cid), area, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end