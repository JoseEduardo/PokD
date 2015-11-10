function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		doAreaCombatHealth(getCreatureMaster(pk), element, getThingPos(getMasterTarget(pk)), 0, -min, -max, 112)
		local function punch(params)
			if isMonster(getMasterTarget(params.pid)) then
				if isCreature(params.pid) then
					doAreaCombatHealth(params.pid, null, getThingPos(getMasterTarget(params.pid)), params.ar, 0, 0, 17)
				else
				end
			else
			end
		end
		addEvent(punch, 50, {pid = pk, ar = dynpun1})
		addEvent(punch, 150, {pid = pk, ar = dynpun2})
		addEvent(punch, 450, {pid = pk, ar = dynpun3})
		addEvent(punch, 550, {pid = pk, ar = dynpun4})
		addEvent(punch, 750, {pid = pk, ar = dynpun5})
	return true;
end
