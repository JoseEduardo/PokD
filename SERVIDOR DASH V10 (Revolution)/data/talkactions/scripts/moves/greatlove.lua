local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE,COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 147)

arr = {
{0, 0, 1 ,1 ,1 ,0 ,0},
{0, 1, 1 ,1 ,1 ,1 ,0},
{1, 1, 1 ,1 ,1 ,1 ,1},
{1, 1, 1 ,2 ,1 ,1 ,1},
{1, 1, 1 ,1 ,1 ,1 ,1},
{0, 1, 1 ,1 ,1 ,1 ,0},
{0, 0, 1 ,1 ,1 ,0 ,0},
}

local area = createCombatArea(arr)
setCombatArea(combat, area)

function onSay(cid)
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
element = NORMALDAMAGE
num1 = 900 --- 1 dano
num2 = 1000 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
    return doCombat(cid, combat, numberToVariant(cid)) and
	doAreaCombatHealth(cid, NORMALDAMAGE, getCreaturePosition(cid), area, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end

  local master = getCreatureMaster(cid)
if getCreatureStorage(master, 20098) == 1 then
level = getDamagePoke(cid, TRUE)
element = NORMALDAMAGE
num1 = 1200 --- 1 dano
num2 = 1500 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
setPlayerStorageValue(master, 20098, 0)
else
level = getDamagePoke(cid, FALSE)
element = NORMALDAMAGE
num1 = 900 --- 1 dano
num2 = 1000 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
end
    return doCombat(cid, combat, numberToVariant(cid)) and
	doAreaCombatHealth(cid, NORMALDAMAGE, getCreaturePosition(cid), area, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end