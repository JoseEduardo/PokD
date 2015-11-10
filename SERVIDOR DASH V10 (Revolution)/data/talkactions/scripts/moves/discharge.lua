function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		setPlayerStorageValue(pk, 15, 0)
		local chac = pk
		local function discharge(params)
			if isCreature(params.pid) then
				if isCreature(params.pid) then
					if params.pid == chac then
						if getPlayerStorageValue(params.pid, 15) >= 1 then
						return true
						end
						if math.random(1,100) >= 75 then
							doAreaCombatHealth(pk, element, getThingPos(params.pid), charge, -(min*(params.charges)), -(max*(params.charges)), 48)
							setPlayerStorageValue(params.pid, 15, 1)
						else
							if params.charges == 5 then
								doSendAnimatedText(getThingPos(params.pid), "FAIL", 215)
							else
								doSendAnimatedText(getThingPos(params.pid), "CHARGING", 210)
								doSendMagicEffect(getThingPos(params.pid), 48)
							end
						end
					end
				end
			end
		end
		doSendMagicEffect(getThingPos(pk), 48)
		doSendAnimatedText(getThingPos(pk), "CHARGING", 210)
		for charges = 1, 5 do
			addEvent(discharge, charges*1000, {pid = pk, charges = charges})
		end
	return true;
end
