function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		local function throw(params)
			if isMonster(getMasterTarget(params.pid)) then
				if not isCreature(pk) then return true end
				doSendDistanceShoot(getThingPos(params.pid), getThingPos(getMasterTarget(params.pid)), 8)
			else
			end
		end
		local function damage(params)
			if isMonster(getMasterTarget(params.pid)) then
				if not isCreature(pk) then return true end
				doAreaCombatHealth(params.pid, element, getThingPos(getMasterTarget(params.pid)), 0, -min, -max, 79)
			else
			end
		end
		addEvent(damage, 100, {pid = pk})
		addEvent(damage, 600, {pid = pk})
		addEvent(throw, 0, {pid = pk})
		addEvent(throw, 550, {pid = pk})
	return true;
end
