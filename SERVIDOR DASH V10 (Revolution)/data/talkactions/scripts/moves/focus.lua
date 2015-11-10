function onSay(cid, words, param, channel)

local target = getCreatureTarget(cid)
local posi = getCreaturePosition(target) 
local master = getCreatureMaster(cid)
     doSendAnimatedText(posi, 'Focus', 215)
     setPlayerStorageValue(master, 20098, 1)     
end