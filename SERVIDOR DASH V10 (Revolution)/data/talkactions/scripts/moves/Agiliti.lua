local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, NORMALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 141)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 141)

function OmnislashStrike(cid,combat,var,times,opos,Target)
level = getDamagePoke(cid, TRUE)
element = NORMALDAMAGE
num1 = 100 --- 1 dano
num2 = 200 --- 2 dano
num3 = 2   --- bonus
num4 = 255 --- last

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