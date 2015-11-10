function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		if getCreatureLookDir(pk) == 0 then
			local flamepos = getThingPos(pk)
			flamepos.x = flamepos.x+1
			flamepos.y = flamepos.y-1
			doSendMagicEffect(flamepos, 55)
			doAreaCombatHealth(pk, element, getThingPos(pk), flamen, -min, -max, 255)
		elseif getCreatureLookDir(pk) == 1 then
			local flamepos = getThingPos(pk)
			flamepos.x = flamepos.x+3
			flamepos.y = flamepos.y+1
			doSendMagicEffect(flamepos, 58)
			doAreaCombatHealth(pk, element, getThingPos(pk), flamee, -min, -max, 255)
		elseif getCreatureLookDir(pk) == 2 then
			local flamepos = getThingPos(pk)
			flamepos.x = flamepos.x+1
			flamepos.y = flamepos.y+3
			doSendMagicEffect(flamepos, 56)
			doAreaCombatHealth(pk, element, getThingPos(pk), flames, -min, -max, 255)
		elseif getCreatureLookDir(pk) == 3 then
			local flamepos = getThingPos(pk)
			flamepos.x = flamepos.x-1
			flamepos.y = flamepos.y+1
			doSendMagicEffect(flamepos, 57)
			doAreaCombatHealth(pk, element, getThingPos(pk), flamew, -min, -max, 255)
		end
	return true;
end
