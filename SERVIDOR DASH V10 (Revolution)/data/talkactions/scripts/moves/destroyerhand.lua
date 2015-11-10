function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
	    doAreaCombatHealth(pk, GROUNDDAMAGE, getThingPos(pk), eshock, -min, -max, 255)
	    local sps = getThingPos(pk)
	    sps.x = sps.x+1
	    sps.y = sps.y+1
	    doSendMagicEffect(sps, 127)
	return true;
end
