function onSay(cid)
local jogadorpos = getCreatureMaster(cid)
local target = getCreatureTarget(cid)
local monsterpos = getCreaturePosition(target)
if target == isMonster or isCreature then
doTeleportThing(cid,monsterpos)
doTeleportThing(target,jogadorpos)
doSendMagicEffect(jogadorpos, 21)
doSendMagicEffect(monsterpos, 21)
else
doPlayerSendTextMessage(cid,20,'S� Pode ser usado em pokemons selvagens')
end
end