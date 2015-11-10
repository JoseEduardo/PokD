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
		addEvent(tornado, 0, {pid = pk, ef = 42, ar = tor1, el = element})
		addEvent(tornado, 500, {pid = pk, ef = 42, ar = tor2, el = element})
		addEvent(tornado, 1000, {pid = pk, ef = 42, ar = tor3, el = element})
		addEvent(tornado, 500, {pid = pk, ef = CONST_ME_POFF, ar = tor1, el = null})
		addEvent(tornado, 1200, {pid = pk, ef = CONST_ME_POFF, ar = tor2, el = null})
		addEvent(tornado, 1900, {pid = pk, ef = CONST_ME_POFF, ar = tor2, el = null})
		addEvent(tornado, 1900, {pid = pk, ef = CONST_ME_POFF, ar = tor3, el = null})
	return true;
end
