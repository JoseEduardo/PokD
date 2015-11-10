function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element

        local function attaque(params)
			if getCreatureLookDir(pk) == 0 then
				doAreaCombatHealth(pk, COMBAT_PDAMAGE, getThingPos(pk), wingn, -min, -max, 128)
				doAreaCombatHealth(pk, element, getThingPos(pk), wingdn, -min, -max, CONST_ME_NONE)
			elseif getCreatureLookDir(pk) == 1 then
				doAreaCombatHealth(pk, COMBAT_PDAMAGE, getThingPos(pk), winge, -min, -max, 129)
				doAreaCombatHealth(pk, element, getThingPos(pk), wingde, -min, -max, CONST_ME_NONE)
			elseif getCreatureLookDir(pk) == 2 then
				doAreaCombatHealth(pk, COMBAT_PDAMAGE, getThingPos(pk), wings, -min, -max, 131)
				doAreaCombatHealth(pk, element, getThingPos(pk), wingds, -min, -max, CONST_ME_NONE)
			elseif getCreatureLookDir(pk) == 3 then
				doAreaCombatHealth(pk, COMBAT_PDAMAGE, getThingPos(pk), wingw, -min, -max, 130)
				doAreaCombatHealth(pk, element, getThingPos(pk), wingdw, -min, -max, CONST_ME_NONE)
			end
        end
		addEvent(attaque, 0, {owner = owner})
		addEvent(attaque, 500, {owner = owner})
	return true;
end
