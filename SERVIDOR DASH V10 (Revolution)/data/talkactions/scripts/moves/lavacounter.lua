function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		function counterLav(param)
			if not isCreature(pk) then return true end
			doAreaCombatHealth(pk, param.dem, getThingPos(pk), param.area, -min, -max, 6)
		end
		
		addEvent(counterLav, 200, {dem = FIREDAMAGE, area = lavaps1})
		addEvent(counterLav, 400, {dem = FIREDAMAGE, area = lavaps2})
		addEvent(counterLav, 600, {dem = FIREDAMAGE, area = lavaps3})
		addEvent(counterLav, 800, {dem = FIREDAMAGE, area = lavaps4})
		outch = {lookType = 742}
		doSetCreatureOutfit(pk, outch, 800)
		SPELL_OUT = false
		
	return true;
end
