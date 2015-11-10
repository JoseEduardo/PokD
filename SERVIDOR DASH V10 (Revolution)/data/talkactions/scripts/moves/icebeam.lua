function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		if getCreatureLookDir(pk) == 0 then
			doAreaCombatHealth(pk, element, getThingPos(pk), wg1n, -min, -max, 99)
			doAreaCombatHealth(pk, element, getThingPos(pk), wg2n, -min, -max, 105)
			doAreaCombatHealth(pk, element, getThingPos(pk), wg3n, -min, -max, 103)
		elseif getCreatureLookDir(pk) == 2 then
			doAreaCombatHealth(pk, element, getThingPos(pk), wg1s, -min, -max, 98)
			doAreaCombatHealth(pk, element, getThingPos(pk), wg2s, -min, -max, 105)
			doAreaCombatHealth(pk, element, getThingPos(pk), wg3s, -min, -max, 102)
		elseif getCreatureLookDir(pk) == 1 then
			doAreaCombatHealth(pk, element, getThingPos(pk), wg1e, -min, -max, 96)
			doAreaCombatHealth(pk, element, getThingPos(pk), wg2e, -min, -max, 104)
			doAreaCombatHealth(pk, element, getThingPos(pk), wg3e, -min, -max, 100)
		elseif getCreatureLookDir(pk) == 3 then
			doAreaCombatHealth(pk, element, getThingPos(pk), wg1w, -min, -max, 97)
			doAreaCombatHealth(pk, element, getThingPos(pk), wg2w, -min, -max, 104)
			doAreaCombatHealth(pk, element, getThingPos(pk), wg3w, -min, -max, 101)
		end
	return true;
end
