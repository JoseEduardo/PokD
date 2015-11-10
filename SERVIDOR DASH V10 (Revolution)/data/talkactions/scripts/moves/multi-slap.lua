function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
        local function slap(params)
            if isMonster(getMasterTarget(params.pid)) then
                doAreaCombatHealth(params.pid, element, getThingPos(getMasterTarget(params.pid)), 0, -min, -max, 110)
            else
            end
        end
        addEvent(slap, 0, {pid = pk})
        addEvent(slap, 400, {pid = pk})
        addEvent(slap, 800, {pid = pk})
	return true;
end
