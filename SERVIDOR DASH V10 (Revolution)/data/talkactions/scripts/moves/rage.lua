function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		if not getMasterTarget(pk) then print("Move Prescisa de Target")return end
		doAreaCombatHealth(pk, element, getThingPos(getMasterTarget(pk)), 0, -min, -max, 110)
		local hitalvo = getMasterTarget(pk)
		local function hit(params)
			if isCreature(params.pid) then
				if isCreature(getMasterTarget(params.pid)) then
					if getMasterTarget(params.pid) == params.hitalvo then
						doAreaCombatHealth(params.pid, FLYDAMAGE, getThingPos(getMasterTarget(params.pid)), 0, -min, -max, 110)
						doSendMagicEffect(getThingPos(params.pid), CONST_ME_MAGIC_RED)
					end
				end
			end
		end
		addEvent(hit, 1000, {pid = pk, hitalvo = hitalvo})
		addEvent(hit, 2000, {pid = pk, hitalvo = hitalvo})
		addEvent(hit, 3000, {pid = pk, hitalvo = hitalvo})
		addEvent(hit, 4000, {pid = pk, hitalvo = hitalvo})
		addEvent(hit, 5000, {pid = pk, hitalvo = hitalvo})
		addEvent(hit, 6000, {pid = pk, hitalvo = hitalvo})
	return true;
end
