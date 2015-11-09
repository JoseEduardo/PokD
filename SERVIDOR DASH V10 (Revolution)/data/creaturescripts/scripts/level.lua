------ a Tabela abaixo e a tabela de exp que seu pokemon vai receber ficando assim:
---- ["Nome do Pokemon"] = {exp = Experiencia que seu Pokemon vai Receber},
local PokeExp = {
["Abra"] = {exp = 100},
["Aerodactyl"] = {exp = 600},
["Alakazam"] = {exp = 480},
["Arbok"] = {exp = 170},
["Arcanine"] = {exp = 240},
["Articuno"] = {exp = 800},
["Beedrill"] = {exp = 200},
["Bellsprout"] = {exp = 70},
["Blastoise"] = {exp = 370},
["Bulbasaur"] = {exp = 180},
["Butterfree"] = {exp = 140},
["Caterpie"] = {exp = 70},
["Chansey"] = {exp = 280},
["Charmander"] = {exp = 270},
["Charmeleon"] = {exp = 340},
["Charizard"] = {exp = 670},
["Clefable"] = {exp = 280},
["Clefairy"] = {exp = 170},
["Cloyster"] = {exp = 270},
["Crystal Onix"] = {exp = 700},
["Cubone"] = {exp = 70},
["Dewgong"] = {exp = 170},
["Diglett"] = {exp = 70},
["Ditto"] = {exp = 480},
["Dodrio"] = {exp = 270},
["Doduo"] = {exp = 170},
["Dragonair"] = {exp = 270},
["Dragonite"] = {exp = 570},
["Dratini"] = {exp = 170},
["Drowzee"] = {exp = 170},
["Dugtrio"] = {exp = 270},
["Eevee"] = {exp = 470},
["Ekans"] = {exp = 4000},
["Elder Charizard"] = {exp = 870},
["Electabuzz"] = {exp = 670},
["Electrode"] = {exp = 470},
["Exeggcute"] = {exp = 370},
["Exeggutor"] = {exp = 570},
["Farfetchd"] = {exp = 470},
["Fearow"] = {exp = 270},
["Flareon"] = {exp = 470},
["Gastly"] = {exp = 170},
["Gengar"] = {exp = 470},
["Geodude"] = {exp = 70},
["Gloom"] = {exp = 170},
["Golbat"] = {exp = 270},
["Goldeen"] = {exp = 70},
["Golduck"] = {exp = 170},
["Golem"] = {exp = 470},
["Graveler"] = {exp = 170},
["Grimer"] = {exp = 70},
["Growlithe"] = {exp = 170},
["Gyarados"] = {exp = 770},
["Haunter"] = {exp = 370},
["Hitmonchan"] = {exp = 570},
["Hitmonlee"] = {exp = 670},
["Horsea"] = {exp = 70},
["Hypno"] = {exp = 470},
["Ivysaur"] = {exp = 270},
["Jigglypuff"] = {exp = 270},
["Jolteon"] = {exp = 370},
["Jynx"] = {exp = 470},
["Kabuto"] = {exp = 370},
["Kabutops"] = {exp = 570},
["Kadabra"] = {exp = 470},
["Kakuna"] = {exp = 70},
["Kangaskhan"] = {exp = 870},
["Kingler"] = {exp = 170},
["Koffing"] = {exp = 170},
["Krabby"] = {exp = 70},
["Lapras"] = {exp = 470},
["Lickitung"] = {exp = 270},
["Machamp"] = {exp = 470},
["Machoke"] = {exp = 270},
["Machop"] = {exp = 70},
["Magikarp"] = {exp = 17},
["Magmar"] = {exp = 570},
["Magnemite"] = {exp = 70},
["Magneton"] = {exp = 270},
["Mankey"] = {exp = 70},
["Marowak"] = {exp = 170},
["Meowth"] = {exp = 70},
["Metapod"] = {exp = 70},
["Mew"] = {exp = 870},
["Mewtwo"] = {exp = 970},
["Moltres"] = {exp = 870},
["Mr Mime"] = {exp = 570},
["Muk"] = {exp = 270},
["Nidoking"] = {exp = 670},
["Nidoqueen"] = {exp = 470},
["Nidoran Female"] = {exp = 70},
["Nidoran Male"] = {exp = 70},
["Nidorina"] = {exp = 70},
["Nidorino"] = {exp = 70},
["Ninetales"] = {exp = 570},
["Oddish"] = {exp = 70},
["Omanyte"] = {exp = 270},
["Omastar"] = {exp = 170},
["Onix"] = {exp = 470},
["Paras"] = {exp = 70},
["Parasect"] = {exp = 270},
["Persian"] = {exp = 170},
["Pidgeot"] = {exp = 370},
["Pidgeotto"] = {exp = 170},
["Pidgey"] = {exp = 70},
["Pikachu"] = {exp = 270},
["Pinsir"] = {exp = 370},
["Poliwag"] = {exp = 70},
["Poliwhirl"] = {exp = 270},
["Poliwrath"] = {exp = 470},
["Ponyta"] = {exp = 170},
["Porygon"] = {exp = 670},
["Primeape"] = {exp = 370},
["Psyduck"] = {exp = 170},
["Raichu"] = {exp = 370},
["Rapidash"] = {exp = 470},
["Raticate"] = {exp = 270},
["Rattata"] = {exp = 70},
["Rhydon"] = {exp = 570},
["Rhyhorn"] = {exp = 370},
["Sandshrew"] = {exp = 70},
["Sandslash"] = {exp = 470},
["Scyther"] = {exp = 870},
["Seadra"] = {exp = 370},
["Seaking"] = {exp = 170},
["Seel"] = {exp = 70},
["Shellder"] = {exp = 70},
["Slowbro"] = {exp = 170},
["Slowpoke"] = {exp = 70},
["Snorlax"] = {exp = 870},
["Spearow"] = {exp = 70},
["Squirtle"] = {exp = 170},
["Starmie"] = {exp = 370},
["Staryu"] = {exp = 70},
["Tangela"] = {exp = 270},
["Tauros"] = {exp = 170},
["Tentacool"] = {exp = 70},
["Tentacruel"] = {exp = 470},
["Vaporeon"] = {exp = 270},
["Venomoth"] = {exp = 170},
["Venonat"] = {exp = 70},
["Venusaur"] = {exp = 370},
["Victreebel"] = {exp = 570},
["Vileplume"] = {exp = 470},
["Voltorb"] = {exp = 70},
["Vulpix"] = {exp = 170},
["Wartortle"] = {exp = 170},
["Weedle"] = {exp = 70},
["Weepinbell"] = {exp = 270},
["Weezing"] = {exp = 370},
["Wigglytuff"] = {exp = 570},
["Zapdos"] = {exp = 870},
["Zubat"] = {exp = 70},
["Shiny Venusaur"] = {exp = 1700},
["Shiny Tentacool"] = {exp = 570},
["Shiny Tentacruel"] = {exp = 870},
["Shiny Abra"] = {exp = 470},
["Shiny Blastoise"] = {exp = 2500},
["Shiny Butterfree"] = {exp = 1500},
["Shiny Beedrill"] = {exp = 1000},
["Shiny Rattata"] = {exp = 125},
["Shiny Raticate"] = {exp = 163},
["Shiny Raichu"] = {exp = 600},
["Shiny Zubat"] = {exp = 162},
["Shiny Magikarp"] = {exp = 32},
["Shiny Paras"] = {exp = 200},
["Shiny Parasect"] = {exp = 800},
["Shiny Growlithe"] = {exp = 1500},
["Shiny Arcanine"] = {exp = 4000},
["Shiny Grimer"] = {exp = 1500},
["Shiny Hitmonchan"] = {exp = 4500},
["Shiny Hitmonlee"] = {exp = 4500},
["Shiny Muk"] = {exp = 1000},
["Shiny Krabby"] = {exp = 300},
["Shiny Kingler"] = {exp = 900},
["Shiny Voltorb"] = {exp = 1500},
["Shiny Electrode"] = {exp = 1200},
["Shiny Farfetchd"] = {exp = 3200},
["Shiny Horsea"] = {exp = 170},
["Shiny Oddish"] = {exp = 150},
["Shiny Seadra"] = {exp = 900},
["Shiny Scyther"] = {exp = 3000},
["Shiny Jynx"] = {exp = 3000},
["Shiny Electabuzz"] = {exp = 3000},
["Shiny Venomoth"] = {exp = 2000},
["Red Gyarados"] = {exp = 1540},
["Shiny Dratini"] = {exp = 2000}
}

function onKill(cid, target)
local Level_MAX = 100
local feet = getPlayerSlotItem(cid, CONST_SLOT_FEET)
local chck = getItemAttribute(feet.uid, "ExpLevel")
local chckc = getItemAttribute(feet.uid, "level")

	if isPlayer(cid) == TRUE and isSummon(target) == true then
		doPlayerSendTextMessage(cid, TALKTYPE_ORANGE_1, "Your Pokemon dont gain experience in Duel")
	return TRUE
	end

	if isPlayer(target) == FALSE and getItemAttribute(feet.uid, "level") == False then
	return true
	end

	if isPlayer(target) == FALSE and getItemAttribute(feet.uid, "level") == Level_MAX then
	return true
	end

	--local NEXT_LEVEL = ((chckc*20)+99)
	local NEXT_LEVEL = getPokemonExperienceTable(getPokeballInfo(feet.uid).name)[chckc]
	if isPlayer(target) == FALSE and (getItemAttribute(feet.uid, "ExpLevel") + PokeExp[getCreatureName(target)].exp)  <= NEXT_LEVEL then
		local tab = PokeExp[getCreatureName(target)]
		if tab then
			doPlayerSendTextMessage(cid, TALKTYPE_ORANGE_1, "Seu pokemon Ganhou "..tab.exp.." de experiencia "..chck +tab.exp.."/"..(tostring(NEXT_LEVEL)+1))
			doItemSetAttribute(feet.uid, "ExpLevel", chck +tab.exp)
			setPlayerStorageValue(getCreatureSummons(cid)[1], 961620, chck +tab.exp) 
		return true
		end
	end


	if isPlayer(target) == FALSE and (getItemAttribute(feet.uid, "ExpLevel") + PokeExp[getCreatureName(target)].exp) >= NEXT_LEVEL then
		local tab = PokeExp[getCreatureName(target)]
		if tab then
			doPlayerSendTextMessage(cid, TALKTYPE_ORANGE_1, "Your pokemon advanced from level "..chckc.." to Level "..(chckc+1).."!")
			doItemSetAttribute(feet.uid, "level", chckc +1)
			doItemSetAttribute(feet.uid, "ExpLevel", 1)
			if #getCreatureSummons(cid) >= 1 then
				setPlayerStorageValue(getCreatureSummons(cid)[1], 993615, chckc +1) 
			end
			if tonumber(getItemAttribute(feet.uid, "level")) >= tonumber(pokesEvo[doCorrectPokemonName(getCreatureName(getCreatureSummons(cid)[1]))].level) then 
				doEvolueLevel(cid, getCreatureSummons(cid)[1],  getItemAttribute(feet.uid, "level"))
			else
				local pk = getCreatureSummons(cid)[1]
				doUpdateNick(pk, getPokeballInfo(getPlayerSlotItem(cid, 8).uid).nick.."["..getItemAttribute(getPlayerSlotItem(cid, 8).uid, "level").."]")
				doCreatureAddHealth(pk, getCreatureMaxHealth(pk)-getCreatureHealth(pk))
				doUpdateStatusPoke(cid)
			end
		return true
		end
	end
end