local pokes = {
["Bulbasaur"] = {chance = 45, corpse = 5969, health = 1200, maxhealth = 1200},
["Ivysaur"] = {chance = 70, corpse = 5982, health = 2600, maxhealth = 2600},
["Venusaur"] = {chance = 110, corpse = 5962, health = 5200, maxhealth = 5200},
["Shiny Venusaur"] = {chance = 55, corpse = 8764, health = 10400, maxhealth = 10400},
["Machop"] = {chance = 30, corpse = 6045, health = 1100, maxhealth = 1100},
["Machoke"] = {chance = 50, corpse = 4251, health = 3500, maxhealth = 3500},
["Machamp"] = {chance = 85, corpse = 6048, health = 7500, maxhealth = 7500},
["Geodude"] = {chance = 20, corpse = 6071, health = 700, maxhealth = 700},
["Graveler"] = {chance = 35, corpse = 6516, health = 3000, maxhealth = 3000},
["Golem"] = {chance = 60, corpse = 6043, health = 6500, maxhealth = 6500},
["Poliwag"] = {chance = 6, corpse = 6042, health = 400, maxhealth = 400},
["Poliwhirl"] = {chance = 28, corpse = 6054, health = 1200, maxhealth = 1200},
["Poliwrath"] = {chance = 55, corpse = 6033, health = 4400, maxhealth = 4400},
["Tentacool"] = {chance = 16, corpse = 2961, health = 1050, maxhealth = 1050},
["Shiny Tentacool"] = {chance = 8, corpse = 8748, health = 2100, maxhealth = 2100},
["Tentacruel"] = {chance = 65, corpse = 6037, health = 7500, maxhealth = 7500},
["Shiny Tentacruel"] = {chance = 32.5, corpse = 8757, health = 15000, maxhealth = 15000},
["Bellsprout"] = {chance = 255, corpse = 2806, health = 420, maxhealth = 420},
["Weepinbell"] = {chance = 120, corpse = 2928, health = 1100, maxhealth = 1100},
["Victreebel"] = {chance = 45, corpse = 6332, health = 4000, maxhealth = 4000},
["Abra"] = {chance = 200, corpse = 2905, health = 620, maxhealth = 620},
["Shiny Abra"] = {chance = 50, corpse = 8771, health = 10000, maxhealth = 10000},
["Kadabra"] = {chance = 100, corpse = 6060, health = 2500, maxhealth = 2500},
["Alakazam"] = {chance = 50, corpse = 6057, health = 4000, maxhealth = 4000},
["Shiny Alakazam"] = {chance = 25, corpse = 6057, health = 20000, maxhealth = 20000},
["Charmander"] = {chance = 45, corpse = 5983, health = 970, maxhealth = 970},
["Charmeleon"] = {chance = 45, corpse = 5981, health = 2900, maxhealth = 2900},
["Charizard"] = {chance = 45, corpse = 6005, health = 5200, maxhealth = 5200},
["Blastoise"] = {chance = 45, corpse =5999, health = 5900, maxhealth = 5900},
["Shiny Blastoise"] = {chance = 25, corpse =5950, health = 12000, maxhealth = 12000},
["Wartortle"] = {chance = 45, corpse =5978, health = 2800, maxhealth = 2800},
["Squirtle"] = {chance = 45, corpse =6008, health = 1350, maxhealth = 1350},
["Caterpie"] = {chance = 255, corpse =5971, health = 300, maxhealth = 300},
["Metapod"] = {chance = 120, corpse =5970, health = 1100, maxhealth = 1100},
["Butterfree"] = {chance = 45, corpse =5985, health = 2000, maxhealth = 2000},
["Shiny butterfle"] = {chance = 25, corpse =8762, health = 4000, maxhealth = 4000},
["Weedle"] = {chance = 255, corpse =5964, health = 325, maxhealth = 325},
["Kakuna"] = {chance = 120, corpse =6000, health = 900, maxhealth = 900},
["Beedrill"] = {chance = 45, corpse =5990, health = 1900, maxhealth = 1900},
["Shiny Bedril"] = {chance = 25, corpse =8767, health = 4000, maxhealth = 4000},
["Pidgey"] = {chance = 255, corpse =5961, health = 380, maxhealth = 380},
["Pidgeotto"] = {chance = 120, corpse =5966 , health = 1400, maxhealth = 1400},
["Pidgeot"] = {chance = 45, corpse =6020, health = 3800, maxhealth = 3800},
["Rattata"] = {chance = 255, corpse =5974, health = 350, maxhealth = 350},
["Shiny Rattata"] = {chance = 65, corpse =110, health = 800, maxhealth = 800},
["Raticate"] = {chance = 127, corpse =6007, health = 900, maxhealth = 900},
["Shiny Raticate"] = {chance = 63, corpse =8765, health = 1800, maxhealth = 1800},
["Spearow"] = {chance = 255, corpse =5968, health = 450, maxhealth = 450},
["Fearow"] = {chance = 90, corpse =5992, health = 3300, maxhealth = 3300},
["Ekans"] = {chance = 255, corpse =5979, health = 600, maxhealth = 600},
["Arbok"] = {chance = 90, corpse =5984, health = 2900, maxhealth = 2900},
["Pikachu"] = {chance = 190, corpse =6001, health = 900, maxhealth = 900},
["Raichu"] = {chance = 75, corpse =5996, health = 3200, maxhealth = 3200},
["Shiny Raichu"] = {chance = 32,corpse =8770, health = 6400, maxhealth = 6400},
["Sandshrew"] = {chance = 255, corpse =5988, health = 700, maxhealth = 700},
["Sandslash"] = {chance = 90, corpse =6041, health = 3400, maxhealth = 3400},
["Nidoran female"] = {chance = 235, corpse =6013, health = 600, maxhealth = 600},
["Nidorina"] = {chance = 120, corpse =6014, health = 2000, maxhealth = 2000},
["Nidoqueen"] = {chance = 45, corpse =6021, health = 4200, maxhealth = 4200},
["Nidoran male"] = {chance = 235, corpse =6015, health = 650, maxhealth = 650},
["Nidorino"] = {chance = 120, corpse =6019, health = 2500, maxhealth = 2500},
["Nidoking"] = {chance = 45, corpse =5995, health = 4800, maxhealth = 4800},
["Clefairy"] = {chance = 150, corpse =2966, health = 600, maxhealth = 600},
["Clefable"] = {chance = 25, corpse =6006, health = 2400, maxhealth = 2400},
["Vulpix"] = {chance = 190, corpse =6003, health = 680, maxhealth = 680},
["Ninetales"] = {chance = 75, corpse =6040, health = 3400, maxhealth = 3400},
["Jigglypuff"] = {chance = 170, corpse =6011, health = 550, maxhealth = 550},
["Wigglytuff"] = {chance = 50, corpse =6012, health = 2900, maxhealth = 2900},
["Zubat"] = {chance = 255, corpse =5989, health = 450, maxhealth = 450},
["Shiny Zubat"] = {chance = 122, corpse =8750, health = 1000, maxhealth = 1000},
["Golbat"] = {chance = 90, corpse =6053, health = 1900, maxhealth = 1900},
["Oddish"] = {chance = 255, corpse =3008, health = 340, maxhealth = 340},
["Shiny Oddish"] = {chance = 122,corpse =8749, health = 700, maxhealth = 700},
["Gloom"] = {chance = 120, corpse =6017, health = 1400, maxhealth = 1400},
["Vileplume"] = {chance = 45, corpse =6025, health = 3300, maxhealth = 3300},
["Paras"] = {chance = 255, corpse =3007, health = 850, maxhealth = 850},
["Shiny Paras"] = {chance = 122, corpse =8743, health = 1800, maxhealth = 1800},
["Parasect"] = {chance = 75, corpse =6027, health = 3800, maxhealth = 3800},
["Shiny Parasect"] = {chance = 35, corpse =8756, health = 8000, maxhealth = 8000},
["Venonath"] = {chance = 190, corpse =5997, health = 1350, maxhealth = 1350},
["Venomoth"] = {chance = 75, corpse =2925, health = 3850, maxhealth = 3850},
["Diglett"] = {chance = 255, corpse =6023, health = 900, maxhealth = 900},
["Dugtrio"] = {chance = 50, corpse =6024, health = 3450, maxhealth = 3450},
["Meowth"] = {chance = 255, corpse =6034, health = 950, maxhealth = 950},
["Persian"] = {chance = 90, corpse =6009, health = 2250, maxhealth = 2250},
["Psyduck"] = {chance = 190, corpse =6029, health = 950, maxhealth = 950},
["Golduck"] = {chance = 75, corpse =6028, health = 4000, maxhealth = 4000},
["Mankey"] = {chance = 190, corpse =6035, health = 1050, maxhealth = 1050},
["Primeape"] = {chance = 75, corpse =6032, health = 4500, maxhealth = 4500},
["Ponyta"] = {chance = 190, corpse =5975, health = 1400, maxhealth = 1400},
["Rapidash"] = {chance = 60, corpse =4323, health = 5500, maxhealth = 5500},
["Slowpoke"] = {chance = 190, corpse =2926, health = 1200, maxhealth = 1200},
["Slowbro"] = {chance = 75, corpse =5986, health = 4600, maxhealth = 4600},
["Doduo"] = {chance = 190, corpse =2842, health = 600, maxhealth = 600},
["Dodrio"] = {chance = 45, corpse =6047, health = 2650, maxhealth = 2650},
["Seel"] = {chance = 190, corpse =6030, health = 1000, maxhealth = 1000},
["Dewgong"] = {chance = 75, corpse =6038, health = 5200, maxhealth = 5200},
["Magnemite"] = {chance = 190, corpse =6056, health = 450, maxhealth = 450},
["Magneton"] = {chance = 60, corpse =6076, health = 1750, maxhealth = 1750},
["Growlithe"] = {chance = 190, corpse =6036, health = 1000, maxhealth = 1000},
["Shiny Growlithe"] = {chance = 90, corpse =8742, health = 2000, maxhealth = 2000},
["Shiny Arcanine"] = {chance = 32, corpse =8746, health = 14000, maxhealth = 14000},
["Arcanine"] = {chance = 75, corpse =6031, health = 6800, maxhealth = 6800},
["Grimer"] = {chance = 190, corpse =6055, health = 600, maxhealth = 600},
["Shiny Grimer"] = {chance = 80, corpse =8752, health = 1200, maxhealth = 1200},
["Muk"] = {chance = 75, corpse =2845, health = 2400, maxhealth = 2400},
["Shiny Muk"] = {chance = 32, corpse =8747, health = 5000, maxhealth = 5000},
["Shellder"] = {chance = 190, corpse =2837, health = 800, maxhealth = 800},
["Cloyster"] = {chance = 60, corpse =2932, health = 5000, maxhealth = 5000},
["Gastly"] = {chance = 190, corpse =5993, health = 1000, maxhealth = 1000},
["Haunter"] = {chance = 90, corpse =6004, health = 3000, maxhealth = 3000},
["Gengar"] = {chance = 45, corpse =6336, health = 7000, maxhealth = 7000},
["Onix"] = {chance = 45, corpse =2990, health = 5300, maxhealth = 5300},
["Drowzee"] = {chance = 190, corpse =6026, health = 1150, maxhealth = 1150},
["Hypno"] = {chance = 75, corpse =6046, health = 4600, maxhealth = 4600},
["Shiny Krabby"] = {chance = 112, corpse =8755, health =1700, maxhealth =1700},
["Krabby"] = {chance = 225,corpse =6039, health = 850, maxhealth = 850},
["Shiny Kingler"] = {chance = 30, corpse =8769, health = 6600, maxhealth = 6600},
["Kingler"] = {chance = 60, corpse =6340, health = 3250, maxhealth = 3250},
["Voltorb"] = {chance = 190, corpse =6049, health = 620, maxhealth = 620},
["Shiny Voltorb"] = {chance = 140, corpse =8754, health = 1200, maxhealth = 1200},
["Electrode"] = {chance = 60, corpse =6051, health = 2000, maxhealth = 2000},
["Shiny Electrode"] = {chance = 30, corpse =8753, health = 4000, maxhealth = 4000},
["Exeggcute"] = {chance = 90, corpse =2982, health = 800, maxhealth = 800},
["Exeggutor"] = {chance = 45, corpse =3005, health = 4000, maxhealth = 4000}, -- PAREI AQUI!
["Cubone"] = {chance = 70, corpse =6050, health = 1200, maxhealth = 1200},
["Lickitung"] = {chance = 70, corpse =2953, health = 5800, maxhealth = 5800},
["Marowak"] = {chance = 40, corpse =6072, health = 3900, maxhealth = 3900},
["Hitmonlee"] = {chance = 20, corpse =6067, health = 5500, maxhealth = 5500},
["Hitmonchan"] = {chance = 20, corpse =5977, health = 5500, maxhealth = 5500},
["Goldeen"] = {chance = 100, corpse = 2970, health = 950, maxhealth = 950},
["Seaking"] = {chance = 50, corpse =3038, health = 2000, maxhealth = 2000},
["Koffing"] = {chance = 100, corpse = 2936, health = 900, maxhealth = 900},
["Weezing"] = {chance = 70, corpse =6306, health = 2800, maxhealth = 2800},
["Rhydon"] = {chance = 50, corpse = 2858, health = 7000, maxhealth = 7000},
["Rhyhorn"] = {chance = 70, corpse =3035, health = 3800, maxhealth = 3800},
["Chansey"] = {chance = 50, corpse = 6010, health = 7500, maxhealth = 7500},
["Tangela"] = {chance = 60, corpse = 5976, health = 3500, maxhealth = 3500},
["Kangaskhan"] = {chance = 30, corpse = 6073, health = 7000, maxhealth = 7000},
["Shiny Horsea"] = {chance = 70, corpse = 8768, health = 600, maxhealth = 600},
["Horsea"] = {chance = 150, corpse = 2973, health = 300, maxhealth = 300},
["Shiny Seadra"] = {chance = 60, corpse = 8760, health =5000, maxhealth = 5000 },
["Seadra"] = {chance = 60, corpse = 2872, health =2500, maxhealth = 2500 },
["Staryu"] = {chance = 150, corpse = 5987, health = 1050, maxhealth = 1050},
["Starmie"] = {chance = 60, corpse = 7320, health = 3800, maxhealth = 3800},
["Mrmime"] = {chance = 30, corpse =6069, health = 5500, maxhealth = 5500},
["Scyther"] = {chance = 30, corpse =3002, health = 6500, maxhealth = 6500},
["Shiny Scyther"] = {chance = 5, corpse =8772, health = 13000, maxhealth = 13000},
["Jynx"] = {chance = 40, corpse = 6077, health = 6000, maxhealth = 6000},
["Shiny Jynx"] = {chance = 15, corpse = 8758, health = 12000, maxhealth = 12000},
["Electabuzz"] = {chance = 30, corpse =6065, health = 6800, maxhealth = 6800},
["Shiny Electabuzz"] = {chance = 15, corpse =8773, health = 14000, maxhealth = 14000},
["Magmar"] = {chance = 30, corpse =7283, health = 7200, maxhealth = 7200},
["Pinsir"] = {chance = 50, corpse = 7282, health = 4000, maxhealth = 4000},
["Tauros"] = {chance = 50, corpse = 6302, health = 4200, maxhealth = 4200},
["Magikarp"] = {chance = 2, corpse = 2818, health = 120, maxhealth = 120 },
["Shiny Magikarp"] = {chance = 15, corpse = 105, health = 240, maxhealth = 240},
["Gyarados"] = {chance = 30, corpse = 6331, health = 7800, maxhealth = 7800},
["Shiny Gyarados"] = {chance = 10, corpse = 2020, health = 18000, maxhealth = 18000},
["Lapras"] = {chance = 20, corpse = 6018, health = 7000, maxhealth = 7000},
["Ditto"] = {chance = 35, corpse = 2817, health = 4000, maxhealth = 4000},
["Vaporeon"] = {chance = 50, corpse = 5960, health = 4500, maxhealth = 4500},
["Eevee"] = {chance = 100, corpse = 6364, health = 1500, maxhealth = 1500},
["Flareon"] = {chance = 50, corpse = 6059, health = 4500, maxhealth = 4500},
["Jolteon"] = {chance = 50, corpse = 6044, health = 4500, maxhealth = 4500},
["Porygon"] = {chance = 35, corpse = 5963 , health = 1700, maxhealth = 1700},
["Omanyte"] = {chance = 60, corpse = 5998, health = 1300, maxhealth = 1300},
["Omastar"] = {chance = 30, corpse = 5994, health = 6000, maxhealth = 6000},
["Kabutops"] = {chance = 30, corpse = 6345, health = 6500, maxhealth = 6500},
["Kabuto"] = {chance = 60, corpse = 5972, health = 1300, maxhealth = 1300},
["Aerodactyl"] = {chance = 10, corpse = 6338, health = 8000, maxhealth = 8000},
["Snorlax"] = {chance = 30, corpse = 6016, health = 9500, maxhealth = 9500},
["Moltres"] = {chance = 1, corpse = 7330, health = 11000, maxhealth = 11000},
["Articuno"] = {chance = 1, corpse = 7256, health = 11000, maxhealth = 11000},
["Zapdos"] = {chance = 1, corpse = 6074, health = 11000, maxhealth = 11000},
["Crystal Onix"] = {chance = 10, corpse = 6320, health = 10000, maxhealth = 10000},
["Mew"] = {chance = 1000, corpse = 2939, health = 7200, maxhealth = 7200},
["Mewtwo"] = {chance = 1, corpse = 5973, health = 8500, maxhealth = 8500},
["Shiny Charizard"] = {chance = 50, corpse = 2954, health = 10000, maxhealth = 10000},
["Dragonite"] = {chance = 10, corpse = 4295, health = 10800, maxhealth = 10800},
["Dragonair"] = {chance = 20, corpse = 6002, health = 5600, maxhealth = 5600},
["Dratini"] = {chance = 40, corpse = 2879, health = 1200, maxhealth = 1200},
["Farfetch'd"] = {chance = 80, corpse = 2836, health = 3000, maxhealth = 3000},
["Shiny Farfetch'd"] = {chance = 100, corpse = 8745, health = 6000, maxhealth = 6000}
}

local description = "Contains a %pokename."

function onUse(cid, item, frompos, item2, topos)
local name = getItemNameById(item2.itemid)
if item.itemid == 2147 then
catchrate = 2
oncatch = 24
onfail = 23
bolabola = 2222
elseif item.itemid == 2146 then
catchrate = 8
oncatch = 200
onfail = 199
bolabola = 2220
end
local rate = (catchrate)
local catch = oncatch
local fail = onfail
local newid = bolabola
for i,x in pairs(pokes) do
if getItemNameById(item2.itemid):find(i:lower()) then
if getItemIdByName(name) == pokes[i].corpse then
if cid ~= getItemAttribute(item2.uid, "corpseowner") and isInArray({1,8}, getPlayerGroupId(cid)) then
doPlayerSendCancel(cid, "You are not allowed to catch this pokemon.")
return true
end
doRemoveItem(item.uid, 1)
doRemoveItem(item2.uid, 1)
local pegar = math.random(0, x.chance)
if pegar <= 1*(rate) then
doSendMagicEffect(topos, catch)

local nas = {
["%%pokename"] = i
}
for i,x in pairs(nas) do
if description:find(i) then
description = description:gsub(i, x)
end
end

local function capturou(params)
if not isCreature(params.cid) then
return true
end
if not string.find(getPlayerStorageValue(cid, 54842), ""..i..",") then
doPlayerAddSoul(cid, 1)
setPlayerStorageValue(cid, 54842, getPlayerStorageValue(cid, 54842)..""..i..", ")
end
if getPlayerFreeCap(cid) <= 0.99 then
item = doCreateItemEx(newid-1)
doItemSetAttribute(item, "poke", params.poke)
doItemSetAttribute(item, "nome", params.nome)
doItemSetAttribute(item, "description", params.description)
doPlayerSendMailByName(getCreatureName(params.cid), item, 1)
doPlayerSendTextMessage(cid, 27, "Congratulations, you caught a "..i.."!")
doPlayerSendTextMessage(cid, 27, "Since you are already holding six pokemons, this pokeball has been sent to your depot.")
else
item = doCreateItemEx(params.ball)
doItemSetAttribute(item, "poke", params.poke)
doItemSetAttribute(item, "nome", params.nome)
doItemSetAttribute(item, "description", params.description)
doPlayerAddItemEx(params.cid, item, true)
doTransformItem(item, newid)
doPlayerSendTextMessage(cid, 27, "Congratulations, you caught a "..i.."!")
end
if #getCreatureSummons(cid) >= 1 then
doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 178)
else
doSendMagicEffect(getThingPos(cid), 178)
end
end

local description = "Contains a "..i.."."
local poke1 = "This is "..i.."'s pokeball. HP = ["..x.health.."/"..x.maxhealth.."]"
addEvent(capturou, 4000, {cid = cid, poke = poke1, nome = i, description = description, ball = 2219, letter = 2597})
else
function ruim(params)
if not isCreature(params.cid) then
return true
end
doPlayerSendTextMessage(params.cid, 27, "Sorry, you didn\'t catch that pokemon.")
if #getCreatureSummons(params.cid) >= 1 then
doSendMagicEffect(getThingPos(getCreatureSummons(params.cid)[1]), 166)
else
doSendMagicEffect(getThingPos(params.cid), 166)
end
end
addEvent(ruim, 4000, {cid = cid})
doSendMagicEffect(topos, fail)
end
end
end
end
return TRUE
end