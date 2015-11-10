function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		local function fall(params)
			if isCreature(params.pid) then
				if isCreature(params.pid) then
					local pos = getThingPos(params.pid)
					pos.x = pos.x + math.random(-4,4)
					pos.y = pos.y + math.random(-4,4)
					local frompos = getThingPos(params.pid)
					frompos.x = pos.x - 7
					frompos.y = pos.y - 6
					doSendDistanceShoot(frompos, pos, 35)
					doAreaCombatHealth(params.pid, element, pos, 0, -min, -max, 52)
				end
			end
		end
        for rocks = 1, 72 do
            addEvent(fall, rocks*35, {pid = pk})
        end
	return true;
end
