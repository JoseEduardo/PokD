local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HEALING)
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_BLUE)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)
setCombatParam(combat, COMBAT_PARAM_TARGETPLAYERSORSUMMONS, true)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)
setHealingFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0, 400, 0, 1000)

local area = createCombatArea(arr)
arr = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
{0, 1, 1, 1, 1, 3, 1, 1, 1, 1, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
{0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0},
{0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
}
setCombatArea(combat, area)


function onSay(cid)
local dano1 = 1000*getDamagePoke(cid, FALSE)/20
local dano2 = 1200*getDamagePoke(cid, FALSE)/20
local danoFinal = math.random(dano1, dano2)
	local uid = checkAreaUid(getCreaturePosition(cid), arr, 1, 1)
    for _,pid in pairs(uid) do
        if isPlayer(pid) or isSummon(pid) then
           if getCreatureHealth(pid)+danoFinal > getCreatureMaxHealth(pid) then
              Health = getCreatureMaxHealth(pid)-getCreatureHealth(pid)
           else
              Health = danoFinal
           end
           doCreatureAddHealth(pid, danoFinal)
           doSendAnimatedText(getThingPos(pid),"+"..Health,29)
        end
    end
	return doCombat(master, combat, numberToVariant(cid))
end