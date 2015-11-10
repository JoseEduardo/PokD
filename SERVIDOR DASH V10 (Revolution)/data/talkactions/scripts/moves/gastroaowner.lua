function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		target = getMasterTarget(pk)
		pos1 = getThingPos(target)
		posa = getThingPos(target)
		pos2 = getThingPos(target)
		pos3 = getThingPos(target)
		posb = getThingPos(target)
		pos1.x = pos1.x-2
		pos2.x = pos2.x+2
		pos1.y = pos1.y-4
		pos2.y = pos2.y-4
		pos3.y = pos3.y-4
		posa.x = posa.x-1
		posb.x = posb.x+1
		doSendDistanceShoot(pos1, posa, 14)
		doSendDistanceShoot(pos3, getThingPos(target), 14)
		doSendDistanceShoot(pos2, posb, 14)
		doAreaCombatHealth(pk, element, getThingPos(getMasterTarget(pk)), aowner, -min, -max, 143)
	return true;
end
