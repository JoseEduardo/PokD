function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
        doAreaCombatHealth(pk, element, getThingPos(getMasterTarget(pk)), 0, -min, -max, 15)
        local hitalvo = getMasterTarget(pk)
        local function hit(params)
            if isCreature(params.pid) then
                if isCreature(getMasterTarget(params.pid)) then
					if getMasterTarget(params.pid) == params.hitalvo then
						doAreaCombatHealth(params.pid, NORMALDAMAGE, getThingPos(getCreatureTarget(params.getCreatureMaster(pk))), 0, -min, -max, 42)
					end
                end
            end
        end
        local function hitdois(params)
            if isCreature(params.pid) then
                if isCreature(getMasterTarget(params.pid)) then
					if getMasterTarget(params.pid) == params.hitalvo then
						doAreaCombatHealth(params.pid, ICEDAMAGE, getThingPos(getMasterTarget(params.pid)), 0, -min, -max, 52)
					end
                end
            end
        end
        addEvent(hit, 480, {pid = pk, hitalvo = hitalvo})
        addEvent(hitdois, 1050, {pid = pk, hitalvo = hitalvo})
	return true;
end
