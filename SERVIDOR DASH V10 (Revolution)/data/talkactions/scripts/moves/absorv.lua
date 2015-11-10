function onSay(cid)
if not isSummon(cid) then
local level = getDamagePoke(cid, FALSE)
local rnd = math.random(level, level+10)
        local target = getCreatureTarget(cid)
        doSendAnimatedText(getCreaturePosition(cid), "+"..(rnd+80*5), 25)
        doSendAnimatedText(getCreaturePosition(target), "-"..(rnd+80*5), 180)
		doCreatureAddHealth(cid, (rnd+80*5))
		doCreatureAddHealth(target, -(rnd+80*5))    
 return true
end   

local target = getCreatureTarget(cid)
local level = getPlayerLevel(getCreatureMaster(cid))
local master = getCreatureMaster(cid)

local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

if isInArray(tShiny, b) then
local level = getDamagePoke(cid, TRUE)
 qtd = math.random(level, level+10)
else
local level = getDamagePoke(cid, FALSE)
 qtd = math.random(level, level+10)
end
        doSendAnimatedText(getCreaturePosition(cid), "+"..(qtd+level*5), 25)
        doSendAnimatedText(getCreaturePosition(target), "-"..(qtd+level*5), 180)
		doCreatureAddHealth(cid, (qtd+level*5))
		doCreatureAddHealth(target, -(qtd+level*5))    

end