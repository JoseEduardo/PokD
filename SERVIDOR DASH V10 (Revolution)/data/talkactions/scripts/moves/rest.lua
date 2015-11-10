function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		if getCreatureName(pk) == "Snorlax" then
			doSetCreatureOutfit(pk, snorlax, 5000)
			doChangeSpeed(pk, -getCreatureSpeed(pk))
		end
		setPlayerStorageValue(pk, 4, 1)
		setPlayerStorageValue(pk, 169157, 1)
		local function rest(params)
			if isCreature(params.pid) then
				if isCreature(params.pid) then
					if getCreatureCondition(params.pid, CONDITION_OUTFIT) == true then
						doCreatureAddHealth(params.pid, max)
						doSendAnimatedText(getThingPos(params.pid), "+"..max.."", 32)
						doChangeSpeed(params.pid, -getCreatureSpeed(params.pid))
					end
				end
			end
		end
		for r = 1, 4 do
		    addEvent(rest, 1000*r, {pid = pk})
		end
		local function stoprest(params)
			if isCreature(params.pid) then
				if isCreature(params.pid) then
					doChangeSpeed(params.pid, getCreatureBaseSpeed(params.pid))
					if getPlayerStorageValue(params.pid, 4) >= 1 then
						setPlayerStorageValue(params.pid, 4, 0)
						setPlayerStorageValue(params.pid, 169157, 0)
					end
				end
			end
		end
		addEvent(stoprest, 4300, {pid = pk})
	return true;
end
