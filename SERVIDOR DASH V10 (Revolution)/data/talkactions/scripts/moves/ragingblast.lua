function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		doAreaCombatHealth(pk, element, getThingPos(pk), rageblast1, -min, -max, 6)
		local function damage(params)
			if isCreature(params.pid) then
				doAreaCombatHealth(params.pid, element, getThingPos(params.pid), params.x, -min, -max, 6)
			end
		end
		addEvent(damage, 200, {pid = pk, x = rageblast2})
		addEvent(damage, 400, {pid = pk, x = rageblast3})
		addEvent(damage, 600, {pid = pk, x = rageblast4})
	return true;
end
