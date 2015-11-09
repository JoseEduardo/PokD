local pokes = {
["Bulbasaur"] = {level = 20, cons = 43, vida = 1200},
["Ivysaur"] = {level = 40, cons = 86, vida = 2600},
["Venusaur"] = {level = 85, cons = 189, vida = 5200},
["Charmander"] = {level = 20, cons = 30, vida = 970},
["Charmeleon"] = {level = 40, cons = 70, vida = 2900},
["Charizard"] = {level = 85, cons = 140, vida = 5200},
["Squirtle"] = {level = 20, cons = 47, vida = 1350},
["Wartortle"] = {level = 40, cons = 93, vida = 2800},
["Blastoise"] = {level = 85, cons = 194, vida = 5900},
["Caterpie"] = {level = 1, cons = 13, vida = 300},
["Metapod"] = {level = 10, cons = 30, vida = 1100},
["Butterfree"] = {level = 30, cons = 56, vida = 2000},
["Weedle"] = {level = 1, cons = 16, vida = 325},
["Kakuna"] = {level = 10, cons = 32, vida = 900},
["Beedrill"] = {level = 30, cons = 64, vida = 1900},
["Pidgey"] = {level = 1, cons = 22, vida = 380},
["Pidgeotto"] = {level = 20, cons = 47, vida = 1400},
["Pidgeot"] = {level = 65, cons = 101, vida = 3800},
["Rattata"] = {level = 1, cons = 19, vida = 350},
["Raticate"] = {level = 20, cons = 68, vida = 900},
["Spearow"] = {level = 5, cons = 22, vida = 450},
["Fearow"] = {level = 50, cons = 95, vida = 3300},
["Ekans"] = {level = 12, cons = 27, vida = 600},
["Arbok"] = {level = 30, cons = 87, vida = 2900},
["Pikachu"] = {level = 20, cons = 32, vida = 900},
["Raichu"] = {level = 50, cons = 99, vida = 3200},
["Sandshrew"] = {level = 18, cons = 30, vida = 700},
["Sandslash"] = {level = 55, cons = 96, vida = 3400},
["Nidoran Female"] = {level = 10, cons = 27, vida = 600},
["Nidorina"] = {level = 25, cons = 58, vida = 2000},
["Nidoqueen"] = {level = 65, cons = 146, vida = 4200},
["Nidoran Male"] = {level = 10, cons = 34, vida = 650},
["Nidorino"] = {level = 25, cons = 74, vida = 2500},
["Nidoking"] = {level = 65, cons = 169, vida = 4800},
["Clefairy"] = {level = 10, cons = 30, vida = 600},
["Clefable"] = {level = 35, cons = 90, vida = 2400},
["Vulpix"] = {level = 20, cons = 32, vida = 680},
["Ninetales"] = {level = 65, cons = 121, vida = 3400},
["Jigglypuff"] = {level = 10, cons = 30, vida = 550},
["Wigglytuff"] = {level = 42, cons = 95, vida = 2900},
["Zubat"] = {level = 5, cons = 28, vida = 450},
["Golbat"] = {level = 30, cons = 70, vida = 1900},
["Oddish"] = {level = 5, cons = 21, vida = 340},
["Gloom"] = {level = 18, cons = 51, vida = 1400},
["Vileplume"] = {level = 50, cons = 96, vida = 3300},
["Paras"] = {level = 1, cons = 40, vida = 850},
["Parasect"] = {level = 50, cons = 110, vida = 3800},
["Venonat"] = {level = 18, cons = 50, vida = 1350},
["Venomoth"] = {level = 50, cons = 125, vida = 3850},
["Diglett"] = {level = 5, cons = 45, vida = 900},
["Dugtrio"] = {level = 35, cons = 110, vida = 3450},
["Meowth"] = {level = 12, cons = 52, vida = 950},
["Persian"] = {level = 25, cons = 85, vida = 2250},
["Psyduck"] = {level = 12, cons = 50, vida = 950},
["Golduck"] = {level = 55, cons = 150, vida = 4000},
["Mankey"] = {level = 10, cons = 60, vida = 1050},
["Primeape"] = {level = 45, cons = 155, vida = 4500},
["Growlithe"] = {level = 20, cons = 60, vida = 1000},
["Arcanine"] = {level = 80, cons = 170, vida = 6800},
["Poliwag"] = {level = 5, cons = 20, vida = 400},
["Poliwhirl"] = {level = 20, cons = 44, vida = 1200},
["Poliwrath"] = {level = 65, cons = 138, vida = 4400},
["Abra"] = {level = 10, cons = 20, vida = 620},
["Kadabra"] = {level = 50, cons = 57, vida = 2500},
["Alakazam"] = {level = 80, cons = 94, vida = 4000},
["Machop"] = {level = 18, cons = 60, vida = 1100},
["Machoke"] = {level = 40, cons = 110, vida = 3500},
["Machamp"] = {level = 65, cons = 185, vida = 7500},
["Bellsprout"] = {level = 5, cons = 24, vida = 420},
["Weepinbell"] = {level = 18, cons = 49, vida = 1100},
["Victreebel"] = {level = 50, cons = 117, vida = 4000},
["Tentacool"] = {level = 12, cons = 52, vida = 1050},
["Tentacruel"] = {level = 70, cons = 165, vida = 7050},
["Geodude"] = {level = 15, cons = 30, vida = 700},
["Graveler"] = {level = 40, cons = 82, vida = 3000},
["Golem"] = {level = 70, cons = 111, vida = 6500},
["Ponyta"] = {level = 20, cons = 60, vida = 1400},
["Rapidash"] = {level = 60, cons = 160, vida = 5500},
["Slowpoke"] = {level = 12, cons = 55, vida = 1200},
["Slowbro"] = {level = 45, cons = 110, vida = 4600},
["Magnemite"] = {level = 15, cons = 27, vida = 450},
["Magneton"] = {level = 40, cons = 67, vida = 1750},
["Farfetchd"] = {level = 40, cons = 95, vida = 3000},
["Doduo"] = {level = 12, cons = 31, vida = 600},
["Dodrio"] = {level = 45, cons = 78, vida = 2650},
["Seel"] = {level = 20, cons = 50, vida = 1000},
["Dewgong"] = {level = 65, cons = 135, vida = 5200},
["Grimer"] = {level = 12, cons = 30, vida = 600},
["Muk"] = {level = 30, cons = 85, vida = 2400},
["Shellder"] = {level = 5, cons = 45, vida = 800},
["Cloyster"] = {level = 65, cons = 155, vida = 5000},
["Gastly"] = {level = 18, cons = 50, vida = 1000},
["Haunter"] = {level = 45, cons = 105, vida = 3000},
["Gengar"] = {level = 80, cons = 175, vida = 7000},
["Onix"] = {level = 50, cons = 150, vida = 5300},
["Drowzee"] = {level = 22, cons = 58, vida = 1150},
["Hypno"] = {level = 50, cons = 100, vida = 4600},
["Krabby"] = {level = 5, cons = 45, vida = 850},
["Kingler"] = {level = 35, cons = 100, vida = 3250},
["Voltorb"] = {level = 14, cons = 30, vida = 620},
["Electrode"] = {level = 38, cons = 76, vida = 2000},
["Exeggcute"] = {level = 8, cons = 42, vida = 800},
["Exeggutor"] = {level = 48, cons = 98, vida = 4000},
["Cubone"] = {level = 18, cons = 58, vida = 1200},
["Marowak"] = {level = 45, cons = 105, vida = 3900},
["Hitmonlee"] = {level = 60, cons = 140, vida = 5500},
["Hitmonchan"] = {level = 60, cons = 140, vida = 5500},
["Lickitung"] = {level = 45, cons = 100, vida = 4800},
["Koffing"] = {level = 15, cons = 60, vida = 900},
["Weezing"] = {level = 30, cons = 100, vida = 2800},
["Rhyhorn"] = {level = 35, cons = 80, vida = 3800},
["Rhydon"] = {level = 65, cons = 175, vida = 7000},
["Chansey"] = {level = 60, cons = 130, vida = 7500},
["Tangela"] = {level = 40, cons = 85, vida = 3500},
["Kangaskhan"] = {level = 60, cons = 160, vida = 7000},
["Horsea"] = {level = 5, cons = 19, vida = 300},
["Seadra"] = {level = 45, cons = 68, vida = 2500},
["Goldeen"] = {level = 10, cons = 50, vida = 950},
["Seaking"] = {level = 25, cons = 80, vida = 2000},
["Staryu"] = {level = 15, cons = 55, vida = 1050},
["Starmie"] = {level = 45, cons = 95, vida = 3800},
["Mr.mime"] = {level = 60, cons = 110, vida = 5500},
["Scyther"] = {level = 70, cons = 145, vida = 6500},
["Jynx"] = {level = 65, cons = 125, vida = 6000},
["Electabuzz"] = {level = 70, cons = 150, vida = 6800},
["Magmar"] = {level = 70, cons = 160, vida = 7200},
["Pinsir"] = {level = 42, cons = 95, vida = 4000},
["Tauros"] = {level = 40, cons = 100, vida = 4200},
["Magikarp"] = {level = 1, cons = 5, vida = 120},
["Gyarados"] = {level = 75, cons = 195, vida = 7800},
["Lapras"] = {level = 70, cons = 140, vida = 7000},
["Ditto"] = {level = 40, cons = 100, vida = 4000},
["Eevee"] = {level = 20, cons = 55, vida = 1500},
["Vaporeon"] = {level = 55, cons = 110, vida = 4500},
["Jolteon"] = {level = 55, cons = 110, vida = 4500},
["Flareon"] = {level = 55, cons = 110, vida = 4500},
["Porygon"] = {level = 45, cons = 10, vida = 100},
["Omanyte"] = {level = 20, cons = 55, vida = 1300},
["Omastar"] = {level = 70, cons = 140, vida = 6000},
["Kabuto"] = {level = 20, cons = 55, vida = 1300},
["Kabutops"] = {level = 70, cons = 150, vida = 6500},
["Aerodactyl"] = {level = 100, cons = 190, vida = 8000},
["Snorlax"] = {level = 85, cons = 200, vida = 9500},
["Articuno"] = {level = 120, cons = 200, vida = 11000},
["Zapdos"] = {level = 120, cons = 200, vida = 11000},
["Moltres"] = {level = 120, cons = 200, vida = 11000},
["Dratini"] = {level = 10, cons = 55, vida = 1200},
["Dragonair"] = {level = 70, cons = 165, vida = 5600},
["Dragonite"] = {level = 100, cons = 250, vida = 10800},
["Mewtwo"] = {level = 100, cons = 175, vida = 8500},
["Mew"] = {level = 100, cons = 125, vida = 7200},
["Shiny Charizard"] = {level = 100, cons = 140, vida = 7200},
["ShinyMagikarp"] = {level = 10, cons = 30, vida = 240},
["ShinyRatatta"] = {level = 10, cons = 28, vida = 900},
["ShinyParas"] = {level = 15, cons = 120, vida = 1400},
["ShinyOddish"] = {level = 15, cons = 65, vida = 990},
["ShinyZubat"] = {level = 15, cons = 85, vida = 1200},
["Shiny Gyarados"] = {level = 120, cons = 200, vida = 18000},
["Elite Hitmonlee"] = {level = 100, cons = 250, vida = 16500},
["Elite Hitmonchan"] = {level = 100, cons = 240, vida = 17500},
}

function onLogout(cid)
if getPlayerStorageValue(cid, 888) >= 1 then
doPlayerSendCancel(cid, "You cant logout during control mind.")
return false
end
if #getCreatureSummons(cid) == 1 then
if getPlayerStorageValue(cid, 61204) >= 1 and getPlayerStorageValue(cid, 63215) <= 0 and getPlayerStorageValue(cid, 62314) <= 0 then
local summom = getCreatureSummons(cid)
local maxh = (pokes[getCreatureName(summom[1])].vida)
local pct2 = ((getCreatureHealth(summom[1])) / (getCreatureMaxHealth(summom[1])))
local vids = ((getCreatureHealth(summom[1])) - 2)
doCreatureAddHealth(summom[1], -vids)
setCreatureMaxHealth(summom[1], maxh)
doCreatureAddHealth(summom[1], ((maxh) * (pct2)))
local health = getCreatureHealth(summom[1])
local maxhealth = getCreatureMaxHealth(summom[1])
setPlayerStorageValue(cid, 61205, health)
setPlayerStorageValue(cid, 61206, maxhealth)
setPlayerStorageValue(cid, 61204, 0)
setPlayerStorageValue(cid, 61207, 1)
setPlayerStorageValue(cid, 1, 0)
if getPlayerGroupId(cid) == 8 then
setPlayerGroupId(cid, 1)
end
end
end
return TRUE
end

function onDeath(cid, deathList)
local owner = getCreatureMaster(cid)
for x, y in pairs(ginasios) do
if getPlayerStorageValue(owner, y.storage) == 1 then

    if getPlayerStorageValue(owner, 991) == 5 or not hasPokemon(owner) then
    setPlayerStorageValue(owner, 991, -1)
    else
    local number = tonumber(getPlayerStorageValue(owner, 991))
    setPlayerStorageValue(owner, 991, number + 1)
    end
end
end
local owner = getCreatureMaster(cid)
if getPlayerSlotItem(owner, 8).itemid == 2220 or getPlayerSlotItem(owner, 8).itemid == 2221 then
doSendMagicEffect(getCreaturePosition(cid), 191)
elseif getPlayerSlotItem(owner, 8).itemid == 2651 or getPlayerSlotItem(owner, 8).itemid == 2652 then
doSendMagicEffect(getCreaturePosition(cid), 189)
elseif getPlayerSlotItem(owner, 8).itemid == 2653 or getPlayerSlotItem(owner, 8).itemid == 2654 then
doSendMagicEffect(getCreaturePosition(cid), 190)
elseif getPlayerSlotItem(owner, 8).itemid == 2655 or getPlayerSlotItem(owner, 8).itemid == 2656 then
doSendMagicEffect(getCreaturePosition(cid), 195)
elseif getPlayerSlotItem(owner, 8).itemid == 2222 or getPlayerSlotItem(owner, 8).itemid == 2223 then
doSendMagicEffect(getCreaturePosition(cid), 10)
end
doPlayerSendTextMessage(owner, 22, "Your pokemon fainted.")
if getPlayerSlotItem(owner, 8).itemid == 2220 or getPlayerSlotItem(owner, 8).itemid == 2221 then
doTransformItem(getPlayerSlotItem(owner, 8).uid, 2227)
elseif getPlayerSlotItem(owner, 8).itemid == 2222 or getPlayerSlotItem(owner, 8).itemid == 2223 then
doTransformItem(getPlayerSlotItem(owner, 8).uid, 2224)
elseif getPlayerSlotItem(owner, 8).itemid == 2651 or getPlayerSlotItem(owner, 8).itemid == 2652 then
doTransformItem(getPlayerSlotItem(owner, 8).uid, 2657)
elseif getPlayerSlotItem(owner, 8).itemid == 2653 or getPlayerSlotItem(owner, 8).itemid == 2654 then
doTransformItem(getPlayerSlotItem(owner, 8).uid, 2658)
elseif getPlayerSlotItem(owner, 8).itemid == 2655 or getPlayerSlotItem(owner, 8).itemid == 2656 then
doTransformItem(getPlayerSlotItem(owner, 8).uid, 2659)
end
local item = getPlayerSlotItem(owner, 8)
doItemSetAttribute(item.uid, "poke", getItemAttribute(item.uid, "poke"):sub(1, findLetter(getItemAttribute(item.uid, "poke"), ".")) .. " HP = [0/"..getCreatureMaxHealth(cid).."]")
setPlayerStorageValue(owner, 61207, 0)
setPlayerStorageValue(owner, 61204, 0)
if getPlayerGroupId(owner) == 8 then
setPlayerGroupId(owner, 1)
end
doRemoveCreature(cid)
return FALSE
end