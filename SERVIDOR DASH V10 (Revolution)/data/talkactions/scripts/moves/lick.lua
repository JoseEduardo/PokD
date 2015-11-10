function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
				
		 doConfusion(getMasterTarget(pk))
		--doAreaCombatCondition(pk, getThingPos(pk), confusion, sleepcondition, 255)
		doAreaCombatHealth(pk, element, getThingPos(getMasterTarget(pk)), 0, -min, -max, 145)
	return true;
end
