function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		doSendDistanceShoot(getThingPos(pk), getThingPos(getMasterTarget(pk)), 33)
		doAreaCombatHealth(pk, element, getThingPos(getMasterTarget(pk)), 0, -min, -max, 1)
	return true;
end
