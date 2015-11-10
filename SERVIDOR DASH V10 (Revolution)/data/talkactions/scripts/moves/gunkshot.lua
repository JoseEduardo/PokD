function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		local alvinho = getMasterTarget(pk)
		local function rocksup(params)
			if isCreature(params.pid) then
				if isCreature(getMasterTarget(params.pid)) then
					if getMasterTarget(params.pid) ~= params.alvinho then
					return true
					end
					jus = getThingPos(params.pid)
					jusa = getThingPos(getMasterTarget(params.pid))
					if jusa.x > jus.x then
						xx = 0
					elseif jusa.x < jus.x then
						xx = -1
					else
						xx = 0
					end
					local newpos = {x = getThingPos(params.pid).x+(xx), y = jusa.y - 3, z = getThingPos(params.pid).z}
					doSendDistanceShoot(getThingPos(params.pid), newpos, 6)
				end
			end
		end

		local function rocksdown(params)
			if isCreature(params.pid) then
				if isCreature(getMasterTarget(params.pid)) then
					if getMasterTarget(params.pid) ~= params.alvinho then
					return true
					end
					jus = getThingPos(params.pid)
					jusa = getThingPos(getMasterTarget(params.pid))
					if jusa.x > jus.x then
						xx = 0
					elseif jusa.x < jus.x then
						xx = -1
					else
						xx = 0
					end
					local newpos = {x = getThingPos(params.pid).x+(xx), y = jusa.y - 3, z = getThingPos(params.pid).z}
					doSendDistanceShoot(newpos, getThingPos(getMasterTarget(params.pid)), 6)
					doAreaCombatHealth(params.pid, element, getThingPos(getMasterTarget(params.pid)), bomb, -min, -max, 116)
				end
			end
		end
		addEvent(rocksup, 0, {pid = pk, alvinho = alvinho})
		addEvent(rocksdown, 300, {pid = pk, alvinho = alvinho})
	return true;
end
