function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		doSendMagicEffect(getThingPos(pk), 132)
		doCreatureAddHealth(pk, max)
		doSendAnimatedText(getThingPos(pk), "+"..max.."", 132)
	return true;
end
