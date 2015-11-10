function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		local function throw(params)
			if isMonster(getMasterTarget(params.pid)) then
				doSendDistanceShoot(getThingPos(params.pid), getThingPos(getMasterTarget(params.pid)), 6)
			else
			end
		end
		local function damage(params)
			if isMonster(getMasterTarget(params.pid)) then
				doAreaCombatHealth(params.pid, element, getThingPos(getMasterTarget(params.pid)), 0, -min, -max, 116)
			else
			end
		end
		addEvent(damage, 100, {pid = pk})
	return true;
end
