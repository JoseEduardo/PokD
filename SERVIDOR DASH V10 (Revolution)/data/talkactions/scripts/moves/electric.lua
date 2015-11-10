function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		function rodar(param)
			if not isCreature(pk) then return true end
			doAreaCombatHealth(pk, param.dem, getThingPos(pk), param.area, -min, -max, 207)
		end
		
		addEvent(rodar, 200, {dem = ELECTRICDAMAGE, area = eleps1})
		addEvent(rodar, 400, {dem = ELECTRICDAMAGE, area = eleps2})
		addEvent(rodar, 600, {dem = ELECTRICDAMAGE, area = eleps3})
		addEvent(rodar, 800, {dem = ELECTRICDAMAGE, area = eleps4})
		if getCreatureName(pk) == "Electabuzz" then
			outch = {lookType = 739}
		elseif getCreatureName(pk) == "Shiny Electabuzz" then
			outch = {lookType = 741}
		end
		doSetCreatureOutfit(pk, outch, 800)
		SPELL_OUT = false
		
	return true;
end
