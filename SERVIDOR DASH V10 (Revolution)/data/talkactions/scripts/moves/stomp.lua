function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		doAreaCombatHealth(pk, element, getThingPos(pk), stomp, -min, -max, 118)
	return true;
end
