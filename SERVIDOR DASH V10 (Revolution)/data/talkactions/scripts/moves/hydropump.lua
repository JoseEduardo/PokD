function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		posit = getThingPos(pk)
		local function tornado(params)
			if isCreature(params.pid) then
				doAreaCombatHealth(params.pid, params.el, posit, params.ar, -min, -max, params.ef)
			else
			end
		end
		addEvent(tornado, 0, {pid = pk, ef = 53, ar = pump1, el = element})
		addEvent(tornado, 500, {pid = pk, ef = 53, ar = pump2, el = element})
	return true;
end
