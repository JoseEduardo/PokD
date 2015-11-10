function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		local function ep1(params)
	        if isCreature(params.pid) then
				doAreaCombatHealth(params.pid, element, getThingPos(pk), epi1, -min, -max, 127)
	        end
	    end
	    local function ep2(params)
	        if isCreature(params.pid) then
				doAreaCombatHealth(params.pid, element, getThingPos(pk), epi2, -min, -max, 127)
	        end
	    end
	    local function ep3(params)
	        if isCreature(params.pid) then
				doAreaCombatHealth(params.pid, element, getThingPos(pk), epi3, -min, -max, 127)
	        end
	    end
        addEvent(ep1, 000, {pid = pk, cb = cb})
        addEvent(ep2, 500, {pid = pk, cb = cb})
        addEvent(ep3, 1000, {pid = pk, cb = cb})
	return true;
end
