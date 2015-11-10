local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HEALING)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 12)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)

function onSay(cid)
if not isSummon(cid) then
	return doCombat(cid, combat, numberToVariant(cid)) and
		doCreatureAddHealth(cid, math.random(1000, 1200))
end

local master = getCreatureMaster(cid)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)
local dano1 = 1000*getPlayerLevel(master)/20
local dano2 = 1200*getPlayerLevel(master)/20
local danoFinal = math.random(dano1, dano2)

if getCreatureHealth(cid)+danoFinal > getCreatureMaxHealth(cid) then
   Health = getCreatureMaxHealth(cid)-getCreatureHealth(cid)
else
    Health = danoFinal
end

if isInArray(tShiny, b) then
   doSendAnimatedText(getThingPos(cid),"+"..Health,29)
	return doCombat(cid, combat, numberToVariant(cid)) and
		doCreatureAddHealth(cid, danoFinal)
else
    doSendAnimatedText(getThingPos(cid),"+"..Health,29)
	return doCombat(cid, combat, numberToVariant(cid)) and
		doCreatureAddHealth(cid, danoFinal)
end
end