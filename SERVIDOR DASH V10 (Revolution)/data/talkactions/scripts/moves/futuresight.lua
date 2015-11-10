function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		doSendMagicEffect(getThingPos(pk), 132)
		local seusummon = pk
		local function normal(params)
			if isCreature(params.pid) then
				if isCreature(params.pid) then
					if getPlayerStorageValue(params.pid, 35) >= 1 and params.pid == seusummon then
						setPlayerStorageValue(params.pid, 35, 0)
						doSendMagicEffect(getThingPos(params.pid), 3)
					end
				end
			end
		end
		setPlayerStorageValue(pk, 35, 1)
		addEvent(normal, 8000, {pid = pk})
	return true;
end
