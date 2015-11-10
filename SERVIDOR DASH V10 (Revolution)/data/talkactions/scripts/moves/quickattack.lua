function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
	if min == nil or max == nil then print(getCreatureName(pk).."ERRO QUICK") return true end
		doAreaCombatHealth(pk, element, getThingPos(getMasterTarget(pk)), 0, -min, -max, 3)
	return true;
end
