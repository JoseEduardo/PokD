function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		if getCreatureLookDir(pk) == 0 then
			doAreaCombatHealth(pk, COMBAT_PDAMAGE, getThingPos(pk), wingn, -min, -max, 128)
			doAreaCombatHealth(pk, element, getThingPos(pk), wingdn, -min, -max, 114)
		elseif getCreatureLookDir(pk) == 1 then
			doAreaCombatHealth(pk, COMBAT_PDAMAGE, getThingPos(pk), winge, -min, -max, 129)
			doAreaCombatHealth(pk, element, getThingPos(pk), wingde, -min, -max, 114)
		elseif getCreatureLookDir(pk) == 2 then
			doAreaCombatHealth(pk, COMBAT_PDAMAGE, getThingPos(pk), wings, -min, -max, 131)
			doAreaCombatHealth(pk, element, getThingPos(pk), wingds, -min, -max, 114)
		elseif getCreatureLookDir(pk) == 3 then
			doAreaCombatHealth(pk, COMBAT_PDAMAGE, getThingPos(pk), wingw, -min, -max, 130)
			doAreaCombatHealth(pk, element, getThingPos(pk), wingdw, -min, -max, 114)
		end
	return true;
end
