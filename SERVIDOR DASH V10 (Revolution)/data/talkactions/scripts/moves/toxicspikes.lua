function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		local function slap(params)
			if isMonster(getMasterTarget(params.pid)) then
				doSendDistanceShoot(getThingPos(params.pid), getThingPos(getMasterTarget(params.pid)), 15)
				doAreaCombatHealth(params.pid, element, getThingPos(getMasterTarget(params.pid)), 0, -min, -max, 8)
			else
			end
		end
		addEvent(slap, 0, {pid = pk})
		addEvent(slap, 500, {pid = pk})
		addEvent(slap, 1000, {pid = pk})
	return true;
end
