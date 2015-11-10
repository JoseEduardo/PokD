local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, GROUNDDAMAGE)
--setCombatParam(combat, COMBAT_PARAM_EFFECT, 127)
local area = createCombatArea(arr)
setCombatArea(combat, area)

arr = {{0, 0, 0, 0, 0},
	  {0, 1, 1, 1, 0},
	  {0, 1, 3, 1, 0},
	  {0, 1, 1, 1, 0},
	  {0, 0, 0, 0, 0}}

function onSay(cid)
if not isSummon(cid) then
pos = getCreaturePosition(cid)
level = getDamagePoke(cid, FALSE)
num1 = 1300 --- 1 dano
num2 = 1800 --- 2 dano
num3 = 5   --- bonus
num4 = 255 --- last
    doSendMagicEffect({x=pos.x+1, y=pos.y+1, z=pos.z}, 127) 
	return doCombat(cid, combat, numberToVariant(cid)) and
		doAreaCombatHealth(cid, GROUNDDAMAGE, getCreaturePosition(cid), area, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end

local master = getCreatureMaster(cid)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

if getCreatureStorage(master, 20078) == 1 or isInArray(tShiny, b) then
pos = getCreaturePosition(cid)
level = getDamagePoke(cid, TRUE)
num1 = 1400 --- 1 dano
num2 = 1900 --- 2 dano
num3 = 5   --- bonus
num4 = 255 --- last
else
pos = getCreaturePosition(cid)
level = getDamagePoke(cid, FALSE)
num1 = 1300 --- 1 dano
num2 = 1800 --- 2 dano
num3 = 5   --- bonus
num4 = 255 --- last
end
    doSendMagicEffect({x=pos.x+1, y=pos.y+1, z=pos.z}, 127)
	return doCombat(cid, combat, numberToVariant(cid)) and
		doAreaCombatHealth(cid, GROUNDDAMAGE, getCreaturePosition(cid), area, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end