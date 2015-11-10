function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		doSendDistanceShoot(getThingPos(pk), {x=getThingPos(pk).x, y=getThingPos(pk).y-5, z=getThingPos(pk).z}, 2)
		local function spout(params)
			if isCreature(params.pid) then
				for x = -2,2 do
					for y = -2,2 do
						local newpos = getThingPos(params.pid)
						newpos.x = newpos.x+x
						newpos.y = newpos.y+y
						doSendDistanceShoot({x=getThingPos(params.pid).x, y=getThingPos(params.pid).y-5, z=getThingPos(params.pid).z}, newpos, 2)
					end
				end
			end
		end
		local function spdmg(params)
			if isCreature(params.pid) then
				doAreaCombatHealth(params.pid, element, getThingPos(params.pid), waterspout, -min, -max, 68)
			end
		end
		addEvent(spout, 300, {pid = pk})
		addEvent(spdmg, 450, {pid = pk})
	return true;
end
