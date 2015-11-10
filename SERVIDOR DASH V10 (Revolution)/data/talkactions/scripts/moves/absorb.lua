function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		local life = getCreatureHealth(getMasterTarget(pk))
		doAreaCombatHealth(pk, element, getThingPos(getMasterTarget(pk)), 0, -min, -max, 14)
		local newlife = life - getCreatureHealth(getMasterTarget(pk))
		doSendMagicEffect(getThingPos(pk), 14)
		doCreatureAddHealth(pk, newlife)
		doSendAnimatedText(getThingPos(pk), "+"..newlife.."", 35)
	return true;
end
