function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		if getCreatureLookDir(pk) == 0 then
			doAreaCombatHealth(pk, element, getThingPos(pk), wg1n, -min, -max, 94)
			doAreaCombatHealth(pk, element, getThingPos(pk), wg2n, -min, -max, 93)
			doAreaCombatHealth(pk, element, getThingPos(pk), wg3n, -min, -max, 95)
		elseif getCreatureLookDir(pk) == 2 then
			doAreaCombatHealth(pk, element, getThingPos(pk), wg1s, -min, -max, 91)
			doAreaCombatHealth(pk, element, getThingPos(pk), wg2s, -min, -max, 93)
			doAreaCombatHealth(pk, element, getThingPos(pk), wg3s, -min, -max, 92)
		elseif getCreatureLookDir(pk) == 1 then
			doAreaCombatHealth(pk, element, getThingPos(pk), wg1e, -min, -max, 86)
			doAreaCombatHealth(pk, element, getThingPos(pk), wg2e, -min, -max, 88)
			doAreaCombatHealth(pk, element, getThingPos(pk), wg3e, -min, -max, 87)
		elseif getCreatureLookDir(pk) == 3 then
			doAreaCombatHealth(pk, element, getThingPos(pk), wg1w, -min, -max, 89)
			doAreaCombatHealth(pk, element, getThingPos(pk), wg2w, -min, -max, 88)
			doAreaCombatHealth(pk, element, getThingPos(pk), wg3w, -min, -max, 90)
		end
	return true;
end
