function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		if getCreatureLookDir(pk) == 0 then
			doAreaCombatHealth(pk, element, getThingPos(pk), wg1n, -min, -max, 74)
			doAreaCombatHealth(pk, element, getThingPos(pk), wg2n, -min, -max, 75)
			doAreaCombatHealth(pk, element, getThingPos(pk), wg3n, -min, -max, 76)
		elseif getCreatureLookDir(pk) == 2 then
			doAreaCombatHealth(pk, element, getThingPos(pk), wg1s, -min, -max, 77)
			doAreaCombatHealth(pk, element, getThingPos(pk), wg2s, -min, -max, 75)
			doAreaCombatHealth(pk, element, getThingPos(pk), wg3s, -min, -max, 78)
		elseif getCreatureLookDir(pk) == 1 then
			doAreaCombatHealth(pk, element, getThingPos(pk), wg1e, -min, -max, 69)
			doAreaCombatHealth(pk, element, getThingPos(pk), wg2e, -min, -max, 70)
			doAreaCombatHealth(pk, element, getThingPos(pk), wg3e, -min, -max, 71)
		elseif getCreatureLookDir(pk) == 3 then
			doAreaCombatHealth(pk, element, getThingPos(pk), wg1w, -min, -max, 72)
			doAreaCombatHealth(pk, element, getThingPos(pk), wg2w, -min, -max, 70)
			doAreaCombatHealth(pk, element, getThingPos(pk), wg3w, -min, -max, 73)
		end
	return true;
end
