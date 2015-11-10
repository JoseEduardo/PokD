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
				doAreaCombatHealth(params.pid, element, getThingPos(getMasterTarget(pk)), 0, -min, -max, 25)
			else
			end
		end
		addEvent(throw, 0, {pid = pk})
		addEvent(damage, 0, {pid = pk})
	return true;
end