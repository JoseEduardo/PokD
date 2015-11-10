function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		posit = getThingPos(pk)
		local function slash(params)
			if isCreature(params.pid) then
				doAreaCombatHealth(params.pid, params.el, posit, params.ar, -min, -max, params.ef)
			else
			end
		end
		addEvent(slash, 0, {pid = pk, el = element, ar = bs1, ef = 117})
		addEvent(slash, 500, {pid = pk, el = element, ar = bs2, ef = 117})
		addEvent(slash, 1000, {pid = pk, el = element, ar = bs3, ef = 117})
		addEvent(slash, 1500, {pid = pk, el = element, ar = bs4, ef = 117})
        addEvent(slash, 2000, {pid = pk, el = element, ar = bs5, ef = 117})
		addEvent(slash, 2500, {pid = pk, el = element, ar = bs6, ef = 117})
		addEvent(slash, 3000, {pid = pk, el = element, ar = bs7, ef = 117})
		addEvent(slash, 3500, {pid = pk, el = element, ar = bs8, ef = 117})
	return true;
end
