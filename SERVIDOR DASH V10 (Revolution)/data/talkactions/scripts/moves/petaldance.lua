function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		addEvent(doAreaCombatHealth, 0, pk, element, getThingPos(pk), grassarea, -min, -max, 255)
		local function shoot(params)
			lugar = getThingPos(params.pid)
			for x= -7,7 do
				for y= -6,6 do
				topos = {x=lugar.x+x, y=lugar.y+y, z=lugar.z}
				doSendDistanceShoot(getThingPos(params.pid), topos, 21)
				end
			end
		end
		addEvent(shoot, 0, {pid = pk})
	return true;
end
