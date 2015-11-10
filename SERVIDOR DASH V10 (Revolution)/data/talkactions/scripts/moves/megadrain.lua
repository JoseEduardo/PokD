function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element

		local uid = checkAreaUid(getThingPos(pk), checkMega, 1, 1)
		for _,pid in pairs(uid) do
			if isCreature(pk) and isCreature(pid) and pid ~= pk then
				if isPlayer(pid) and #getCreatureSummons(pid) >= 1 then return false end
		
				local life = getCreatureHealth(pid)

				doAreaCombatHealth(pk, GRASSDAMAGE, getThingPos(pid), 0, -min, -max, 14)

				local newlife = life - getCreatureHealth(pid)

				doSendMagicEffect(getThingPos(pk), 14)
				if newlife >= 1 then
					doCreatureAddHealth(pk, newlife)
					doSendAnimatedText(getThingPos(pk), "+"..newlife.."", 32)
				end  
			end
		end
	return true;
end
