local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, BUGDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 128)  --norte

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, BUGDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 129)     --leste

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, BUGDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 131)       --sul

local combat4 = createCombatObject()
setCombatParam(combat4, COMBAT_PARAM_TYPE, BUGDAMAGE)
setCombatParam(combat4, COMBAT_PARAM_EFFECT, 130)     --oeste

arr1 = {{0, 0, 0, 0, 0},
	   {0, 1, 1, 1, 0},
	   {0, 0, 2, 0, 0},
	   {0, 0, 0, 0, 0},
	   {0, 0, 0, 0, 0},} --norte
	   
arr2 = {{0, 0, 0, 0, 0},
	   {0, 0, 0, 1, 0},
	   {0, 0, 2, 1, 0},
	   {0, 0, 0, 1, 0},
	   {0, 0, 0, 0, 0},} --leste
	   
arr3 = {{0, 0, 0, 0, 0},
	   {0, 0, 0, 0, 0},
	   {0, 0, 2, 0, 0},
	   {0, 1, 1, 1, 0},
	   {0, 0, 0, 0, 0},} --sul
	   
arr4 = {{0, 0, 0, 0, 0},
	   {0, 1, 0, 0, 0},
	   {0, 1, 2, 0, 0},
	   {0, 1, 0, 0, 0},
	   {0, 0, 0, 0, 0},} --oeste
   
local area1 = createCombatArea(arr1)  --norte
setCombatArea(combat1, area1)

local area2 = createCombatArea(arr2) --leste
setCombatArea(combat2, area2)

local area3 = createCombatArea(arr3) --sul
setCombatArea(combat3, area3)

local area4 = createCombatArea(arr4)  --oeste
setCombatArea(combat4, area4)

function onSay(cid)

if getCreatureLookDir(cid) == 0 then   --norte
   efeito = 128	   
   area = area1
   combat = combat1        
elseif getCreatureLookDir(cid) == 3 then   --leste
   efeito = 129	   
   area = area2
   combat = combat2
elseif getCreatureLookDir(cid) == 2 then    --sul
   efeito = 131	   
   area = area3
   combat = combat3
elseif getCreatureLookDir(cid) == 4 then --oeste
   efeito = 130	   
   area = area4
   combat = combat4
end
	
if not isSummon(cid) then
level = getDamagePoke(cid, FALSE)
element = BUGDAMAGE
num1 = 200 --- 1 dano
num2 = 300 --- 2 dano
num3 = 3   --- bonus
--num4 = 255 --- last

return doCombat(cid, combat, numberToVariant(cid)) and
  doAreaCombatHealth(cid, element, getCreaturePosition(cid), area,  -((num1)+(level*(num3))), -((num2)+(level*(num3))), efeito)       
end

local master = getCreatureMaster(cid)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

if getCreatureStorage(master, 20078) == 1 or isInArray(tShiny, b) then
level = getDamagePoke(cid, TRUE)
element = BUGDAMAGE
num1 = 600 --- 1 dano
num2 = 800 --- 2 dano
num3 = 3   --- bonus
--num4 = 255 --- last
else
level = getDamagePoke(cid, FALSE)
element = BUGDAMAGE
num1 = 200 --- 1 dano
num2 = 300 --- 2 dano
num3 = 3   --- bonus
--num4 = 255 --- last
end

return doCombat(cid, combat, numberToVariant(cid)) and
  doAreaCombatHealth(cid, element, getCreaturePosition(cid), area,  -((num1)+(level*(num3))), -((num2)+(level*(num3))), efeito)      
end