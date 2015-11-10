function onSay(pk)
  min = getPlayerStorageValue(pk, 9921) -- min
  max = getPlayerStorageValue(pk, 9922) -- max
  element = getPlayerStorageValue(pk, 9923) -- element
        local t = getMasterTarget(pk)
        setPlayerStorageValue(t, 5, 1)
        local function confused(params)
            if isCreature(params.t) then
				local spdc = getCreatureSpeed(params.t)
                if getCreatureLookDir(params.t) == 0 then
					confs = math.random(1,3)
                elseif getCreatureLookDir(params.t) == 1 then
					confurandom = math.random(1,99)
					if confurandom <= 33 then
						confs = 0
					elseif confurandom >= 67 then
						confs = 2
					else
						confs = 3
					end
                elseif getCreatureLookDir(params.t) == 2 then
					confurandom = math.random(1,99)
					if confurandom <= 33 then
						confs = 3
					elseif confurandom >= 67 then
						confs = 0
					else
						confs = 1
					end
                elseif getCreatureLookDir(params.t) == 3 then
					confs = math.random(0,2)
                end
                doPushCreature(params.t, confs, 1, 0)
                doSendMagicEffect(getThingPos(params.t), 214)
            end
        end
        local function nonc(params)
            if isCreature(params.t) then
                doChangeSpeed(params.t, -getCreatureSpeed(params.t))
                doChangeSpeed(params.t, getCreatureBaseSpeed(params.t))
                setPlayerStorageValue(params.t, 5, -1)
            end
        end
        doChangeSpeed(t, -( getCreatureSpeed(t)/3))
        doSendMagicEffect(getThingPos(t), 214)
        for i = 1, math.random(6,7) do
            addEvent(confused, 1000*i, {getCreatureMaster(pk) = getCreatureMaster(pk), t = t})
        end
        addEvent(nonc, 7100, {getCreatureMaster(pk) - getCreatureMaster(pk), t = t})
	return true;
end
