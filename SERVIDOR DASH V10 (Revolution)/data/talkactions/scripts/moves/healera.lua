function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		doCreatureAddHealth(pk, max)
		doAreaCombatHealth(pk, element, getThingPos(pk), hl, min, max, CONST_ME_MAGIC_BLUE)
        doSendAnimatedText(getThingPos(pk), "+"..max.."", 35)
	return true;
end
