function onUse(cid, item, frompos, item2, topos)
if item.uid == 2018 then
queststatus = getPlayerStorageValue(cid,2018)
if getPlayerLevel(cid) >= 60 then
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You received an box [+3].")
item_uid = doPlayerAddItem(cid,7888,1)
setPlayerStorageValue(cid,2018,1)
else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
else
doPlayerSendCancel(cid,"You need level 60 or higher, to make this quest.")
end
else
return 0
end
return 1
end