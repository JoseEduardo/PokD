function removve(parameters)
if getCreatureSummons(parameters.master) == 1 then
return true
end
 doSendMagicEffect(getCreaturePosition(parameters.creature), 211)
 doRemoveCreature(parameters.creature)
end

function onSay(cid, fromPos, toPos)
local target = getCreatureTarget(cid)
local master = getCreatureMaster(cid)
local health =  getCreatureHealth(cid)
local level = getPlayerLevel(master)

creature = doSummonCreature("taurosc", getCreaturePosition(cid))
  doConvinceCreature(master, creature)
max = getCreatureMaxHealth(creature)
  setCreatureMaxHealth(creature, (max+level*5))
  
if isCreature(getCreatureTarget(cid)) then
  doChallengeCreature(creature, target)
end 
  registerCreatureEvent(creature, "Deead")
  doSendMagicEffect(getCreaturePosition(creature), 211)
  parameters = {cid=cid, creature = creature, master = master}
  addEvent(removve, 5000, parameters)
  doCreatureAddHealth(cid, -(health/2))  


end                  