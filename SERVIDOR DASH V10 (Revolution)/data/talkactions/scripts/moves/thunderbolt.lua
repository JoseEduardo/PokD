function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		local posalvo = getThingPos(getMasterTarget(pk))
		local boltalvo = getMasterTarget(pk)
		posalvo.x = posalvo.x-2
		posalvo.y = posalvo.y-6
		doSendDistanceShoot(posalvo, getThingPos(getMasterTarget(pk)), 41)
		local function bolt(params)
			if isCreature(params.pid) then
				if isCreature(getMasterTarget(params.pid)) then
					if getMasterTarget(params.pid) == params.boltalvo then
						doAreaCombatHealth(params.pid, element, getThingPos(getMasterTarget(params.pid)), 0, -min, -max, 48)
					end
				end
			end
		end
		addEvent(bolt, 200, {pid = pk, boltalvo = boltalvo})
	return true;
end
