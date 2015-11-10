function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		addEvent(doCreatureAddHealth, 250, pk, -getCreatureHealth(pk))
		doAreaCombatHealth(pk, element, getThingPos(pk), destruct1, -min, -max, 5)
		addEvent(doAreaCombatHealth, 150, pk, element, getThingPos(pk), destruct2, -(min*0.7), -(max*0.8), 5)
		addEvent(doAreaCombatHealth, 250, pk, element, getThingPos(pk), destruct3, -(min*0.4), -(max*0.5), 5)
		setPlayerStorageValue(pk, 33, 1)
	return true;
end
