Icons = {}
Icons[PlayerStates.Poison] = { tooltip = tr('You are poisoned'), path = '/images/game/states/poisoned', id = 'condition_poisoned' }
Icons[PlayerStates.Burn] = { tooltip = tr('You are burning'), path = '/images/game/states/burning', id = 'condition_burning' }
Icons[PlayerStates.Energy] = { tooltip = tr('You are electrified'), path = '/images/game/states/electrified', id = 'condition_electrified' }
Icons[PlayerStates.Drunk] = { tooltip = tr('You are drunk'), path = '/images/game/states/drunk', id = 'condition_drunk' }
Icons[PlayerStates.ManaShield] = { tooltip = tr('You are protected by a magic shield'), path = '/images/game/states/magic_shield', id = 'condition_magic_shield' }
Icons[PlayerStates.Paralyze] = { tooltip = tr('You are paralysed'), path = '/images/game/states/slowed', id = 'condition_slowed' }
Icons[PlayerStates.Haste] = { tooltip = tr('You are hasted'), path = '/images/game/states/haste', id = 'condition_haste' }
Icons[PlayerStates.Swords] = { tooltip = tr('You may not logout during a fight'), path = '/images/game/states/logout_block', id = 'condition_logout_block' }
Icons[PlayerStates.Drowning] = { tooltip = tr('You are drowning'), path = '/images/game/states/drowning', id = 'condition_drowning' }
Icons[PlayerStates.Freezing] = { tooltip = tr('You are freezing'), path = '/images/game/states/freezing', id = 'condition_freezing' }
Icons[PlayerStates.Dazzled] = { tooltip = tr('You are dazzled'), path = '/images/game/states/dazzled', id = 'condition_dazzled' }
Icons[PlayerStates.Cursed] = { tooltip = tr('You are cursed'), path = '/images/game/states/cursed', id = 'condition_cursed' }
Icons[PlayerStates.PartyBuff] = { tooltip = tr('You are strengthened'), path = '/images/game/states/strengthened', id = 'condition_strengthened' }
Icons[PlayerStates.PzBlock] = { tooltip = tr('You may not logout or enter a protection zone'), path = '/images/game/states/protection_zone_block', id = 'condition_protection_zone_block' }
Icons[PlayerStates.Pz] = { tooltip = tr('You are within a protection zone'), path = '/images/game/states/protection_zone', id = 'condition_protection_zone' }
Icons[PlayerStates.Bleeding] = { tooltip = tr('You are bleeding'), path = '/images/game/states/bleeding', id = 'condition_bleeding' }
Icons[PlayerStates.Hungry] = { tooltip = tr('You are hungry'), path = '/images/game/states/hungry', id = 'condition_hungry' }

healthInfoWindow = nil
healthBar = nil
manaBar = nil
experienceBar = nil
soulLabel = nil
capLabel = nil
healthTooltip = 'Your character health is %d out of %d.'
manaTooltip = 'Your character mana is %d out of %d.'
pokeTooltip = 'Your Pokemon health is %d out of %d.'
experienceTooltip = 'You have %d%% to advance to level %d.'

function init()
  connect(LocalPlayer, { onHealthChange = onHealthChange,
                         onManaChange = onManaChange,
                         onLevelChange = onLevelChange,
                         onStatesChange = onStatesChange,
                         onSoulChange = onSoulChange,
                         onFreeCapacityChange = onFreeCapacityChange })

  connect(g_game, { onGameEnd = offline })
  connect(g_game, 'onTextMessage', onPoke)

  healthInfoButton = modules.client_topmenu.addRightGameToggleButton('healthInfoButton', tr('Health Information'), '/images/topbuttons/healthinfo', toggle)
  healthInfoButton:setOn(true)

  healthInfoWindow = g_ui.loadUI('healthinfo', modules.game_interface.getRightPanel())
  healthInfoWindow:disableResize()
  healthBar = healthInfoWindow:recursiveGetChildById('healthBar')
  manaBar = healthInfoWindow:recursiveGetChildById('manaBar')
  experienceBar = healthInfoWindow:recursiveGetChildById('experienceBar')
  soulLabel = healthInfoWindow:recursiveGetChildById('soulLabel')
  capLabel = healthInfoWindow:recursiveGetChildById('capLabel')

  -- load condition icons
  for k,v in pairs(Icons) do
    g_textures.preload(v.path)
  end

  if g_game.isOnline() then
    local localPlayer = g_game.getLocalPlayer()
    onHealthChange(localPlayer, localPlayer:getHealth(), localPlayer:getMaxHealth())
    onManaChange(localPlayer, localPlayer:getMana(), localPlayer:getMaxMana())
    onLevelChange(localPlayer, localPlayer:getLevel(), localPlayer:getLevelPercent())
    onStatesChange(localPlayer, localPlayer:getStates(), 0)
    onSoulChange(localPlayer, localPlayer:getSoul())
    onFreeCapacityChange(localPlayer, localPlayer:getFreeCapacity())
  end

  healthInfoWindow:setup()
  manaBar:setText("No Summon")
  cleanPokes()
end

function terminate()
  disconnect(LocalPlayer, { onHealthChange = onHealthChange,
                            onManaChange = onManaChange,
                            onLevelChange = onLevelChange,
                            onStatesChange = onStatesChange,
                            onSoulChange = onSoulChange,
                            onFreeCapacityChange = onFreeCapacityChange })

  disconnect(g_game, { onGameEnd = offline })
  disconnect(g_game, 'onTextMessage', onPoke)

  healthInfoWindow:destroy()
  healthInfoButton:destroy()
end

function toggle()
  if healthInfoButton:isOn() then
    healthInfoWindow:close()
    healthInfoButton:setOn(false)
  else
    healthInfoWindow:open()
    healthInfoButton:setOn(true)
  end
end

function toggleIcon(bitChanged)
  local content = healthInfoWindow:recursiveGetChildById('conditionPanel')

  local icon = content:getChildById(Icons[bitChanged].id)
  if icon then
    icon:destroy()
  else
    icon = loadIcon(bitChanged)
    icon:setParent(content)
  end
end

function loadIcon(bitChanged)
  local icon = g_ui.createWidget('ConditionWidget', content)
  icon:setId(Icons[bitChanged].id)
  icon:setImageSource(Icons[bitChanged].path)
  icon:setTooltip(Icons[bitChanged].tooltip)
  return icon
end

function offline()
  healthInfoWindow:recursiveGetChildById('conditionPanel'):destroyChildren()
end

-- hooked events
function onMiniWindowClose()
  healthInfoButton:setOn(false)
end

function onHealthChange(localPlayer, health, maxHealth)
  healthBar:setText(health .. ' / ' .. maxHealth)
  healthBar:setTooltip(tr(healthTooltip, health, maxHealth))
  healthBar:setValue(health, 0, maxHealth)
end

function onManaChange(localPlayer, mana, maxMana)
  --[[manaBar:setText(mana .. ' / ' .. maxMana)
  manaBar:setTooltip(tr(manaTooltip, mana, maxMana))
  manaBar:setValue(mana, 0, maxMana)--]]
end

function onLevelChange(localPlayer, value, percent)
  experienceBar:setText(percent .. '%')
  experienceBar:setTooltip(tr(experienceTooltip, percent, value+1))
  experienceBar:setPercent(percent)
end

function onSoulChange(localPlayer, soul)
  soulLabel:setText(tr('Catchs') .. ': ' .. soul)
end

function onFreeCapacityChange(player, freeCapacity)
  capLabel:setText(tr('Balls') .. ': ' .. freeCapacity)
end

function onStatesChange(localPlayer, now, old)
  if now == old then return end

  local bitsChanged = bit32.bxor(now, old)
  for i = 1, 32 do
    local pow = math.pow(2, i-1)
    if pow > bitsChanged then break end
    local bitChanged = bit32.band(bitsChanged, pow)
    if bitChanged ~= 0 then
      toggleIcon(bitChanged)
    end
  end
end

-- personalization functions
function hideLabels()
  local removeHeight = math.max(capLabel:getMarginRect().height, soulLabel:getMarginRect().height)
  capLabel:setOn(false)
  soulLabel:setOn(false)
  healthInfoWindow:setHeight(math.max(healthInfoWindow.minimizedHeight, healthInfoWindow:getHeight() - removeHeight))
end

function hideExperience()
  local removeHeight = experienceBar:getMarginRect().height
  experienceBar:setOn(false)
  healthInfoWindow:setHeight(math.max(healthInfoWindow.minimizedHeight, healthInfoWindow:getHeight() - removeHeight))
end

function setHealthTooltip(tooltip)
  healthTooltip = tooltip

  local localPlayer = g_game.getLocalPlayer()
  if localPlayer then
    healthBar:setTooltip(tr(healthTooltip, localPlayer:getHealth(), localPlayer:getMaxHealth()))
  end
end

function setManaTooltip(tooltip)
  manaTooltip = tooltip

  local localPlayer = g_game.getLocalPlayer()
  if localPlayer then
    manaBar:setTooltip(tr(manaTooltip, localPlayer:getMana(), localPlayer:getMaxMana()))
  end
end

function setExperienceTooltip(tooltip)
  experienceTooltip = tooltip

  local localPlayer = g_game.getLocalPlayer()
  if localPlayer then
    experienceBar:setTooltip(tr(experienceTooltip, localPlayer:getLevelPercent(), localPlayer:getLevel()+1))
  end
end

function cleanPokes()
for i = 1, 6 do
local Pokes = healthInfoWindow:recursiveGetChildById('poke'..i) 
Pokes:setItemId(7746)
Pokes.onClick = function() g_game.talk('') end
end
end

function onPoke(mode, text)
if not g_game.isOnline() then return end
    if mode == MessageModes.Failure then 
	    if string.find(text, '#ph#') then
            local s = text:explode(',')
			table.remove(s, 1)
            local path = 'pokes/'..tostring(s[1])..'.png'
            local name = tostring(s[1])
			local boost = tostring(s[2])
            local hp, maxhp = tonumber(s[3]), tonumber(s[4])
            PokeHealth = healthInfoWindow:recursiveGetChildById('manaBar')
			PokeHealth:setText(hp .. ' / ' .. maxhp)
			PokeHealth:setTooltip('Your Pokemon health is '..hp..' out of '..maxhp..'.')
			PokeHealth:setValue(hp, 0, maxhp)
		return true
		elseif string.find(text, '@H|Hide') then
			PokeHealth:setText("No Summon")
			PokeHealth:setValue(100, 0, 100)
		elseif string.find(text, '@P|') then
			cleanPokes()
			local p = text:explode('|')
			table.remove(p, 1)
			for i = 1, #p do
				local z = p[i]:explode(",")
				local Pokes = healthInfoWindow:recursiveGetChildById('poke'..i) 
				local HealthPoke = healthInfoWindow:recursiveGetChildById('ph'..i) 
				local path = 'pokes/'..tostring(z[1])..'.png'
				Pokes:setItemId(z[4])
				Pokes:setTooltip(tostring(z[1])..'  '..tonumber(z[2])..'% de vida')
				Pokes.onClick = function() g_game.talk('/pokemon '..tostring(z[1])..''..i) end
				HealthPoke:setText(z[2].."%")
				if z[2] == "100" then
					HealthPoke:setColor('#21AB28')
                elseif z[2] >= "75" then
                    HealthPoke:setColor('#1FDB28')
				elseif z[2] >= "50" then
                    HealthPoke:setColor('#F0A00C')
				elseif z[2] >= "25" then
                    HealthPoke:setColor('#EDF00C')
				elseif z[2] >= "10" then
					HealthPoke:setColor('#F00F0B')
				elseif z[2] == "0" then
                    HealthPoke:setColor("#969696")
                end
			end
		end
	end
end