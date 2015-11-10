function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		addEvent(doAreaCombatHealth, 100, pk, element, getThingPos(getMasterTarget(pk)), bomb, -min, -max, 114)
		doSendDistanceShoot(getThingPos(pk), getThingPos(getMasterTarget(pk)), 14)
	return true;
end
