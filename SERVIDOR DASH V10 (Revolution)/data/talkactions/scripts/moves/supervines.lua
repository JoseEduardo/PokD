function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		if getCreatureLookDir(pk) == 0 then
			local flamepos = getThingPos(pk)
			flamepos.x = flamepos.x+1
			flamepos.y = flamepos.y+1
			doSendMagicEffect(flamepos, 213)
			doAreaCombatHealth(pk, element, getThingPos(pk), rollout, -min, -max, 255)
		elseif getCreatureLookDir(pk) == 1 then
			local flamepos = getThingPos(pk)
			flamepos.x = flamepos.x+1
			flamepos.y = flamepos.y+1
			doSendMagicEffect(flamepos, 213)
			doAreaCombatHealth(pk, element, getThingPos(pk), rollout, -min, -max, 255)
		elseif getCreatureLookDir(pk) == 2 then
			local flamepos = getThingPos(pk)
			flamepos.x = flamepos.x+1
			flamepos.y = flamepos.y+1
			doSendMagicEffect(flamepos, 213)
			doAreaCombatHealth(pk, element, getThingPos(pk), rollout, -min, -max, 255)
		elseif getCreatureLookDir(pk) == 3 then
			local flamepos = getThingPos(pk)
			flamepos.x = flamepos.x+1
			flamepos.y = flamepos.y+1
			doSendMagicEffect(flamepos, 213)
			doAreaCombatHealth(pk, element, getThingPos(pk), rollout, -min, -max, 255)		
        end
	return true;
end
