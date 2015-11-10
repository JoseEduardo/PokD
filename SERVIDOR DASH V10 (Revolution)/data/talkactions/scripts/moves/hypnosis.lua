function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		setPlayerStorageValue(getMasterTarget(pk), 3, 1)
		local alvo = getMasterTarget(pk)
		doSendDistanceShoot(getThingPos(pk), getThingPos(getMasterTarget(pk)), 24)
		doAreaCombatHealth(pk, element, getThingPos(getMasterTarget(pk)), 0, -min, -max, 136)
		local function string(params)
			if isCreature(params.alvo) then
				if getPlayerStorageValue(params.alvo, 3) >= 1 then
					doSendMagicEffect(getThingPos(params.alvo), 136)
				end
			end
		end
		local function normalstr(params)
			if isCreature(params.alvo) then
				if getPlayerStorageValue(params.alvo, 3) >= 1 then
					setPlayerStorageValue(params.alvo, 3, -1)
				end
			end
		end
		addEvent(string, 250, {alvo = alvo})
		addEvent(string, 500, {alvo = alvo})
		addEvent(string, 750, {alvo = alvo})
		addEvent(string, 1000, {alvo = alvo})
		addEvent(string, 1250, {alvo = alvo})
		addEvent(string, 1500, {alvo = alvo})
		addEvent(string, 1750, {alvo = alvo})
		addEvent(string, 2000, {alvo = alvo})
		addEvent(string, 2250, {alvo = alvo})
		addEvent(string, 2500, {alvo = alvo})
		addEvent(string, 2750, {alvo = alvo})
		addEvent(string, 3000, {alvo = alvo})
		addEvent(normalstr, 3050, {alvo = alvo})
	return true;
end
