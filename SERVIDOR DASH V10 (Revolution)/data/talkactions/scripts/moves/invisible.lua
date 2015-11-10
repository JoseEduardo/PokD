function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		doDisapear(pk)
		doSendMagicEffect(getThingPosWithDebug(pk), 134)
		if isMonster(pk) then
			local pos = getThingPosWithDebug(pk)                           --alterei!
			doTeleportThing(pk, {x=4, y=3, z=10}, false)
			doTeleportThing(pk, pos, false)
		end
		addEvent(doAppear, 4000, pk)
		
	return true;
end
