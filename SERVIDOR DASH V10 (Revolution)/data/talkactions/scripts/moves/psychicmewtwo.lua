function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		posit = getThingPos(pk)
		local function storm(params)
			if isCreature(params.pid) >= 1 then
				doAreaCombatHealth(params.pid, params.el, posit, params.ar, -min, -max, params.ef)
			else
			end
		end
		addEvent(storm, 0, {pid = pk, el = element, ar = ps1, ef = 136})
		addEvent(storm, 500, {pid = pk, el = element, ar = ps2, ef = 136})
		addEvent(storm, 700, {pid = pk, el = null, ar = ps1, ef = CONST_ME_POFF})
		addEvent(storm, 1000, {pid = pk, el = element, ar = ps1, ef = 136})
		addEvent(storm, 1200, {pid = pk, el = element, ar = ps2, ef = 136})
		addEvent(storm, 1500, {pid = pk, el = null, ar = ps2, ef = CONST_ME_POFF})
	return true;
end
