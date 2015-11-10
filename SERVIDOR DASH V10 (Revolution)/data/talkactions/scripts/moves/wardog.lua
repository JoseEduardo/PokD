function onSay(cid, words, param, channel)

local master = getCreatureMaster(cid)
     doSendAnimatedText(getCreaturePosition(cid), 'War Dog', 156)
     setPlayerStorageValue(master, 20078, 1)     
end