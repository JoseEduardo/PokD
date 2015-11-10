local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 127)

function attacke(parameters)
doSendMagicEffect(getCreaturePosition(parameters.target), 57)
end
function attack(parameters)
local creature = doSummonCreature(parameters.Pname, getCreaturePosition(parameters.target))
local healthT = getCreatureHealth(parameters.target)

    doConvinceCreature(parameters.master, creature)
    setCreatureMaxHealth(creature, getCreatureMaxHealth(creature)+5*parameters.level)
    doCreatureAddHealth(creature, -(tonumber(getPokemonMaxLife(parameters.Pname) - parameters.health)))
 	registerCreatureEvent(creature, 'mindDeath')
	registerCreatureEvent(parameters.master, "PlayerPokeDeath")
	registerCreatureEvent(parameters.master, "LogoutPoke")
    registerCreatureEvent(parameters.master, "Exp")
	registerCreatureEvent(parameters.master, "login_summon")   
	setPlayerStorageValue(parameters.master, 61204, 1)
	setPlayerStorageValue(parameters.master, 61025, 1)  

local master = getCreatureMaster(cid)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

if getCreatureStorage(master, 20078) == 1 or isInArray(tShiny, b) then
level = getDamagePoke(parameters.cid, FALSE)
element = FLYDAMAGE
num1 = 400 --- 1 dano
num2 = 800 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
else
level = getDamagePoke(parameters.cid, FALSE)
element = FLYDAMAGE
num1 = 200 --- 1 dano
num2 = 400 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
end
	return doCombat(parameters.master, combat, numberToVariant(getCreatureTarget(parameters.master))) and
    doTargetCombatHealth(parameters.master, getCreatureTarget(parameters.master), element, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
end

function onSay(cid, fromPos, toPos)
local level = getPlayerLevel(getCreatureMaster(cid))
local target = getCreatureTarget(cid)
local master = getCreatureMaster(cid)
local health = getCreatureHealth(cid)
local pos = getCreaturePosition(cid)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)
local Pname = tMonster[b]

  doRemoveCreature(cid)
  doSendMagicEffect(pos, 56)
  parameters = {cid=cid, health = health, max = max, level = level, Pname = Pname, target = target, master = master, creature = creature}
  addEvent(attack, 3150, parameters)
  addEvent(attacke, 2800, parameters)

end                  