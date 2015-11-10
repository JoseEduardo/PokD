function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
        doAreaCombatHealth(pk, element, getThingPos(pk), thunder1, -min, -max, 48)
	return true;
end
