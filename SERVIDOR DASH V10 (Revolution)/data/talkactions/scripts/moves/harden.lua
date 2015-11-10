function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		local hardname = getCreatureName(pk)
		setPlayerStorageValue(pk, 4, 1)
		local oldpos = getThingPos(pk)
		local function efect(params)
			if isCreature(params.pid) then
				if getPlayerStorageValue(params.pid, 4) >= 1 then
					doSendMagicEffect(getThingPos(params.pid), 144)
				end
			end
		end
		local function chard(params)
			if isCreature(params.pid) then
				if getPlayerStorageValue(params.pid, 4) >= 1 then
					setPlayerStorageValue(params.pid, 4, -1)
				end
			end
		end
		addEvent(efect, 100, {pid = pk, hardname = hardname})
		addEvent(efect, 1600, {pid = pk, hardname = hardname})
		addEvent(efect, 3100, {pid = pk, hardname = hardname})
		addEvent(efect, 4600, {pid = pk, hardname = hardname})
		addEvent(efect, 6100, {pid = pk, hardname = hardname})
		addEvent(efect, 7600, {pid = pk, hardname = hardname})
		addEvent(efect, 9100, {pid = pk, hardname = hardname})
		addEvent(efect, 10600, {pid = pk, hardname = hardname})
		addEvent(chard, 11000, {pid = pk})
	return true;
end
