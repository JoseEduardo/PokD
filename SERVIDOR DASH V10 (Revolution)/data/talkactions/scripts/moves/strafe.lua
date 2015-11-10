function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		doAreaCombatHealth(pk, element, getThingPos(pk), 0, 0, 0, 255)
		doChangeSpeed(pk,50)
        local function haste(params)
		if not isCreature(params.pid) then return true end
			if isCreature(params.pid) then
				doSendMagicEffect(getThingPos(params.pid), 14)
			end
		end
		local function volta()
		if not isCreature(pk) then return true end
			if pk >= 1 then
				doChangeSpeed(pk,-50)
			end
		end
		for r = 1, 6 do
			addEvent(haste, 1000*r, {pid = pk})
		end
		addEvent(volta, 6000)
	return true;
end
