function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		doSendMagicEffect(getThingPos(pk), CONST_ME_MAGIC_RED)
		setPlayerStorageValue(pk, 254, 1)
		local function quiet(params)
			if isCreature(params.pid) then
				if isCreature(params.pid) then
					if getPlayerStorageValue(params.pid, 254) >= 1 then
						doSendMagicEffect(getThingPos(params.pid), 132)
					end
				end
			end
		end
		local function desc(params)
			if isCreature(params.pid) then
				if isCreature(params.pid) then
					if getPlayerStorageValue(params.pid, 254) >= 1 then
						setPlayerStorageValue(params.pid, 254, 0)
					end
				end
			end
		end
		for calm = 1, 12 do
			addEvent(quiet, calm*500, {pid = pk})
		end
		addEvent(desc, 12*500, {pid = pk})
	return true;
end
