function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
		doSendMagicEffect(getThingPos(pk), 161)
		local function variavel(pk, elemento, defec, mefec)
			if isCreature(pk) then
				if isCreature(pk) then
					local pos = getThingPos(pk)
					pos.x = pos.x + math.random(-4,4)
					pos.y = pos.y + math.random(-4,4)
					local frompos = getThingPos(pk)
					frompos.x = pos.x - 7
					frompos.y = pos.y - 6
					doSendDistanceShoot(frompos, pos, defec)
					doAreaCombatHealth(pk, elemento, pos, 0, -min, -max, mefec)
				end
			end
		end
		local function leaf(params)
		lugar = getThingPos(pk)
			for x= -7,7 do
				for y= -6,6 do
					topos = {x=lugar.x+x, y=lugar.y+y, z=lugar.z}
					doSendDistanceShoot(getThingPos(params.pid), topos, 8)
				end
			end
		end
		posit = getThingPos(pk)
        local function fogo(params)
			if isCreature(params.pid) then
				doAreaCombatHealth(params.pid, params.el, posit, params.ar, -min, -max, params.ef)
			else
			end
		end
		local function sortear()
        local magias = math.random(1,7)
			if magias == 1 then
				for r = 1, 72 do
					addEvent(variavel, r*35, pk,ELECTRICDAMAGE,41,48)
				end
			elseif magias == 2 then
				for r = 1, 72 do
					addEvent(variavel, r*35,pk,ICEDAMAGE,42,52)
				end
			elseif magias == 3 then
				for r = 1, 72 do
					addEvent(variavel, r*35,pk,GHOSTDAMAGE,18,140)
				end
			elseif magias == 4 then
				for r = 1, 72 do
					addEvent(variavel, r*35,pk,WATERDAMAGE,2,53)
				end
			elseif magias == 5 then
				for r = 1, 72 do
					addEvent(variavel, r*35,pk,ROCKDAMAGE,11,44)
				end
			elseif magias == 6 then
				addEvent(leaf, 0, {pid = pk})
				addEvent(doAreaCombatHealth, 0, pk, GRASSDAMAGE, getThingPos(pk), grassarea, -min, -max, 255)
			elseif magias == 7 then
				addEvent(fogo, 0, {pid = pk, el = element, ar = magma1, ef = 6})
				addEvent(fogo, 100, {pid = pk, el = element, ar = magma1, ef = 35})
				addEvent(fogo, 400, {pid = pk, el = element, ar = magma2, ef = 6})
				addEvent(fogo, 500, {pid = pk, el = element, ar = magma2, ef = 35})
				addEvent(fogo, 800, {pid = pk, el = element, ar = magma3, ef = 6})
			end
        end
        addEvent(sortear, 1000)
	return true;
end
