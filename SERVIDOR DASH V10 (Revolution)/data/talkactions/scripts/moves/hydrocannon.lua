function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		posit = getThingPos(pk)
		local function gust(params)
			if isCreature(params.pid) then
				doAreaCombatHealth(params.pid, null, params.ar, sand1, -min, -max, params.eee)
				doAreaCombatHealth(params.pid, element, params.ar, whirl3, -min, -max, 68)
				doAreaCombatHealth(params.pid, null, params.arr, whirl3, -min, -max, 68)
			else
			end
		end
		local posicao = getThingPos(pk)
		if getCreatureLookDir(pk) == 0 then
			addEvent(gust, 0, {pid = pk, eee = 66, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, arr = posicao})
			addEvent(gust, 300, {pid = pk, eee = 66, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
			addEvent(gust, 600, {pid = pk, eee = 66, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
			addEvent(gust, 900, {pid = pk, eee = 66, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
			addEvent(gust, 1200, {pid = pk, eee = 66, ar = {x=posicao.x, y=posicao.y-5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
			addEvent(gust, 1500, {pid = pk, eee = 66, ar = {x=posicao.x, y=posicao.y-6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-5, z=posicao.z}})
		elseif getCreatureLookDir(pk) == 2 then
			addEvent(gust, 0, {pid = pk, eee = 64, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, arr = posicao})
			addEvent(gust, 300, {pid = pk, eee = 64, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
			addEvent(gust, 600, {pid = pk, eee = 64, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
			addEvent(gust, 900, {pid = pk, eee = 64, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
			addEvent(gust, 1200, {pid = pk, eee = 64, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
			addEvent(gust, 1500, {pid = pk, eee = 64, ar = {x=posicao.x, y=posicao.y+6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir(pk) == 1 then
			addEvent(gust, 0, {pid = pk, eee = 67, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, arr = posicao})
			addEvent(gust, 300, {pid = pk, eee = 67, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
			addEvent(gust, 600, {pid = pk, eee = 67, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
			addEvent(gust, 900, {pid = pk, eee = 67, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
			addEvent(gust, 1200, {pid = pk, eee = 67, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
			addEvent(gust, 1500, {pid = pk, eee = 67, ar = {x=posicao.x+6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(pk) == 3 then
			addEvent(gust, 0, {pid = pk, eee = 65, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, arr = posicao})
			addEvent(gust, 300, {pid = pk, eee = 65, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
			addEvent(gust, 600, {pid = pk, eee = 65, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
			addEvent(gust, 900, {pid = pk, eee = 65, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
			addEvent(gust, 1200, {pid = pk, eee = 65, ar = {x=posicao.x-5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
			addEvent(gust, 1500, {pid = pk, eee = 65, ar = {x=posicao.x-6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-5, y=posicao.y, z=posicao.z}})
		end
	return true;
end
