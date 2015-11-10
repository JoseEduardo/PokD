function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		doAreaCombatHealth(pk, element, getThingPos(getMasterTarget(pk)), 0, -min, -max, 3)
		local hitalvo = getMasterTarget(pk)
		local function hit(params)
			if isCreature(pk) then
				if isCreature(getMasterTarget(params.pid)) then
					if getMasterTarget(params.pid) == params.hitalvo then
						doAreaCombatHealth(pk, NORMALDAMAGE, getThingPos(getMasterTarget(params.pid)), 0, -0, -0, 3)
					end
				end
			end
		end
		addEvent(hit, 80, {pid = pk, hitalvo = hitalvo})
		addEvent(hit, 280, {pid = pk, hitalvo = hitalvo})
		addEvent(hit, 480, {pid = pk, hitalvo = hitalvo})
		addEvent(hit, 680, {pid = pk, hitalvo = hitalvo})
 --------------------NORMAL
	return true;
end
