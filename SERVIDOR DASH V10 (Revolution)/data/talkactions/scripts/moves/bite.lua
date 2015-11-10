function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		if not isCreature(getMasterTarget(pk)) or isCreature(pk) then return true end
		doAreaCombatHealth(pk, element, getThingPos(getMasterTarget(pk)), 0, -min, -max, 146)
	return true;
end
