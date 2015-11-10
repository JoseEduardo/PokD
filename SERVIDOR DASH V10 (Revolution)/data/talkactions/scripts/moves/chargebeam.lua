function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		for pa = -1, 1 do
			for pb = -1, 1 do
				local sumpos = getThingPos(pk)
				sumpos.x = sumpos.x+pa
				sumpos.y = sumpos.y+pb
				if sumpos ~= getThingPos(pk) then
					doSendDistanceShoot(sumpos, getThingPos(pk), 40)
				end
			end
		end
		local function dmgbeam(params)
			if isCreature(params.pid) then
				if isCreature(params.pid) then
					if getCreatureLookDir(params.pid) == 0 then
						doAreaCombatHealth(params.pid, element, getThingPos(params.pid), beamn, -min, -max, 48)
					elseif getCreatureLookDir(params.pid) == 1 then
						doAreaCombatHealth(params.pid, element, getThingPos(params.pid), beame, -min, -max, 48)
					elseif getCreatureLookDir(params.pid) == 2 then
						doAreaCombatHealth(params.pid, element, getThingPos(params.pid), beams, -min, -max, 48)
					elseif getCreatureLookDir(params.pid) == 3 then
						doAreaCombatHealth(params.pid, element, getThingPos(params.pid), beamw, -min, -max, 48)
					end
				end
			end
		end
		addEvent(dmgbeam, 500, {pid = pk})
	return true;
end
