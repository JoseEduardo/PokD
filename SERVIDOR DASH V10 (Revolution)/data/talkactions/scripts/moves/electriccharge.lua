function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
	
		if getPlayerStorageValue(pk, 253) >= 1 then
		return true
		end
   
		setPlayerStorageValue(pk, 253, 1)
		doSendMagicEffect(getThingPos(pk), 207)
		doSendAnimatedText(getThingPos(pk), "FOCUS", 144)

	return true;
end
