function removi(params)
    setPlayerStorageValue(params.target, 84144, 0)
end

function onSay(cid)
local target = getCreatureTarget(cid)
	registerCreatureEvent(target, "Fear")
    setPlayerStorageValue(target, 84144, 1)
    params = {cid=cid, target=target}
    addEvent(removi, 5000, params)
end