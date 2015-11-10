function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		setPlayerStorageValue(getMasterTarget(pk), 3, 1)
		local mudalvo = getMasterTarget(pk)
		local function ver(params)
			if isCreature(params.mudalvo) then
				if getPlayerStorageValue(params.mudalvo, 3) >= 1 then
					setPlayerStorageValue(params.mudalvo, 3, -1)
					doChangeSpeed(mudalvo, -(getCreatureSpeed(mudalvo)/3))
					doSendMagicEffect(getThingPos(mudalvo), 31)
				end
			end
		end
		local function voltar(params)
			if isCreature(params.mudalvo) then
				doChangeSpeed(params.mudalvo, -getCreatureSpeed(params.mudalvo))
				doChangeSpeed(params.mudalvo, getCreatureBaseSpeed(params.mudalvo))
			end
		end
		addEvent(ver, 5000, {mudalvo = mudalvo})
		addEvent(voltar, 10000, {mudalvo = mudalvo})
		doSendDistanceShoot(getThingPos(pk), getThingPos(getMasterTarget(pk)), 3)
		doAreaCombatHealth(pk, element, getThingPos(getMasterTarget(pk)), 0, -min, -max, 19)
	return true;
end
