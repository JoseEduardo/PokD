function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		if getCreatureName(pk) == "Scyther" then
			doSetCreatureOutfit(pk, scyther, 8300)
			doChangeSpeed(pk, 145)
		end
		setPlayerStorageValue(pk, 4, 1)
		local function team(params)
			if isCreature(params.pid) then
				if isCreature(params.pid) then
					if getCreatureCondition(params.pid, CONDITION_OUTFIT) == true then
						doSendAnimatedText(getThingPos(params.pid), "+"..max.."", 15)
					end
				end
			end
		end
		for r = 1, 8 do
		    addEvent(team, 1000*r, {pid = pk})
		end
		local function stopteam(params)
			if isCreature(params.pid) then
				if isCreature(params.pid) then
					doChangeSpeed(params.pid, -145)
					if getPlayerStorageValue(params.pid, 4) >= 1 then
						setPlayerStorageValue(params.pid, 4, 0)
					end
				end
			end
		end
		addEvent(stopteam, 8300, {pid = pk})
	return true;
end
