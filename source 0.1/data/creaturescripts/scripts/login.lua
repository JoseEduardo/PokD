local config = {
	loginMessage = getConfigValue('loginMessage'),
	useFragHandler = getBooleanFromString(getConfigValue('useFragHandler'))
}

function onLogin(cid)
    registerCreatureEvent(cid, "PlayerAttack")
	doPlayerSetLossPercent(cid, PLAYERLOSS_EXPERIENCE, 0)
	doCreatureSetDropLoot(cid, false)
	local accountManager = getPlayerAccountManager(cid)
	if(accountManager == MANAGER_NONE) then
		local lastLogin, str = getPlayerLastLoginSaved(cid), config.loginMessage
		if(lastLogin > 0) then
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_DEFAULT, str)
			str = "Your last visit was on " .. os.date("%a %b %d %X %Y", lastLogin) .. "."
		else
			str = str .. " Have fun! "
		end

		doPlayerSendTextMessage(cid, MESSAGE_STATUS_DEFAULT, str)
	elseif(accountManager == MANAGER_NAMELOCK) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Hello, it appears that your character has been namelocked, what would you like as your new name?")
	elseif(accountManager == MANAGER_ACCOUNT) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Hello, type 'account' to manage your account and if you want to start over then type 'cancel'.")
	else
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_ORANGE, "Hello, type 'account' to create an account or type 'recover' to recover an account.")
	end

	if(not isPlayerGhost(cid)) then
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
	end
	local flys = {
['Moltres'] = {229, 2300},
['Articuno'] = {230, 2100},
['Zapdos'] = {224, 2600},
['Mew'] = {232, 2200},
['Mewtwo'] = {233, 2200},
['Dragonite'] = {221, 1300},
['Pidgeot'] = {222, 900},
['Fearow'] = {226, 800},
['Aerodactyl'] = {227, 1100},
['Charizard'] = {216, 1000},
['Porygon'] = {316, 600},
['Shiny Charizard'] = {295, 2000},
}

local rides = {
["Tauros"] = {128, 780, 400}, -- tauros
["Ninetales"] = {129, 800, 375}, -- kyuubi
["Rapidash"] = {130, 800, 395}, -- rapid
["Ponyta"] = {131, 410, 500}, -- ponyta
["Rhyhorn"] = {132, 400, 510}, -- rhyhorn
["Arcanine"] = {12, 900, 390}, -- arcan
["Shiny Arcanine"] = {492, 1000, 360}, -- shiny arca
["Shiny Venusaur"] = {494, 420, 420}, -- shiny vneu
["Crystal Onix"] = {293, 480, 430}, -- cristal onix
["Onix"] = {126, 450, 450}, -- onix
["Venusaur"] = {134, 390, 450}, -- venu
["Dodrio"] = {133, 750, 380}, -- dodrio
["Doduo"] = {135, 420, 500}, -- doduo
}

	local surf = {
["Poliwag"] = {lookType=278, speed = 320},
["Poliwhirl"] = {lookType=137, speed = 480},
["Seaking"] = {lookType=269, speed = 520},
["Dewgong"] = {lookType=183, speed = 700},
["Blastoise"] = {lookType=184, speed = 850},
["Tentacruel"] = {lookType=185, speed = 750},
["Lapras"] = {lookType=186, speed = 960},
["Gyarados"] = {lookType=187, speed = 1050},
["Omastar"] = {lookType=188, speed = 680},
["Kabutops"] = {lookType=189, speed = 840},
["Poliwrath"] = {lookType=190, speed = 680},
["Vaporeon"] = {lookType=191, speed = 800},
["Staryu"] = {lookType=266, speed = 385},
["Starmie"] = {lookType=267, speed = 685},
["Goldeen"] = {lookType=268, speed = 355},
["Seadra"] = {lookType=270, speed = 655},
["Golduck"] = {lookType=271, speed = 760},
["Squirtle"] = {lookType=273, speed = 365},
["Wartortle"] = {lookType=275, speed = 605},
["Tentacool"] = {lookType=277, speed = 340},
["Snorlax"] = {lookType=300, speed = 500},
}

	registerCreatureEvent(cid, "GuildMotd")
	registerCreatureEvent(cid, "PlayerPokeDeath")
	registerCreatureEvent(cid, "LogoutPoke")
	registerCreatureEvent(cid, "WildAttack")
	registerCreatureEvent(cid, "Idle")
	registerCreatureEvent(cid, "Tele")
	registerCreatureEvent(cid, "Exp")
	registerCreatureEvent(cid, "Alook")
	if getPlayerStorageValue(cid, 61207) >= 1 then
	setPlayerStorageValue(cid, 61207, 0)
	if getPlayerSlotItem(cid, 8).itemid == 2223 or getPlayerSlotItem(cid, 8).itemid == 2221 then
	doTransformItem(getPlayerSlotItem(cid, 8).uid, getPlayerSlotItem(cid, 8).itemid-1)
	end
	local item = getPlayerSlotItem(cid, 8)
	doItemSetAttribute(item.uid, "poke", getItemAttribute(item.uid, "poke") .. " HP = ["..getPlayerStorageValue(cid, 61205).."/"..getPlayerStorageValue(cid, 61206).."]")
	end
	if getPlayerItemCount(cid, pokeout) >= 1 and getPlayerStorageValue(cid, 61207) <= 0 and getPlayerStorageValue(cid, 17001) <= 0 and getPlayerStorageValue(cid, 17000) <= 0 and getPlayerStorageValue(cid, 63215) <= 0 then
	local item = getPlayerItemById(cid, TRUE, pokeout)
	doTransformItem(item.uid, pokein)
	doItemSetAttribute(item.uid, "poke", getItemAttribute(item.uid, "poke") .. " HP = ["..getPlayerStorageValue(cid, 61205).."/"..getPlayerStorageValue(cid, 61206).."]")
	end
	if getPlayerItemCount(cid, ultrapokeout) >= 1 and getPlayerStorageValue(cid, 61207) <= 0 and getPlayerStorageValue(cid, 17001) <= 0 and getPlayerStorageValue(cid, 17000) <= 0 and getPlayerStorageValue(cid, 63215) <= 0 then
	local item = getPlayerItemById(cid, TRUE, ultrapokeout)
	doTransformItem(item.uid, ultrapokein)
	doItemSetAttribute(item.uid, "poke", getItemAttribute(item.uid, "poke") .. " HP = ["..getPlayerStorageValue(cid, 61205).."/"..getPlayerStorageValue(cid, 61206).."]")
	end
	if getPlayerItemCount(cid, greatout) >= 1 and getPlayerStorageValue(cid, 61207) <= 0 and getPlayerStorageValue(cid, 17001) <= 0 and getPlayerStorageValue(cid, 17000) <= 0 and getPlayerStorageValue(cid, 63215) <= 0 then
	local item = getPlayerItemById(cid, TRUE, greatout)
	doTransformItem(item.uid, greatin)
	doItemSetAttribute(item.uid, "poke", getItemAttribute(item.uid, "poke") .. " HP = ["..getPlayerStorageValue(cid, 61205).."/"..getPlayerStorageValue(cid, 61206).."]")
	end
	if getPlayerItemCount(cid, superout) >= 1 and getPlayerStorageValue(cid, 61207) <= 0 and getPlayerStorageValue(cid, 17001) <= 0 and getPlayerStorageValue(cid, 17000) <= 0 and getPlayerStorageValue(cid, 63215) <= 0 then
	local item = getPlayerItemById(cid, TRUE, superout)
	doTransformItem(item.uid, superin)
	doItemSetAttribute(item.uid, "poke", getItemAttribute(item.uid, "poke") .. " HP = ["..getPlayerStorageValue(cid, 61205).."/"..getPlayerStorageValue(cid, 61206).."]")
	end
	if getPlayerItemCount(cid, saffariout) >= 1 and getPlayerStorageValue(cid, 61207) <= 0 and getPlayerStorageValue(cid, 17001) <= 0 and getPlayerStorageValue(cid, 17000) <= 0 and getPlayerStorageValue(cid, 63215) <= 0 then
	local item = getPlayerItemById(cid, TRUE, saffariout)
	doTransformItem(item.uid, saffariin)
	doItemSetAttribute(item.uid, "poke", getItemAttribute(item.uid, "poke") .. " HP = ["..getPlayerStorageValue(cid, 61205).."/"..getPlayerStorageValue(cid, 61206).."]")
	end
	doChangeSpeed(cid, -(getCreatureSpeed(cid)))
	if getPlayerStorageValue(cid, 17000) >= 1 then
	item = getPlayerSlotItem(cid, 8)
	poke = getItemAttribute(item.uid, "poke"):match("This is (.-)'s pokeball.")
	doChangeSpeed(cid, flys[poke][2])
	registerCreatureEvent(cid, "Flying")
	doRemoveCondition(cid, CONDITION_OUTFIT)
	doSetCreatureOutfit(cid, {lookType = flys[poke][1], lookHead = 0, lookAddons = 0, lookLegs = 0, lookBody = 0, lookFeet = 0}, -1)
	elseif getPlayerStorageValue(cid, 63215) >= 1 then
	item = getPlayerSlotItem(cid, 8)
	poke = getItemAttribute(item.uid, "poke"):match("This is (.-)'s pokeball.")
	doSetCreatureOutfit(cid, surf[poke], -1)
	doChangeSpeed(cid, surf[poke].speed)
	elseif getPlayerStorageValue(cid, 17001) >= 1 then
	item = getPlayerSlotItem(cid, 8)
	poke = getItemAttribute(item.uid, "poke"):match("This is (.-)'s pokeball.")
	doChangeSpeed(cid, rides[poke][2])
	doRemoveCondition(cid, CONDITION_OUTFIT)
	doSetCreatureOutfit(cid, {lookType = rides[poke][1], lookHead = 0, lookAddons = 0, lookLegs = 0, lookBody = 0, lookFeet = 0}, -1)
	else
	if getPlayerGroupId(cid) >= 2 and getPlayerGroupId(cid) <= 7 then
	doChangeSpeed(cid, 400*getPlayerGroupId(cid))
	else
	doChangeSpeed(cid, 250)
	end
	end
	if getPlayerVocation(cid) == 0 then
		doPlayerSetVocation(cid, 1)
		setCreatureMaxMana(cid, 6)
		doPlayerAddSoul(cid, -getPlayerSoul(cid))
		setPlayerStorageValue(cid, 19898, 0)
	end
	if getCreatureOutfit(cid).lookType == 128 then
	outfit = {lookType = 159}
	doCreatureChangeOutfit(cid, outfit)
	elseif getCreatureOutfit(cid).lookType == 136 then
	outfit = {lookType = 160}
	doCreatureChangeOutfit(cid, outfit)
	end
	registerCreatureEvent(cid, "ReportBug")
	registerCreatureEvent(cid, "AdvanceSave")
	return true
end