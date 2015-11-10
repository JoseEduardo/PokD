function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		local function spark(params)
			if isCreature(params.pid) then
				if isCreature(params.pid) then
					doSendDistanceShoot(getThingPos(params.pid), params.ownerpos, 40)
					doAreaCombatHealth(pk, element, params.ownerpos, 0, -min, -max, 48)
				end
			end
		end
		for a = -1, 1 do
			for b = -1, 1 do
				ownerpos = getThingPos(pk)
				ownerpos.x = ownerpos.x+a
				ownerpos.y = ownerpos.y+b
				addEvent(spark, math.abs(a)*350 + math.abs(b)*650, {pid = pk, ownerpos = ownerpos})
			end
		end		
	return true;
end
