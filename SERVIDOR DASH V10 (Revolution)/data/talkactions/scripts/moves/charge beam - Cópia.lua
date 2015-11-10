local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, ELECTRICDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 48)

arr =  {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 2, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}

local area = createCombatArea(arr)
setCombatArea(combat, area)

local function onCastSpell(parameters)
for pa = -1, 1 do
		for pb = -1, 1 do
			local sumpos = getThingPos(parameters.cid)
			sumpos.x = sumpos.x+pa
			sumpos.y = sumpos.y+pb
			if sumpos ~= getThingPos(parameters.cid) then
			doSendDistanceShoot(getThingPos(parameters.cid), sumpos, 41)
			end
		end
		end

    doCombat(parameters.cid, combat, parameters.var)
	doAreaCombatHealth(parameters.cid, ELECTRICDAMAGE, getCreaturePosition(parameters.cid), area,  -((parameters.num1)+(parameters.level*(parameters.num3))), -((parameters.num2)+(parameters.level*(parameters.num3))), 255)
end

function onSay(cid, var)
if not isSummon(cid) then
level = math.random(70, 120)
num1 = 800 --- 1 dano
num2 = 1000 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
else
level = getPlayerLevel(getCreatureMaster(cid))
num1 = 800 --- 1 dano
num2 = 1000 --- 2 dano
num3 = 3   --- bonus
num4 = 255 --- last
end

for pa = -1, 1 do
		for pb = -1, 1 do
			local sumpos = getThingPos(cid)
			sumpos.x = sumpos.x+pa
			sumpos.y = sumpos.y+pb
			if sumpos ~= getThingPos(cid) then
			doSendDistanceShoot(sumpos, getThingPos(cid), 41)
			end
		end
		end

local parameters = { cid = cid, level = level, num1 = num1, num2 = num2, num3 = num3, num4 =num4, element = element, var = numberToVariant(cid)}
addEvent(onCastSpell, 500, parameters)

end