function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		if not getMasterTarget(pk) then print("Move Prescisa de Target") return end
		local function slap(params)
			if isMonster(getMasterTarget(params.pid)) then
				doAreaCombatHealth(params.pid, element, getThingPos(getMasterTarget(params.pid)), 0, -min, -max, 112)
			else
			end
		end
		addEvent(slap, 0, {pid = pk})
		addEvent(slap, 350, {pid = pk})
		addEvent(slap, 700, {pid = pk})
		addEvent(slap, 950, {pid = pk})
	return true;
end
