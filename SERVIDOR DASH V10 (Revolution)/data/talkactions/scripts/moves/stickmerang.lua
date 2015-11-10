function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		posit = getThingPos(pk)
		local function bonemerang(params)
			if isCreature(params.pid) then
				doAreaCombatHealth(params.pid, element, params.ar, sand1, -min, -max, 212)
			else
			end
		end
		local posicao = getThingPos(pk)
		if getCreatureLookDir(pk) == 0 then
			addEvent(bonemerang, 0, {pid = pk, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
			addEvent(bonemerang, 500, {pid = pk, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
			addEvent(bonemerang, 1000, {pid = pk, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
			addEvent(bonemerang, 1500, {pid = pk, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		elseif getCreatureLookDir(pk) == 2 then
			addEvent(bonemerang, 0, {pid = pk, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
			addEvent(bonemerang, 500, {pid = pk, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
			addEvent(bonemerang, 1000, {pid = pk, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
			addEvent(bonemerang, 1500, {pid = pk, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		elseif getCreatureLookDir(pk) == 1 then
			addEvent(bonemerang, 0, {pid = pk, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
			addEvent(bonemerang, 500, {pid = pk, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
			addEvent(bonemerang, 1000, {pid = pk, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
			addEvent(bonemerang, 1500, {pid = pk, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(pk) == 3 then
			addEvent(bonemerang, 0, {pid = pk, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
			addEvent(bonemerang, 500, {pid = pk, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
			addEvent(bonemerang, 1000, {pid = pk, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
			addEvent(bonemerang, 1500, {pid = pk, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
		end
	return true;
end
