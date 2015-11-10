function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		if getCreatureLookDir(pk) == 0 then
			local flamepos = getThingPos(pk)
			flamepos.x = flamepos.x+0
			flamepos.y = flamepos.y-1
			doSendMagicEffect(flamepos, 217)
			doAreaCombatHealth(pk, element, getThingPos(pk), flamen, -min, -max, 255)
		elseif getCreatureLookDir(pk) == 1 then
			local flamepos = getThingPos(pk)
			flamepos.x = flamepos.x+2
			flamepos.y = flamepos.y+0
			doSendMagicEffect(flamepos, 215)
			doAreaCombatHealth(pk, element, getThingPos(pk), flamee, -min, -max, 255)
		elseif getCreatureLookDir(pk) == 2 then
			local flamepos = getThingPos(pk)
			flamepos.x = flamepos.x-0
			flamepos.y = flamepos.y+2
			doSendMagicEffect(flamepos, 218)
			doAreaCombatHealth(pk, element, getThingPos(pk), flames, -min, -max, 255)
		elseif getCreatureLookDir(pk) == 3 then
			local flamepos = getThingPos(pk)
			flamepos.x = flamepos.x-1
			flamepos.y = flamepos.y+0
			doSendMagicEffect(flamepos, 216)
			doAreaCombatHealth(pk, element, getThingPos(pk), flamew, -min, -max, 255)		
        end
	return true;
end
