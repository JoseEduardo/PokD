function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
        local function damage(params)
			if isMonster(getMasterTarget(params.pid)) then
				doAreaCombatHealth(params.pid, element, getThingPos(getMasterTarget(params.pid)), 0, -min, -max, 146)
			else
			end
		end
		addEvent(damage, 0, {pid = pk})
		addEvent(damage, 400, {pid = pk})
		addEvent(damage, 800, {pid = pk})
		addEvent(damage, 1200, {pid = pk})
		addEvent(damage, 1500, {pid = pk})
	return true;
end
