function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		doSendMagicEffect(getThingPos(pk), 14)
		doCreatureAddHealth(pk, max)
		doSendAnimatedText(getThingPos(pk), "+"..max.."", 35)
	return true;
end
