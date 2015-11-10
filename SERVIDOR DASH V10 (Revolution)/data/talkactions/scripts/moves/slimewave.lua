function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		local function slime(params)
			if isCreature(params.pid) then
				doAreaCombatHealth(params.pid, element, params.ar, wave, -min, -max, 116)
				doAreaCombatHealth(params.pid, null, params.ar, wave, -min, -max, 114)
			end
		end
		local posicao = getThingPos(pk)
		if getCreatureLookDir(pk) == 0 then
			addEvent(slime, 0, {pid = pk, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
			addEvent(slime, 150, {pid = pk, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
			addEvent(slime, 300, {pid = pk, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
			addEvent(slime, 450, {pid = pk, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		elseif getCreatureLookDir(pk) == 1 then
			addEvent(slime, 0, {pid = pk, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
			addEvent(slime, 150, {pid = pk, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
			addEvent(slime, 300, {pid = pk, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
			addEvent(slime, 450, {pid = pk, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(pk) == 2 then
			addEvent(slime, 0, {pid = pk, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
			addEvent(slime, 150, {pid = pk, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
			addEvent(slime, 300, {pid = pk, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
			addEvent(slime, 450, {pid = pk, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		elseif getCreatureLookDir(pk) == 3 then
			addEvent(slime, 0, {pid = pk, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
			addEvent(slime, 150, {pid = pk, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
			addEvent(slime, 300, {pid = pk, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
			addEvent(slime, 450, {pid = pk, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
		end
	return true;
end
