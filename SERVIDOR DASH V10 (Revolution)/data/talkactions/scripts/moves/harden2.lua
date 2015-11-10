local function eff(cid,uid,n,old,effect) --- Script by mock effeitos seguindo
local interval = 0.5*3000  
   if isCreature(uid) == false or n == 30 then
      return false
   end
   doSendMagicEffect(getCreaturePosition(uid), effect)
   n = n+1
   addEvent(rot, interval,cid,uid,n,old, effect)
end

function stop(parameters)
     setPlayerStorageValue(parameters.master, 20099, 0)
end

function onSay(cid, words, param, channel)
local master = getCreatureMaster(cid)
     setPlayerStorageValue(master, 20099, 1)
     parameters = {cid=cid, master = master}
     addEvent(stop, 45000, parameters)
for i = 1, 30 do
    addEvent(eff, 0.5*3000,cid,getCreatureSummons(getCreatureMaster(cid))[1],1,getCreaturePosition(cid), 144)
end

end