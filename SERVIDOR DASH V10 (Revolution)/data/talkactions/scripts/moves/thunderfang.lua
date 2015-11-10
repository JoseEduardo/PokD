function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		doSendMagicEffect(getThingPos(getMasterTarget(pk)), 146)
		local function damage(params)
			if isCreature(params.pid) then
				if isCreature(getMasterTarget(params.pid)) then
					doAreaCombatHealth(pk, element, getThingPos(getMasterTarget(params.pid)), 0, -min, -max, 48)
				end
			end
		end
		addEvent(damage, 200, {pid = pk})
	return true;
end
