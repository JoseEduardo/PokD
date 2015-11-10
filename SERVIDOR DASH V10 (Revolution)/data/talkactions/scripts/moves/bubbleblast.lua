function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		local function throw(params)
			if isMonster(getMasterTarget(params.pid)) then
				doSendDistanceShoot(getThingPos(params.pid), getThingPos(getMasterTarget(params.pid)), 2)
			else
			end
		end
		local function damage(params)
			if isMonster(getMasterTarget(params.pid)) then
				doAreaCombatHealth(params.pid, element, getThingPos(getMasterTarget(params.pid)), 0, -min, -max, 68)
			else
			end
		end
		addEvent(throw, 0, {pid = pk})
		addEvent(damage, 0, {pid = pk})
        addEvent(throw, 400, {pid = pk})
		addEvent(damage, 400, {pid = pk})
        addEvent(throw, 800, {pid = pk})
		addEvent(damage, 800, {pid = pk})
        addEvent(throw, 1200, {pid = pk})
		addEvent(damage, 1200, {pid = pk})
	return true;
end
