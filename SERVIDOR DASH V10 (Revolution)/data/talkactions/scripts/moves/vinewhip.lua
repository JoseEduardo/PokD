function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		if getCreatureLookDir(pk) == 0 then
			area = vinen
			dano = whipn
			effect = 80
		elseif getCreatureLookDir(pk) == 1 then
			area = vinee
			dano = whipe
			effect = 83
		elseif getCreatureLookDir(pk) == 2 then
			area = vines
			dano = whips
			effect = 81
		elseif getCreatureLookDir(pk) == 3 then
			area = vinew
			dano = whipw
			effect = 82
		end
		doAreaCombatHealth(pk, null, getThingPos(pk), area, -min, -min, effect)
		doAreaCombatHealth(pk, element, getThingPos(pk), dano, -min, -max, 255)
	return true;
end
