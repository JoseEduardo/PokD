function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element


		posit = getThingPos(pk)
		local function gust(params)
			if isCreature(params.pid) then
				doAreaCombatHealth(params.pid, element, params.ar, params.br, -min, -max, 42)
			else
			end
		end
		local posicao = getThingPos(pk)
		if getCreatureLookDir(pk) == 0 then
			addEvent(gust, 0, {pid = pk, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, br = sand1})
			addEvent(gust, 500, {pid = pk, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, br = whirl3})
			addEvent(gust, 1000, {pid = pk, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, br = whirl5})
			addEvent(gust, 1500, {pid = pk, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, br = whirl5})
		elseif getCreatureLookDir(pk) == 2 then
			addEvent(gust, 0, {pid = pk, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, br = sand1})
			addEvent(gust, 500, {pid = pk, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, br = whirl3})
			addEvent(gust, 1000, {pid = pk, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, br = whirl5})
			addEvent(gust, 1500, {pid = pk, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, br = whirl5})
		elseif getCreatureLookDir(pk) == 1 then
			addEvent(gust, 0, {pid = pk, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, br = sand1})
			addEvent(gust, 500, {pid = pk, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, br = whirl32})
			addEvent(gust, 1000, {pid = pk, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, br = whirl52})
			addEvent(gust, 1500, {pid = pk, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, br = whirl52})
		elseif getCreatureLookDir(pk) == 3 then
			addEvent(gust, 0, {pid = pk, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, br = sand1})
			addEvent(gust, 500, {pid = pk, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, br = whirl32})
			addEvent(gust, 1000, {pid = pk, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, br = whirl52})
			addEvent(gust, 1500, {pid = pk, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, br = whirl52})
		end
	return true;
end
