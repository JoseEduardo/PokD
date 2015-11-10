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
				end
			end
		end
		addEvent(ver, 4500, {mudalvo = mudalvo})
		doSendDistanceShoot(getThingPos(pk), getThingPos(getMasterTarget(pk)), 1)
		doAreaCombatHealth(pk, element, getThingPos(getMasterTarget(pk)), 0, -min, -max, 34)
	return true;
end
