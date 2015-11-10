function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		posit = getThingPos(pk)
		local function storm(params)
			if isCreature(params.pid) then
				doAreaCombatHealth(params.pid, params.el, posit, params.ar, -min, -max, params.ef)
			else
			end
		end
		addEvent(storm, 0, {pid = pk, el = element, ar = pu1, ef = 136})
		addEvent(storm, 500, {pid = pk, el = element, ar = pu2, ef = 133})
		addEvent(storm, 1000, {pid = pk, el = element, ar = pu3, ef = 136})
		addEvent(storm, 1500, {pid = pk, el = element, ar = pu4, ef = 137})
	return true;
end
