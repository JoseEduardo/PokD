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
["ShinyRattata"] = {level = 10, cons = 28, vida = 900},
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
["Dugtrio"] = {level = 35, cons = 110, vida = 3500},
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
["Abra"] = {level = 15, cons = 20, vida = 620},
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
["Hitmonlee"] = {level = 60, cons = 205, vida = 9250},
["Hitmonchan"] = {level = 60, cons = 200, vida = 10500},
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
["ShinyMagikarp"] = {level = 10, cons = 30, vida = 240},
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
["Shiny Charizard"] = {level = 100, cons = 280, vida = 7200},
["ShinyParas"] = {level = 15, cons = 120, vida = 1400},
["ShinyOddish"] = {level = 15, cons = 65, vida = 990},
["ShinyZubat"] = {level = 15, cons = 85, vida = 1200},
["Shiny Tentacool"] = {level = 20, cons = 130, vida = 2200},
["Shiny Tentacruel"] = {level = 100, cons = 180, vida = 7000},
["Shiny Raticate"] = {level = 35, cons = 140, vida = 0},
["ShinyKrabby"] = {level = 20, cons = 140, vida = 0},
["Shiny Kingler"] = {level = 50, cons = 140, vida = 0},
["ShinyHorsea"] = {level = 15, cons = 140, vida = 0},
["Shiny Seadra"] = {level = 60, cons = 140, vida = 0},
["Shiny Gyarados"] = {level = 120, cons = 200, vida = 18000},
["Shiny Parasect"] = {level = 60, cons = 140, vida = 0},
["Shiny Scyther"] = {level = 100, cons = 140, vida = 0},
["Shiny Electabuz"] = {level = 100, cons = 140, vida = 0},
["Shiny Jynx"] = {level = 80, cons = 140, vida = 0},
["Shiny Electrode"] = {level = 50, cons = 140, vida = 0},
["ShinyVoltorb"] = {level = 25, cons = 140, vida = 0},
["Shiny Raichu"] = {level = 70, cons = 140, vida = 0},
["ShinyVenonat"] = {level = 25, cons = 140, vida = 0},
["Shiny Venomoth"] = {level = 60, cons = 140, vida = 0},
["Shiny Beedril"] = {level = 35, cons = 140, vida = 0},
["Shiny Butterfree"] = {level = 40, cons = 140, vida = 0},
["Shiny Venusaur"] = {level = 100, cons = 140, vida = 0},
["Shiny Blastoise"] = {level = 100, cons = 140, vida = 0},
["Shiny Farfetchd"] = {level = 50, cons = 140, vida = 0},
["ShinyGrimer"] = {level = 20, cons = 140, vida = 0},
["Shiny Muk"] = {level = 50, cons = 140, vida = 0},
["ShinyGrowlithe"] = {level = 30, cons = 140, vida = 0},
["Shiny Arcanine"] = {level = 100, cons = 140, vida = 0},
["ShinyDratini"] = {level = 35, cons = 140, vida = 0},
["ShinyAbra"] = {level = 50, cons = 140, vida = 0},
["Elite Hitmonlee"] = {level = 100, cons = 250, vida = 16500},
["Elite Hitmonchan"] = {level = 100, cons = 240, vida = 17500},
}

local msgunica = true
local msgunicago1, msgunicaback1 = "Go, doka!", "Come back, doka!"
local msgunicago2, msgunicaback2 = "Let's do it, doka!", "Thanks for helping, doka!"
local msgunicago3, msgunicaback3 = "I choose you, doka!", "That's enough, come back!"
local msgunicago4, msgunicaback4 = "I need your help, doka!", "You were great, doka!"
local msgunicago5, msgunicaback5 = "Let's fight, doka!", "Excellent work, doka!"
local msgunicago6, msgunicaback6 = "It's battle time, doka!", "Well done, doka!"

function onUse(cid, item, frompos, item2, topos)
for a, b in pairs(ginasios) do
if getPlayerStorageValue(cid, b.storage) == 1 then -- GYM
doPlayerSendCancel(cid, "You can't return your pokemon during gym battles.")
return true
end
end
if #getCreatureSummons(cid) >= 1 and getPlayerStorageValue(getCreatureSummons(cid)[1], 33) >= 1 then
return true
end
local random2 = math.random(1,6)
if random2 == 1 then
msgunicaback = msgunicaback1
elseif random2 == 2 then
msgunicaback = msgunicaback2
elseif random2 == 3 then
msgunicaback = msgunicaback3
elseif random2 == 4 then
msgunicaback = msgunicaback4
elseif random2 == 5 then
msgunicaback = msgunicaback5
elseif random2 == 6 then
msgunicaback = msgunicaback6
end
local random = math.random(1,6)
if random == 1 then
msgunicago = msgunicago1
elseif random == 2 then
msgunicago = msgunicago2
elseif random == 3 then
msgunicago = msgunicago3
elseif random == 4 then
msgunicago = msgunicago4
elseif random == 5 then
msgunicago = msgunicago5
elseif random == 6 then
msgunicago = msgunicago6
end

if item.itemid == 2222 or item.itemid == 2223 then
gobackeff = 10
elseif item.itemid == 2220 or item.itemid == 2221 then
gobackeff = 191
elseif item.itemid == 2651 or item.itemid == 2652 then
gobackeff = 189
elseif item.itemid == 2653 or item.itemid == 2654 then
gobackeff = 190
elseif item.itemid == 2655 or item.itemid == 2656 then
gobackeff = 195
end
local effect = gobackeff

if item.itemid == 2223 or item.itemid == 2221 or item.itemid == 2652 or item.itemid == 2654 or item.itemid == 2656 then

if #getCreatureSummons(cid) >= 1 then
local z = getCreatureSummons(cid)[1]
local pokename = getCreatureName(z)
local mbk = msgunicaback:gsub("doka", pokename)
if getItemAttribute(item.uid, "poke"):find(getCreatureName(z)) then
doTransformItem(item.uid, item.itemid-1)
doCreatureSay(cid, mbk, TALKTYPE_SAY)
local summom = getCreatureSummons(cid)
local maxh = pokes[getCreatureName(summom[1])].vida
local pct2 = ((getCreatureHealth(summom[1])) / (getCreatureMaxHealth(summom[1])))
local vids = ((getCreatureHealth(summom[1])) - 2)
doCreatureAddHealth(summom[1], -vids)
setCreatureMaxHealth(summom[1], maxh)
doCreatureAddHealth(summom[1], ((maxh) * (pct2)))
doItemSetAttribute(item.uid, "poke", getItemAttribute(item.uid, "poke"):sub(1, findLetter(getItemAttribute(item.uid, "poke"), ".")) .. " HP = ["..getCreatureHealth(z).."/"..getCreatureMaxHealth(z).."]")
setPlayerStorageValue(cid, 61204, 0)
setPlayerStorageValue(cid, 2, 0)
doSendMagicEffect(getCreaturePosition(z), effect)
doRemoveCreature(z)
return true
end
end

elseif item.itemid == 2222 or item.itemid == 2220  or item.itemid == 2651  or item.itemid == 2653  or item.itemid == 2655 then

if item.uid ~= getPlayerSlotItem(cid, CONST_SLOT_FEET).uid then
	doPlayerSendCancel(cid, "You must put your pokeball in the correct place!")
	return TRUE
end


if not canSummon(cid) then
return doPlayerSendDefaultCancel(cid, RETURNVALUE_NOTENOUGHROOM)
end

if getPlayerStorageValue(cid, 63215) >= 1 then
return doPlayerSendCancel(cid, "You can't use pokeball while surfing.")
end

if getPlayerStorageValue(cid, 62314) >= 1 then
return doPlayerSendCancel(cid, "You can't use pokeball while flying.")
end

if #getCreatureSummons(cid) >= 1 then
return doPlayerSendCancel(cid, "You have already summoned a pokemon.")
end

for i,x in pairs(pokes) do
if i == getItemAttribute(item.uid, "poke"):sub(9, findLetter(getItemAttribute(item.uid, "poke"), "'")-1) then

if getPlayerLevel(cid) < x.level then
doPlayerSendCancel(cid, "You need level "..x.level.." or higher to use this pokemon.")
return true
end
local removed = doCreateItem(1285, 1, getThingPos(cid))
doSummonMonster(cid, i)
local pk = getCreatureSummons(cid)[1]
doTeleportThing(pk, getClosestFreeTile(pk, getThingPos(cid)), false)
doRemoveItem(removed, 1)
doCreatureSetLookDir(pk, 2)
local maxh = pokes[getCreatureName(pk)].vida
local levellife = ((getPlayerLevel(cid)) * (pokes[getCreatureName(pk)].cons))
local health = tonumber(getItemAttribute(item.uid, "poke"):match("%[(.-)/"))
doConvinceCreature(cid, pk)
doCreatureAddHealth(pk, health-maxh)
local pct = ((getCreatureHealth(pk)) / (getCreatureMaxHealth(pk)))
local vidis = (getCreatureHealth(pk))
setCreatureMaxHealth(pk, ((maxh) + (levellife)))
doCreatureAddHealth(pk, 2)
doCreatureAddHealth(pk, -vidis)
doCreatureAddHealth(pk, ((getCreatureMaxHealth(pk)) * (pct)) - 2)
doTransformItem(item.uid, item.itemid+1)
local pokename = getCreatureName(getCreatureSummons(cid)[1])
local mgo = msgunicago:gsub("doka", pokename)
doCreatureSay(cid, mgo, TALKTYPE_SAY)
doItemSetAttribute(item.uid, "poke", getItemAttribute(item.uid, "poke"):sub(1, findLetter(getItemAttribute(item.uid, "poke"), ".")))
doSendMagicEffect(getCreaturePosition(pk), effect)
setPlayerStorageValue(cid, 61204, 1)
registerCreatureEvent(pk, "DiePoke")
registerCreatureEvent(pk, "Exp")
break
end
end
end
return TRUE
end