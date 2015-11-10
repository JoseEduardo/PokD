function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		local function slap(params)
			if isMonster(getMasterTarget(params.pid)) then
				if not isCreature(getMasterTarget(params.pid)) or isCreature(params.pid) then return true end
				doAreaCombatHealth(pk, element, getThingPos(getMasterTarget(params.pid)), 0, -min, -max, 3)
			else
			end
		end
		addEvent(slap, 0, {pid = pk})
		addEvent(slap, 600, {pid = pk})
	return true;
end
