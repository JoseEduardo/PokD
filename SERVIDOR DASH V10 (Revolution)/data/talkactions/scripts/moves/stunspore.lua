function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		local d = getCreaturesInRange(getThingPos(pk), 4, 4, 1, 0)
		doAreaCombatHealth(pk, element, getThingPos(pk), confusion, -min, -max, 85)	
		for _,pid in pairs(d) do
		if isCreature(pk) and isCreature(pid) and pid ~= pk then
				if isPlayer(pid) and #getCreatureSummons(pid) >= 1 or canAttackOther(pk, pid) == "Cant" then return false end					
				doConfusion(pid)
			end
		end
	return true;
end
