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
		addEvent(storm, 0, {pid = pk, el = element, ar = ws1, ef = 140})
		addEvent(storm, 500, {pid = pk, el = element, ar = ws2, ef = 140})
		addEvent(storm, 1000, {pid = pk, el = element, ar = ws3, ef = 140})
		addEvent(storm, 1500, {pid = pk, el = element, ar = ws4, ef = 140})
		addEvent(storm, 150, {pid = pk, el = null, ar = ws5, ef = 208})
		addEvent(storm, 450, {pid = pk, el = null, ar = ws5, ef = 208})
		addEvent(storm, 750, {pid = pk, el = null, ar = ws5, ef = 208})
		addEvent(storm, 900, {pid = pk, el = null, ar = ws5, ef = 208})
		addEvent(storm, 1250, {pid = pk, el = null, ar = ws5, ef = 208})
		addEvent(storm, 1550, {pid = pk, el = null, ar = ws5, ef = 208})
	return true;
end
