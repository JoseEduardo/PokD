function stop(parameters)
    setCreatureConditionValue(parameters.cid, IDREFLECT, 0)
    setPlayerStorageValue(parameters.master, 21099, 0)
end

function onSay(cid, words, param, channel)
     setCreatureConditionValue(cid, IDREFLECT, 1)
     parameters = {cid=cid, master = master}
     addEvent(stop, 5000, parameters)
end