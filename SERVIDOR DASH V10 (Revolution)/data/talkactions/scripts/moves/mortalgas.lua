function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		local function gas(params)
	        if isCreature(params.pid) then
				doAreaCombatHealth(params.pid, element, getThingPos(pk), confusion, -min, -max, 114)
	        end
	    end
	    local function gas2(params)
	        if isCreature(params.pid) then
				doAreaCombatHealth(params.pid, element, getThingPos(pk), hl, -min, -max, 114)
	        end
	    end
        addEvent(gas, 000, {pid = pk, cb = cb})
        addEvent(gas2, 500, {pid = pk, cb = cb})
        addEvent(gas, 1000, {pid = pk, cb = cb})
        addEvent(gas2, 1500, {pid = pk, cb = cb})
        addEvent(gas, 2200, {pid = pk, cb = cb})
        addEvent(gas2, 2700, {pid = pk, cb = cb})
        addEvent(gas, 3200, {pid = pk, cb = cb})
        addEvent(gas2, 3900, {pid = pk, cb = cb})
        addEvent(gas, 4400, {pid = pk, cb = cb})
        addEvent(gas2, 4900, {pid = pk, cb = cb})
	return true;
end
