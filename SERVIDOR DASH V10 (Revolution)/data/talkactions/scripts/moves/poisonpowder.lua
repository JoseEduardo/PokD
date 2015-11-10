function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		if getCreatureLookDir(pk) == 0 then
			doAreaCombatHealth(pk, element, getThingPos(pk), confusion, -min, -max, 84)
		elseif getCreatureLookDir(pk) == 1 then
			doAreaCombatHealth(pk, element, getThingPos(pk), confusion, -min, -max, 84)
		elseif getCreatureLookDir(pk) == 2 then
			doAreaCombatHealth(pk, element, getThingPos(pk), confusion, -min, -max, 84)
		elseif getCreatureLookDir(pk) == 3 then
			doAreaCombatHealth(pk, element, getThingPos(pk), confusion, -min, -max, 84)
		end
	return true;
end
