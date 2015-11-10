function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		local pos = getThingPos(getMasterTarget(pk))
		local pos2 = getThingPos(getMasterTarget(pk))
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		if hasSqm(pos) and isSightClear(getThingPos(pk), pos, false) then
			if getTileThingByPos(pos) and getTileThingByPos(pos).itemid >= 1 and not isInArray({919, 460, 4820, 4821, 4822, 4823, 4824, 4825}, getTileThingByPos(pos).itemid) and isWalkable(pos) then
				pos = getClosestFreeTile(getMasterTarget(pk), pos)
				doSendDistanceShoot(pos2, pos, 39)
				doTeleportThing(getMasterTarget(pk), pos, false)
				doAreaCombatHealth(pk, element, getThingPos(getMasterTarget(pk)), 0, -min, -max, 134)
				doSendMagicEffect(pos2, 12)
			else
				local newpos = getClosestFreeTile(getMasterTarget(pk), pos)
				doSendDistanceShoot(pos2, newpos, 39)
				doTeleportThing(getMasterTarget(pk), newpos, false)
				doAreaCombatHealth(pk, element, getThingPos(getMasterTarget(pk)), 0, -min, -max, 134)
				doSendMagicEffect(pos2, 12)
			end
		else
			doSendDistanceShoot(pos2, getThingPos(getMasterTarget(pk)), 39)
			doAreaCombatHealth(pk, element, getThingPos(getMasterTarget(pk)), 0, -min, -max, 134)
			doSendMagicEffect(pos2, 12)
		end	
	return true;
end
