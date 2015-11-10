function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		local namezito = getCreatureName(pk)
		local namezin = getCreatureName(getMasterTarget(pk))
		local function pee(params)
			if isCreature(params.pid) then
				if isCreature(getMasterTarget(params.pid)) then
					if getCreatureName(params.pid) == namezito then
						if getCreatureName(getMasterTarget(params.pid)) == namezin then
							doSendDistanceShoot(getThingPos(params.pid), getThingPos(params.pid), 15)
							doAreaCombatHealth(params.pid, element, getThingPos(getMasterTarget(params.pid)), 0, -min, -max, 3)
						end
					end
				end
			end
		end
		local delay = 200
		randnee = math.random(1,100)
		if randnee >= 1 and randnee <= 37 then
			a = 2
		elseif randnee >= 38 and randnee <= 74 then
			a = 3
		elseif randnee >= 75 and randnee <= 88 then
			a = 4
		else
			a = 5
		end
		local times = a
		for i = 1,a do
			addEvent(pee, delay, {pid = pk})
			delay = delay + 600
		end
		local function msg(params)
			if isCreature(params.pid) then
				doSendAnimatedText(getThingPos(params.pid), ""..times.." HITS", 35)
			end
		end
		addEvent(msg, 580*a, {pid = pk})
	return true;
end
