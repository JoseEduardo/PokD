function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		local pos = getThingPos(getMasterTarget(pk))
		local pos2 = getThingPos(getMasterTarget(pk))
		local pos3 = getThingPos(pk)
		pos.x = pos.x + math.random(-1,1)
		pos.y = pos.y + math.random(-1,1)
		if hasSqm(pos)  then
			if getTileThingByPos(pos) and getTileThingByPos(pos).itemid >= 1 and not isInArray({919, 460, 4820, 4821, 4822, 4823, 4824, 4825}, getTileThingByPos(pos).itemid) and isWalkable(pos) then
				pos = getClosestFreeTile(getMasterTarget(pk), pos)
				doSendMagicEffect(pos3, 211)
				doTeleportThing(pk, pos, false)
				doAreaCombatHealth(pk, element, getThingPos(getMasterTarget(pk)), 0, -min, -max, 159)
			else
				local newpos = getClosestFreeTile(getMasterTarget(pk), pos)
				doSendMagicEffect(pos3, 211)
				doTeleportThing(pk, newpos, false)
				doAreaCombatHealth(pk, element, getThingPos(getMasterTarget(pk)), 0, -min, -max, 159)
			end
		else
			doSendMagicEffect(pos3, 211)
			doTeleportThing(pk, pos3, false)
			doAreaCombatHealth(pk, element, getThingPos(getMasterTarget(pk)), 0, -min, -max, 159)
		end
	return true;
end
