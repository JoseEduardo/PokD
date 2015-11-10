function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		doSendMagicEffect(getThingPos(getMasterTarget(pk)), 112)
		local function damage(params)
			if isCreature(params.pid) then
				if isCreature(getMasterTarget(params.pid)) then
					doAreaCombatHealth(params.pid, element, getThingPos(getMasterTarget(params.pid)), 0, -min, -max, 113)
				end
			end
		end
		addEvent(damage, 200, {pid = pk})
	return true;
end
