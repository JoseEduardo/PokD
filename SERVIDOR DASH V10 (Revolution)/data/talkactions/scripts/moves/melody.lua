function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		
		local uid = checkAreaUid(getThingPos(pk), checkMelody, 1, 1)
		for _,pid in pairs(uid) do
			if isCreature(pk) and isCreature(pid) and pid ~= pk then
				if isPlayer(pid) and #getCreatureSummons(pid) >= 1 then return false end
				doAreaCombatHealth(pk, NORMALDAMAGE, getThingPos(pk), checkMelodyCombat, -min, -max, 22)					
				doSleep(pid)
			end
		end
		SPELL_OUT = false
	return true;
end
