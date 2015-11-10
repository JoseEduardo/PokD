function removve(parameters)
if getCreatureSummons(parameters.master) == 1 then
return true
end
 doSendMagicEffect(getCreaturePosition(parameters.creature), 211)
 doRemoveCreature(parameters.creature)
end

function onSay(cid, fromPos, toPos)
local Look = getPlayerLookPos(cid)

if not isSummon(cid) then
level = math.random(70, 120)
creature = doSummonCreature("scytherp", getCreaturePosition(cid))
  doConvinceCreature(master, creature)
  max = getCreatureMaxHealth(creature)
  registerCreatureEvent(creature, "Deead")
  setCreatureMaxHealth(creature, (max+level*5))
  doCreatureSetLookDir(creature, Look)
  doSendMagicEffect(getCreaturePosition(creature), 211)
  parameters = {cid=cid, creature = creature, master = master}
  addEvent(removve, 5000, parameters)  
return true
end

local master = getCreatureMaster(cid)
local level = getPlayerLevel(master)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

if isInArray(tShiny, b) then
creature = doSummonCreature("shiny scytherp", getCreaturePosition(cid))
else
creature = doSummonCreature("scytherp", getCreaturePosition(cid))
end
  doConvinceCreature(master, creature)
max = getCreatureMaxHealth(creature)
  registerCreatureEvent(creature, "Deead")
  setCreatureMaxHealth(creature, (max+level*5))
  doCreatureSetLookDir(creature, Look)
  doSendMagicEffect(getCreaturePosition(creature), 211)
  parameters = {cid=cid, creature = creature, master = master}
  addEvent(removve, 5000, parameters)  


end

                  