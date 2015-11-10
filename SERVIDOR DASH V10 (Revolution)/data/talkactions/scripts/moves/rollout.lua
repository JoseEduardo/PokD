function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		if getCreatureName(pk) == "Voltorb" then
			doSetCreatureOutfit(pk, voltorb, 8300)
			doChangeSpeed(pk, 85)
		elseif getCreatureName(pk) == "Electrode" then
			doSetCreatureOutfit(pk, electrode, 8300)
			doChangeSpeed(pk, 101)
		elseif getCreatureName(pk) == "Golem" then
			doSetCreatureOutfit(pk, golem, 8300)
			doChangeSpeed(pk, 160)
		elseif getCreatureName(pk) == "Sandshrew" then
			doSetCreatureOutfit(pk, sandshrew, 8300)
			doChangeSpeed(pk, 160)
		elseif getCreatureName(pk) == "Sandslash" then
			doSetCreatureOutfit(pk, sandslash, 8300)
			doChangeSpeed(pk, 143)
		elseif getCreatureName(pk) == "Donphan" then
			doSetCreatureOutfit(pk, donphan, 8300)
			doChangeSpeed(pk, 143)
		elseif getCreatureName(pk) == "Miltank" then
			doSetCreatureOutfit(pk, miltank, 8300)
			doChangeSpeed(pk, 143)
		end
		setPlayerStorageValue(pk, 4, 1)
		local function roll(params)
			if isCreature(params.pid) then
				if isCreature(params.pid) then
					if getCreatureCondition(params.pid, CONDITION_OUTFIT) == true then
						doAreaCombatHealth(params.pid, element, getThingPos(params.pid), rollout, -min, -min, 255)
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
