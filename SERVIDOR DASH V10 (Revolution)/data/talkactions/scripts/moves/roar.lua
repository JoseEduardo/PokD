function removiR(params)
if not isCreature(params.target) then
return true
end
    setPlayerStorageValue(params.target, 84147, 0)
end

function onSay(cid)
local target = getCreatureTarget(cid)
	registerCreatureEvent(target, "Fear")
    setPlayerStorageValue(target, 84147, 1)
    params = {cid=cid, target=target}
    addEvent(removiR, 5000, params)
end