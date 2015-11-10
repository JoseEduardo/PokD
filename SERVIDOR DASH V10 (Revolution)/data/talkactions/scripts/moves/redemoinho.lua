function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		if getCreatureName(pk) == "Hitmontop" then
			doSetCreatureOutfit(pk, {lookType = 668}, 8300)
			doChangeSpeed(pk, 100)
		end
		setPlayerStorageValue(pk, 4, 1)
		local function roll(params)
			if isCreature(params.pid) then
				if isCreature(params.pid) then
					if getCreatureCondition(params.pid, CONDITION_OUTFIT) == true then
						doAreaCombatHealth(pk, element, getThingPos(pk), rollout, -min, -min, 255)
					end
				end
			end
		end
		for r = 1, 8 do
			addEvent(roll, 1000*r, {pid = pk})
		end

		local function stoproll(params)
			if isCreature(params.pid) then
				if isCreature(params.pid) then
					doChangeSpeed(params.pid, -101)
					if getPlayerStorageValue(params.pid, 5) >= 1 then
						setPlayerStorageValue(params.pid, 4, 1)
					end
				end
			end
		end
		addEvent(stoproll, 8300, {pid = pk})

	return true;
end
