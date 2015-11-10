function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		if getCreatureLookDir(pk) == 0 then
			doAreaCombatCondition(pk, getThingPos(pk), tsn, thunderwavecondition, 255)
			doAreaCombatHealth(pk, element, getThingPos(pk), wsn, -min, -max, 6)
		elseif getCreatureLookDir(pk) == 1 then
			doAreaCombatCondition(pk, getThingPos(pk), tse, thunderwavecondition, 255)
			doAreaCombatHealth(pk, element, getThingPos(pk), wse, -min, -max, 6)
		elseif getCreatureLookDir(pk) == 2 then
			doAreaCombatCondition(pk, getThingPos(pk), tss, thunderwavecondition, 255)
			doAreaCombatHealth(pk, element, getThingPos(pk), wss, -min, -max, 6)
		elseif getCreatureLookDir(pk) == 3 then
			doAreaCombatCondition(pk, getThingPos(pk), tsw, thunderwavecondition, 255)
			doAreaCombatHealth(pk, element, getThingPos(pk), wsw, -min, -max, 6)
		end
	return true;
end
