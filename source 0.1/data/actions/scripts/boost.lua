function onUse(cid, item, frompos, item2, topos) 
 
    --##config##-- 
    local ball_id = {2222,2220} 
    local conid1 = 7322 -- id container do pokemon (>) 
    local conid2 = 7324 -- id container das stones (<) 
    local pedras = { 
    -- [STONE_ID] = {pokemons que usam a stone} 
    --[[Fire]]     [2283] = {names = {"Charizard", "Ninetales", "Arcanine", "Rapidash", "Flareon", "Moltres", "Shiny Arcanine"},count = 3}, 
    --[[Crystal]]  [2285] = {names = {"Dragonite"},count = 15}, 
    --[[Enigma]]   [2288] = {names = {"Alakazam", "Hypno", "Exeggutor", "Mr Mime", "Shiny Abra"},count = 4}, 
    --[[Venom]]    [2278] = {names = {"Gloom"},count = 4}, 
    --[[Thunder]]  [2279] = {names = {"Electabuzz"},count = 4}, 
    --[[Coccon]]   [2284] = {names = {"Scyther"},count = 2}, 
    --[[Leaf]]     [2276] = {names = {"Venusaur"},count = 3}, 
    --[[Water]]    [2277] = {names = {"Blastoise"},count = 3}, 
    --[[Heart]]    [2289] = {names = {"Pidgeot"},count = 3}, 
    --[[Darkness]] [2286] = {names = {"Haunter"},count = 4}, 
    --[[Punch]]    [2281] = {names = {"Machamp"},count = 4} 
    } 
    --##end config##-- 
    local p = { 
    [11111] = {{x=topos.x+1,y=topos.y,z=topos.z},{x=topos.x-1,y=topos.y,z=topos.z}}, -- (/\) 
    [22222] = {{x=topos.x,y=topos.y-1,z=topos.z},{x=topos.x,y=topos.y+1,z=topos.z}}, -- (>) 
    [33333] = {{x=topos.x-1,y=topos.y,z=topos.z},{x=topos.x+1,y=topos.y,z=topos.z}}, -- (\/) 
    [44444] = {{x=topos.x,y=topos.y+1,z=topos.z},{x=topos.x,y=topos.y-1,z=topos.z}}  -- (<) 
    } 
    local pos, pos2 = p[item.actionid][1],p[item.actionid][2] 
    local ball = getContainerItem(getTileItemById(pos, conid1).uid,0) 
    local stones = getContainerItem(getTileItemById(pos2, conid2).uid,0) 
    if not(ball.uid > 0 and isInArray(ball_id,ball.itemid)) then 
        return doPlayerSendCancel(cid, "Put a pokemon in the machine.")  
    end 
    if not(stones.uid > 0) then 
        return doPlayerSendCancel(cid, "Place the stone in the machine")  
    end 
    local pokename = getItemSpecialDescription(ball.uid) 
    local name = getItemAttribute(ball.uid, "poke"):match("This is (.+)'s pokeball.") 
    if not(pedras[stones.itemid] or isInArray(pedras[stones.itemid].names,name))then  
        return doPlayerSendCancel(cid, "Place the stone on the correct machine.") 
    end 
    if(pokename:find("\+(%d+)"))then 
        local boost = pokename:match("\+(%d+)") 
        local count = math.ceil(boost/pedras[stones.itemid].count) 
        for i=count-1,0,-1 do 
            local p = getContainerItem(getTileItemById(pos2, conid2).uid,i) 
            if not(p.uid > 0 and p.itemid == stones.itemid)then 
                return doPlayerSendCancel(cid, "You need "..count.." "..getItemName(stones.uid).." to use the machine.") 
            end 
        end 
        for i=count-1,0, -1 do 
            stones = getContainerItem(getTileItemById(pos2, conid2).uid,i) 
            doRemoveItem(stones.uid,1) 
        end 
        doItemSetAttribute(ball.uid, "description", tostring(pokename:gsub(boost,((tonumber(boost)+1))))) 
    else 
        doItemSetAttribute(ball.uid, "description", "Contains a "..name.." +1.") 
        doRemoveItem(stones.uid,1) 
    end 
 
    return true 
end  