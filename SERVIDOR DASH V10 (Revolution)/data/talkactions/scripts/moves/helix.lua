function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		function rotHelix(param)
			if not isCreature(pk) then return true end
			doAreaCombatHealth(pk, param.dem, getThingPos(pk), param.area, -min, -max, param.effect)
		end
		outch = {lookType = 740}
		doSetCreatureOutfit(pk, outch, 800)
		addEvent(rotHelix, 200, {dem = BUGDAMAGE, area = helixs1, effect = 128})
		addEvent(rotHelix, 400, {dem = BUGDAMAGE, area = helixs2, effect = 129})
		addEvent(rotHelix, 600, {dem = BUGDAMAGE, area = helixs3, effect = 131})
		addEvent(rotHelix, 800, {dem = BUGDAMAGE, area = helixs4, effect = 130})
		SPELL_OUT = false
		
	return true;
end
