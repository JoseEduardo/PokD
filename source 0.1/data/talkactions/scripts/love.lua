function onSay(cid,param,words)
if #getCreatureSummons(cid) == 0 then
doPlayerSendCancel(cid, "You need a pokemon to Love.")
return true
end
function Say()
local jui = getCreatureSummons(cid)[1]
max = (2*getCreatureMaxHealth(jui))--Life em porcentagem que ira curar 2*
hp = (max/100)
doCreatureAddHealth(jui,hp)
doSendMagicEffect(getThingPos(jui), 180)--Effect no poke
doSendAnimatedText(getCreaturePosition(jui), "", math.random(1, 110)) local summons = getCreatureSummons(cid)--Fala que o poke ira falar 
return true
end
if exhaustion.check(cid, 25680) then---exhausted storage
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have to wait ".. exhaustion.get(cid, 25680) .." seconds.")---exhausted msg
return true
end
doSendAnimatedText(getCreaturePosition(cid), "Love You.", math.random(1, 110))--Fala que o player era dizer
doSendMagicEffect(getThingPos(cid), 180)--effect
exhaustion.make(cid, 25680, 120)--tempo exhausted
addEvent(Say,10)--Tempo em seg que depois retornara para mostrar effect no poke e healar ele
return true
end