function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		if getCreatureLookDir(pk) == 0 then
			area = toxicn
		elseif getCreatureLookDir(pk) == 1 then
			area = toxice
		elseif getCreatureLookDir(pk) == 2 then
			area = toxics
		elseif getCreatureLookDir(pk) == 3 then
			area = toxicw
		end
		doAreaCombatHealth(pk, element, getThingPos(pk), area, -min, -max, 114)
	return true;
end
