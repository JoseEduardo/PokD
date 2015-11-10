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
		addEvent(storm, 200, {pid = pk, el = element, ar = gl1, ef = 3})
		addEvent(storm, 0, {pid = pk, el = element, ar = gl1, ef = 127})
		addEvent(storm, 800, {pid = pk, el = element, ar = gl1, ef = 3})
		addEvent(storm, 600, {pid = pk, el = element, ar = gl2, ef = 127})
	return true;
end
