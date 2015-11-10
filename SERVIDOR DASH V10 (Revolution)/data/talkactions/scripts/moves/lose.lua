function onSay(cid, words, param)
local loss = math.random(0, 70)
 if loss <= 10 then
     doSendAnimatedText(getThingPos(cid), 'MISS', 215)
 else
  doCreatureAddHealth(cid, -loss)
 end
end