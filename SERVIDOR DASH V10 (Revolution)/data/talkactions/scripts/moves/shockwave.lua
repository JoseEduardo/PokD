function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		posit = getThingPos(pk)
		local function sandattack(params)
			if isCreature(params.pid) then
				doAreaCombatHealth(params.pid, null, params.ar, 0, -min, -max, params.ef)
				doAreaCombatHealth(params.pid, element, params.ar, params.wave, -min, -max, 255)
			else
			end
		end
		local posicao = getThingPos(pk)
		if getCreatureLookDir(pk) == 0 then
			addEvent(sandattack, 0, {pid = pk, ar = {x=posicao.x+1, y=posicao.y-1, z=posicao.z}, ef = 126, wave = swaven})
			addEvent(sandattack, 400, {pid = pk, ar = {x=posicao.x+1, y=posicao.y-2, z=posicao.z}, ef = 126, wave = swaven})
			addEvent(sandattack, 800, {pid = pk, ar = {x=posicao.x+1, y=posicao.y-3, z=posicao.z}, ef = 126, wave = swaven})
			addEvent(sandattack, 1200, {pid = pk, ar = {x=posicao.x+1, y=posicao.y-4, z=posicao.z}, ef = 126, wave = swaven})
			addEvent(sandattack, 1600, {pid = pk, ar = {x=posicao.x+1, y=posicao.y-5, z=posicao.z}, ef = 126, wave = swaven})
		elseif getCreatureLookDir(pk) == 2 then
			addEvent(sandattack, 0, {pid = pk, ar = {x=posicao.x+1, y=posicao.y+2, z=posicao.z}, ef = 125, wave = swaves})
			addEvent(sandattack, 400, {pid = pk, ar = {x=posicao.x+1, y=posicao.y+3, z=posicao.z}, ef = 125, wave = swaves})
			addEvent(sandattack, 800, {pid = pk, ar = {x=posicao.x+1, y=posicao.y+4, z=posicao.z}, ef = 125, wave = swaves})
			addEvent(sandattack, 1200, {pid = pk, ar = {x=posicao.x+1, y=posicao.y+5, z=posicao.z}, ef = 125, wave = swaves})
			addEvent(sandattack, 1600, {pid = pk, ar = {x=posicao.x+1, y=posicao.y+6, z=posicao.z}, ef = 125, wave = swaves})
		elseif getCreatureLookDir(pk) == 1 then
			addEvent(sandattack, 0, {pid = pk, ar = {x=posicao.x+2, y=posicao.y+1, z=posicao.z}, ef = 124, wave = swavee})
			addEvent(sandattack, 400, {pid = pk, ar = {x=posicao.x+3, y=posicao.y+1, z=posicao.z}, ef = 124, wave = swavee})
			addEvent(sandattack, 800, {pid = pk, ar = {x=posicao.x+4, y=posicao.y+1, z=posicao.z}, ef = 124, wave = swavee})
			addEvent(sandattack, 1200, {pid = pk, ar = {x=posicao.x+5, y=posicao.y+1, z=posicao.z}, ef = 124, wave = swavee})
			addEvent(sandattack, 1600, {pid = pk, ar = {x=posicao.x+6, y=posicao.y+1, z=posicao.z}, ef = 124, wave = swavee})
		elseif getCreatureLookDir(pk) == 3 then
			addEvent(sandattack, 0, {pid = pk, ar = {x=posicao.x-1, y=posicao.y+1, z=posicao.z}, ef = 123, wave = swavew})
			addEvent(sandattack, 400, {pid = pk, ar = {x=posicao.x-2, y=posicao.y+1, z=posicao.z}, ef = 123, wave = swavew})
			addEvent(sandattack, 800, {pid = pk, ar = {x=posicao.x-3, y=posicao.y+1, z=posicao.z}, ef = 123, wave = swavew})
			addEvent(sandattack, 1200, {pid = pk, ar = {x=posicao.x-4, y=posicao.y+1, z=posicao.z}, ef = 123, wave = swavew})
			addEvent(sandattack, 1600, {pid = pk, ar = {x=posicao.x-5, y=posicao.y+1, z=posicao.z}, ef = 123, wave = swavew})
		end
	return true;
end
