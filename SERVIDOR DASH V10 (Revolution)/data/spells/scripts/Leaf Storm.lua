function onCastSpell(cid, var)
if isSummon(cid) or isSleep(cid) or isConfusion(cid) then return true end
doPokemonUseSpell(cid, "Leaf Storm")
end