local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, NORMALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 141)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 141)

function OmnislashStrike(cid,combat,var,times,opos,Target)
if getCreatureMaster(cid) <= 0 then
 doCreatureExecuteTalkAction(cid,'Agiliti',1)
return true
end

local master = getCreatureMaster(cid)
local a = getPlayerSlotItem(master, 8)
local b = getItemAttribute(a.uid, "poke"):sub(9, findLetter(getItemAttribute(a.uid, "poke"), "'")-1)

if getCreatureStorage(master, 20078) == 1 or isInArray(tShiny, b) then
level = getPlayerLevel(getCreatureMaster(cid))
element = getDamagePoke(cid, TRUE)
num1 = 200 --- 1 dano
num2 = 300 --- 2 dano
num3 = 7   --- bonus
num4 = 255 --- last
else
level = getDamagePoke(cid, FALSE)
element = NORMALDAMAGE
num1 = 100 --- 1 dano
num2 = 200 --- 2 dano
num3 = 1   --- bonus
num4 = 255 --- last
end
        if not Target then
           return false
        end
        if not isCreature(cid) or not isCreature(Target) then 
        return false
        end
        local newPos = getOppositeSidePos(cid,getCreaturePosition(Target))
        if times == 4 then
                if not doComparePositions(getCreaturePosition(cid),opos) then
                        doTeleportThing(cid,opos)
                end
                	return doCombat(cid, combat, numberToVariant(getCreatureTarget(cid))) and
                    doTargetCombatHealth(cid, getCreatureTarget(cid), element, -((num1)+(level*(num3))), -((num2)+(level*(num3))), num4)
        else
                if isWalkable3(cid,newPos) and newPos ~= getCreaturePosition(cid) then
                        local fromPos = getCreaturePosition(cid)
                        doTeleportThing(cid,newPos)
                end
                addEvent(doCombat, 50, combat, numberToVariant(getCreatureTarget(cid)))
                addEvent(doCombat, 100, combat, numberToVariant(getCreatureTarget(cid)))
                return addEvent(OmnislashStrike,333,cid,combat,var,times+1,opos,Target)
        end
end

function onSay(cid, var)
        return addEvent(OmnislashStrike,0,cid,combat,var,0,getCreaturePosition(cid),getCreatureTarget(cid))
end