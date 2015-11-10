function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		if getCreatureLookDir(pk) == 0 then
			rock1 = {x=getThingPos(pk).x+1, y=getThingPos(pk).y-1, z=getThingPos(pk).z}
			rock2 = {x=getThingPos(pk).x+0, y=getThingPos(pk).y-1, z=getThingPos(pk).z}
			rock3 = {x=getThingPos(pk).x-1, y=getThingPos(pk).y-1, z=getThingPos(pk).z}
			doAreaCombatHealth(pk, element, getThingPos(pk), tombn, -min, -max, 118)
		elseif getCreatureLookDir(pk) == 2 then
			rock1 = {x=getThingPos(pk).x+1, y=getThingPos(pk).y+1, z=getThingPos(pk).z}
			rock2 = {x=getThingPos(pk).x+0, y=getThingPos(pk).y+1, z=getThingPos(pk).z}
			rock3 = {x=getThingPos(pk).x-1, y=getThingPos(pk).y+1, z=getThingPos(pk).z}
			doAreaCombatHealth(pk, element, getThingPos(pk), tombs, -min, -max, 118)
		elseif getCreatureLookDir(pk) == 3 then
			rock1 = {x=getThingPos(pk).x-1, y=getThingPos(pk).y+1, z=getThingPos(pk).z}
			rock2 = {x=getThingPos(pk).x-1, y=getThingPos(pk).y+0, z=getThingPos(pk).z}
			rock3 = {x=getThingPos(pk).x-1, y=getThingPos(pk).y-1, z=getThingPos(pk).z}
			doAreaCombatHealth(pk, element, getThingPos(pk), tombw, -min, -max, 118)
		elseif getCreatureLookDir(pk) == 1 then
			rock1 = {x=getThingPos(pk).x+1, y=getThingPos(pk).y+1, z=getThingPos(pk).z}
			rock2 = {x=getThingPos(pk).x+1, y=getThingPos(pk).y+0, z=getThingPos(pk).z}
			rock3 = {x=getThingPos(pk).x+1, y=getThingPos(pk).y-1, z=getThingPos(pk).z}
			doAreaCombatHealth(pk, element, getThingPos(pk), tombe, -min, -max, 118)
		end
			doSendDistanceShoot(getThingPos(pk), rock1, 11)
			doSendDistanceShoot(getThingPos(pk), rock2, 11)
			doSendDistanceShoot(getThingPos(pk), rock3, 11)
	return true;
end
