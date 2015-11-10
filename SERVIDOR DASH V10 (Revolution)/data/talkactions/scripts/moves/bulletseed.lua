function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		if getCreatureLookDir(pk) == 0 then
			doAreaCombatCondition(pk, getThingPos(pk), tsn, thunderwavecondition, 1)
			doAreaCombatHealth(pk, element, getThingPos(pk), bbn, -min, -max, 54)
		elseif getCreatureLookDir(pk) == 1 then
			doAreaCombatCondition(pk, getThingPos(pk), tse, thunderwavecondition, 1)
			doAreaCombatHealth(pk, element, getThingPos(pk), bbe, -min, -max, 54)
		elseif getCreatureLookDir(pk) == 2 then
			doAreaCombatCondition(pk, getThingPos(pk), tss, thunderwavecondition, 1)
			doAreaCombatHealth(pk, element, getThingPos(pk), bbs, -min, -max, 54)
		elseif getCreatureLookDir(pk) == 3 then
			doAreaCombatCondition(pk, getThingPos(pk), tsw, thunderwavecondition, 1)
			doAreaCombatHealth(pk, element, getThingPos(pk), bbw, -min, -max, 54)
		end
	return true;
end
