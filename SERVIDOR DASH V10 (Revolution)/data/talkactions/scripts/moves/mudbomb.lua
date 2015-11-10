function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		doSendDistanceShoot(getThingPos(pk), getThingPos(getMasterTarget(pk)), 38)
		doAreaCombatHealth(pk, element, getThingPos(getMasterTarget(pk)), bomb, -min, -max, 116)
		doAreaCombatHealth(pk, null, getThingPos(getMasterTarget(pk)), bomb, 0, 0, 34)
	return true;
end
