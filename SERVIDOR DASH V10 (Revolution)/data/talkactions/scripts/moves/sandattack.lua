function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		posit = getThingPos(pk)
		local function sandattack(params)
			if not isCreature(params.pid) then return true end
			doAreaCombatHealth(pk, element, params.ar, sand1, -min, -max, params.ef)
		end
		local posicao = getThingPos(pk)
		if getCreatureLookDir(pk) == 0 then
			addEvent(sandattack, 0, {pid = pk, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, ef = 120})
			addEvent(sandattack, 400, {pid = pk, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, ef = 120})
			addEvent(sandattack, 800, {pid = pk, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, ef = 120})
		elseif getCreatureLookDir(pk) == 2 then
			addEvent(sandattack, 0, {pid = pk, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, ef = 122})
			addEvent(sandattack, 400, {pid = pk, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, ef = 122})
			addEvent(sandattack, 800, {pid = pk, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, ef = 122})
		elseif getCreatureLookDir(pk) == 1 then
			addEvent(sandattack, 0, {pid = pk, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, ef = 121})
			addEvent(sandattack, 400, {pid = pk, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, ef = 121})
			addEvent(sandattack, 800, {pid = pk, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, ef = 121})
		elseif getCreatureLookDir(pk) == 3 then
			addEvent(sandattack, 0, {pid = pk, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, ef = 119})
			addEvent(sandattack, 400, {pid = pk, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, ef = 119})
			addEvent(sandattack, 800, {pid = pk, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, ef = 119})
		end
	return true;
end
