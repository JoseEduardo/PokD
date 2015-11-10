function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		doSendDistanceShoot(getThingPos(pk), getThingPos(getMasterTarget(pk)), 5)
		local alvo = getMasterTarget(pk)
		local leecher = pk
		local function suck(params)
			if isCreature(params.pid) then
				if isCreature(params.alvo) then
					if pk == leecher then
						doSendMagicEffect(getThingPos(params.pid), 14)
						local life = getCreatureHealth(alvo)
						doAreaCombatHealth(params.pid, element, getThingPos(params.alvo), 0, -min, -max, 45)
						local newlife = life - getCreatureHealth(alvo)
						if newlife >= 1 then
							doCreatureAddHealth(params.pid, newlife)
							doSendAnimatedText(getThingPos(params.pid), "+"..newlife.."", 35)
						end
					end
				end
			end
		end
		addEvent(suck, 2000, {pid = pk, alvo = alvo})
		addEvent(suck, 4000, {pid = pk, alvo = alvo})
		addEvent(suck, 6000, {pid = pk, alvo = alvo})
		addEvent(suck, 8000, {pid = pk, alvo = alvo})
		addEvent(suck, 10000, {pid = pk, alvo = alvo})
	return true;
end
