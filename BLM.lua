-- ╒═══════════════════════════════════════════════════════════════════════════════════════════════════════╕
-- │ ► GearSwap Function: Get Gear Sets
-- │    ╓
-- │    ║    Called once when file is loaded. Used to define variables, and gear sets.
-- │    ╙
-- ╘═══════════════════════════════════════════════════════════════════════════════════════════════════════╛

-- //gs equip sets.
-- //gs showswaps
-- //lua u gearswap
-- //lua l gearswap

function get_sets()

--  send_command('@input /lockstyle on')

  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ ■ Setup Variable(s)
  -- │     ╓
  -- │     ║ use_skill - Boolean; used to toggle between using skill and potency for certain spells.
  -- │     ║ notification - Table; contains special characters used in various notification messages.
  -- │     ╙
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  
-- windower.register_event('hpp change', function(new, old)
--	
--   if new <25 and player.status == 'Idle' then
--        equip(sets.idle.DamageTaken)
--		send_command('@input /echo HPP_Change - HP: <hpp> - PDT/MDT Gear On')
--	else
--    end
	
--end) --// Windower.Register_Event
  
  use_skill = true
 
  notification = {}
  notification.error = string.format('%s %s', string.char(0x81, 0x9F), string.char(0x81, 0xA8))
  notification.command = string.format('%s %s', string.char(0x81, 0xA1), string.char(0x81, 0xA8))

  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ ■ Setup Job Table(s) (Dragoon Wyvern)
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
     
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ ■ Setup Idle Gear Set(s)
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
 sets.idle = {}
 
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ ■ Setup Precast Gear Set(s)
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
 sets.precast = {}
   
 sets.precast.fastcast = {}
 
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ ■ Setup Midcast Gear Set(s)
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
 sets.midcast = {}
 sets.midcast.magic = {}
 sets.midcast.magic.dark = {}
 sets.midcast.magic.divine = {}
 sets.midcast.magic.healing = {}
 sets.midcast.magic.enfeebling = {}
 sets.midcast.magic.elemental = {}
 sets.midcast.magic.enhancing = {}
 
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ ■ Setup Aftercast Gear Set(s)
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
 sets.aftercast = {}
 
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ ■ Setup Special Gear Set(s)
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
 sets.special = {}
 
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ ● Idle Gear Set(s)
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
 sets.idle.Default = {main="Laevateinn",sub="Vivid Strap",range="Aureole",
                head="Morrigan's Coronal",neck="Uggalepih Pendant",ear1="Novio Earring",ear2="Moldavite Earring",
                body="Morrigan's Robe",hands="Morrigan's Cuffs",ring1="Shadow Ring",ring2="Defending Ring",
                back="Shadow Mantle",waist="Sorcerer's Belt",legs="Morrigan's Slops",feet="Herald's gaiters"}
 
 
 sets.idle.Resting = {main="Chatoyant Staff",sub="Ariesian Grip",range="Aureole",
                    head="Oracle's Cap",neck="Beak necklace +1",ear1="Rapture earring",ear2="Antivenom Earring",
                    body="Mahatma Houppelande",hands="Oracle's Gloves",ring1="Celestial Ring",ring2="Celestial Ring",
                    back="Invigorating Cape",waist="Qiqirn Sash +1",legs="Baron's Slops",feet="Goliard Clogs"}
 
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ ● Precast Gear Set(s)
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
 sets.precast.fastcast.Default = {sub="Vivid Strap",Ear2="Loquacious Earring",feet="Rostrum Pumps"}
                   
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ ● Midcast Gear Set(s)
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
 sets.midcast.magic.dark.Skill = {main="Laevateinn",sub="Vivid Strap",range="Aureole",
                                head="Morrigan's Coronal",neck="Dark Torque",ear1="Dark Earring",ear2="Abyssal Earring",
                                body="Mahatma houppelande",hands="Sorcerer's Gloves +1",ring1="Galdr Ring",ring2="Omniscient Ring +1",
                                back="Merciful Cape",waist="Witch Sash",legs="Wizard's Tonban",feet="Genie Huaraches"}
 
 sets.midcast.magic.enfeebling.Skill = {main="Laevateinn",sub="Vivid Strap",range="Aureole",
                                head="Genie Tiara",neck="Enfeebling Torque",ear1="Enfeebling earring",ear2="Incubus Earring +1",
                                body="Wizard's Coat",hands="Oracle's Gloves",ring1="Galdr Ring",ring2="Omniscient Ring +1",
                                back="Altruistic Cape",waist="Witch Sash",legs="Genie Lappas",feet="Goliard Clogs"}
                               
 sets.midcast.magic.enhancing.Default = {main="Kirin's Pole",sub="Vivid Strap",range=empty,ammo="Hedgehog Bomb",
                                head="Morrigan's Coronal",neck="Promise Badge",ear1="Celestial earring",ear2="Celestial earring",
                                body="Mahatma Houppelande",hands="Dvt. Mitts +1",ring1="Celestial Ring",ring2="Celestial Ring",
                                back="Prism Cape",waist="Pythia Sash +1",legs="Morrigan's Slops",feet="Morrigan's Pigaches"}
 
 sets.midcast.magic.enhancing.Haste = {main="Kirin's Pole",sub="Vivid Strap",range=empty,ammo="Hedgehog Bomb",
                                head="Walahra Turban",neck="Promise Badge",ear1="Celestial earring",ear2="Celestial earring",
                                body="Mahatma Houppelande",hands="Dvt. Mitts +1",ring1="Celestial Ring",ring2="Celestial Ring",
                                back="Prism Cape",waist="Pythia Sash +1",legs="Morrigan's Slops",feet="Morrigan's Pigaches"}
 
 sets.midcast.magic.healing.Cure = {main="Chatoyant Staff",sub="Vivid Strap",range=empty,ammo="Hedgehog Bomb",
                                head="Walahra turban",neck="Fylgja Torque +1",ear1="Roundel Earring",ear2="Celestial earring",
                                body="Mahatma Houppelande",hands="Dvt. Mitts +1",ring1="Celestial Ring",ring2="Celestial Ring",
                                back="Merciful Cape",waist="Pythia Sash +1",legs="Morrigan's Slops",feet="Morrigan's Pigaches"}
 
 sets.midcast.magic.elemental.Skill = {main="Laevateinn",sub="Vivid Strap",range="Aureole",
                                head="Morrigan's Coronal",neck="Lemegeton Medallion +1",ear1="Novio Earring",ear2="Elemental Earring",
                                body="Morrigan's Robe",hands="Morrigan's Gloves",ring1="Galdr Ring",ring2="Omniscient Ring +1",
                                back="Merciful Cape",waist="Witch Sash",legs="Morrigan's Slops",feet="Morrigan's Pigaches"}
								
 sets.midcast.magic.elemental.Potency = {main="Laevateinn",sub="Vivid Strap",range="Aureole",
                                head="Morrigan's Coronal",neck="Lemegeton Medallion +1",ear1="Novio Earring",ear2="Moldavite Earring",
                                body="Morrigan's Robe",hands="Morrigan's Cuffs",ring1="Galdr Ring",ring2="Sorcerer's Ring",
                                back="Hecate's Cape",waist="Witch Sash",legs="Morrigan's Slops",feet="Morrigan's Pigaches"}								
                               
 sets.midcast.magic.elemental.Burn = {main="Laevateinn",sub="Vivid Strap",range="Aureole",
                                head="Demon Helm +1",neck="Lemegeton Medallion +1",ear1="Elemental Earring",ear2="Abyssal Earring",
                                body="Mahatma Houppelande",hands="Mahatma Cuffs",ring1="Galdr Ring",ring2="Omniscient Ring +1",
                                back="Merciful Cape",waist="Sorcerer's Belt",legs="Morrigan's Slops",feet="Goliard Clogs"}

  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ ● Special Gear Set(s)
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
 
 sets.special.HPDown = {head="Zenith Crown +1",
						hands="Zenith Mitts +1",Ring1="Serket Ring",Ring2="Vilma's Ring",
						legs="Zenith Slacks +1"}
						 
 sets.idle.DamageTaken ={main="Terra's staff",sub="Vivid Strap",range="Aureole",
					head="Genie Tiara",neck="Orochi Nodowa +1",ear1="Novio Earring",ear2="Sorcerer's Earring",
					body="Morrigan's Robe",hands="Morrigan's Cuffs",ring1="Shadow Ring",ring2="Defending Ring",
					back="Shadow Mantle",waist="Sorcerer's Belt",legs="Genie Lappas",feet="Herald's gaiters"}
 
end

-- ╒═══════════════════════════════════════════════════════════════════════════════════════════════════════╕
-- │ ► GearSwap Function: Filtered Action
-- │    ╓
-- │    ║    Occurs when the player attempts to cast a spell that they are unable to cast. Does not occur
-- │    ║ for actions that bypass the outgoing text buffer (like using items from the menu).
-- │    ╙
-- ╘═══════════════════════════════════════════════════════════════════════════════════════════════════════╛
function filtered_action(spell)
 
end

-- ╒═══════════════════════════════════════════════════════════════════════════════════════════════════════╕
-- │ ► GearSwap Function: Pre-Target
-- │    ╓
-- │    ║    Occurs when the command text hits the outgoing text buffer. Does not occur for actions that
-- │    ║ bypass the outgoing text buffer (like using items from the menu).
-- │    ╙
-- ╘═══════════════════════════════════════════════════════════════════════════════════════════════════════╛
function pretarget(spell)
	if spell.action_type == 'Magic' then
		if player.sub_job == 'RDM' then
			equip(sets.precast.fastcast.Default, {back="Warlock's Mantle"})
		else
			equip(sets.precast.fastcast.Default)
		end
	end
end
  
    -- ▪ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ▪
    -- │ ♦ Spell Cancel - Spell Recast not Zero
    -- ▪ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ▪
--    if windower.ffxi.get_spell_recasts()[spell.recast_id] > 0 then
--      add_to_chat(123, string.format('%s [%s] Spell Canceled: Recast', notification.error, spell.name))
--      cancel_spell()
--      return
--    end
 
    -- ▪ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ▪
    -- │ ♦ Spell Cancel - Player is Mid-Action
    -- ▪ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ▪
--    if midaction() then
--      add_to_chat(123, string.format('%s [%s] Spell Canceled: Mid-Action', notification.error, spell.name))
--      cancel_spell()
--      return
--    end
 
--    if spell.skill == 'Healing Magic' then
--      if string.find(spell.name,'Cur') and spell.name ~= 'Cursna' then
--        equip(sets.precast.fastcast.Default)
--      else
--        equip(sets.precast.fastcast.Default)
--      end -- // Cure
--    else
--      equip(sets.precast.fastcast.Default)
--    end	-- // Healing Magic
--  end -- // Spell.action_type
--end -- // Pretarget
 
-- ╒═══════════════════════════════════════════════════════════════════════════════════════════════════════╕
-- │ ► GearSwap Function: Pre-Cast
-- │    ╓
-- │    ║    Occurs immediately before the outgoing action packet is injected. Does not occur for items
-- │    ║ that bypass the outgoing text buffer (like using items from the menu).
-- │    ╙
-- ╘═══════════════════════════════════════════════════════════════════════════════════════════════════════╛
function precast(spell)
  if spell.action_type == 'Magic' then
 
    -- ▪ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ▪
    -- │ ♦ Precast Gear Swap - HP Down
    -- ▪ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ▪
    if spell.skill == 'Elemental Magic' and player.hpp >=74 and player.hpp <=100 then
      equip(sets.special.HPDown)
--	  cast_delay(1)
    end -- // Elemental Magic
  end -- // Magic
end -- // Precast
 
-- ╒═══════════════════════════════════════════════════════════════════════════════════════════════════════╕
-- │ ► GearSwap Function: Midcast
-- │    ╓
-- │    ║    Occurs immediately after the outgoing action packet is injected. Does not occur for items
-- │    ║ that bypass the outgoing text buffer (like using items from the menu).
-- │    ╙
-- ╘═══════════════════════════════════════════════════════════════════════════════════════════════════════╛
function midcast(spell)
  if spell.action_type == 'Magic' then
    if spell.skill == 'Healing Magic' then
      if string.find(spell.name,'Cur') and spell.name ~= 'Cursna' then
        if player.hpp < 75 then
          equip(sets.midcast.magic.healing.Cure)
        else
          equip(sets.midcast.magic.healing.Cure)
        end
      elseif spell.name == 'Cursna' then
        equip(sets.midcast.magic.healing.Skill)
      else
        equip(sets.midcast.magic.healing.Haste)
      end
    end
    if spell.skill == 'Dark Magic' then
      equip(sets.midcast.magic.dark.Skill)
    end
    if spell.skill == 'Divine Magic' then
      equip(sets.midcast.magic.divine.Skill)
    end
    if spell.skill == 'Enhancing Magic' then
      if spell.name == 'Stoneskin' then
	  	if buffactive['Stoneskin'] then
			windower.ffxi.cancel_buff(37)
		end
		
--	coroutine.schedule(function, time_sec)
		
		equip(sets.midcast.magic.enhancing.Default)
      elseif spell.name == 'Blink' then
		if buffactive['Blink'] then
			windower.ffxi.cancel_buff(36)
		end
        equip(sets.midcast.magic.enhancing.Default)
      elseif string.find(spell.name,'Bar') then
        equip(sets.midcast.magic.enhancing.Default)
      elseif string.find(spell.name,'Regen') then
        equip(sets.midcast.magic.enhancing.Haste)
      elseif spell.name == 'Invisible' then
		equip(sets.midcast.magic.enhancing.Haste, {back="Skulker's Cape"})
	  elseif spell.name == 'Sneak' then
		if buffactive.Sneak and spell.target.type == 'SELF' then
			windower.ffxi.cancel_buff(71)
		end
		equip(sets.midcast.magic.enhancing.Haste, {back="Skulker's Cape"})
      else
        equip(sets.midcast.magic.enhancing.Haste)
      end
    end
    if spell.skill == 'Enfeebling Magic' then
		if spell.name == "Paralyze" or spell.name == "Slow" or spell.name == "Silence" then
			equip(sets.midcast.magic.enfeebling.Skill, {Ring1="Celestial Ring",Ring2="Celestial Ring",Feet="Morrigan's Pigaches"})
		else
			equip(sets.midcast.magic.enfeebling.Skill)
		end
	end --// Enfeebling Magic		
    if spell.skill == 'Elemental Magic' then
      if spell.name == 'Burn' then
        equip(sets.midcast.magic.elemental.Burn)
      else
	  if use_skill then
		equip(sets.midcast.magic.elemental.Potency)
      else
        equip(sets.midcast.magic.elemental.Skill)
      end
	if (world.day_element == 'Ice' and world.weather_element == 'Ice') and spell.element == 'Ice' then
		equip({Main="Aquilo's Staff"})
	else
	end
        if player.mpp < 51 or (player.mp - spell.mp_cost) < (player.max_mp / 2) then
          equip({neck="Uggalepih Pendant"})
        end
		if world.day_element == spell.element then
        equip({legs="Sorcerer's Tonban"})
		end
      end
    end --// Elemental Magic
  end --// Magic
end -- // Midcast(Spell)
 
--function midcast(spell,arg)
	-- Utsusemi
--	if windower.wc_match(spell.name,'Utsusemi*') then

--		if spell.name == 'Utsusemi: Ichi' and ShadowType == 'Ni' then
--            if buffactive['Copy Image'] then
--                windower.ffxi.cancel_buff(66)
--            elseif buffactive['Copy Image (2)'] then
--                windower.ffxi.cancel_buff(444)
--            elseif buffactive['Copy Image (3)'] then
--                windower.ffxi.cancel_buff(445)
--            elseif buffactive['Copy Image (4+)'] then
--                windower.ffxi.cancel_buff(446)
--            end
--        end
--    end
--end

-- ╒═══════════════════════════════════════════════════════════════════════════════════════════════════════╕
-- │ ► GearSwap Function: Aftercast
-- │    ╓
-- │    ║    Occurs when the “result” action packet is received from the server, or an interruption of
-- │    ║ some kind is detected.
-- │    ╙
-- ╘═══════════════════════════════════════════════════════════════════════════════════════════════════════╛
function aftercast(spell)

  if (player.status == 'Idle' or spell.interrupted) and player.hpp <74 and player.hpp >25 then
    equip(sets.idle.Default, {neck="Orochi Nodowa +1"})
--	send_command('@input /echo AfterCast - HP: <hpp> - Regen Gear On')
  elseif (player.status == 'Idle' or spell.interrupted) and player.hpp <26  then
	equip(sets.idle.DamageTaken)
--	send_command('@input /echo AfterCast - HP: <hpp> - PDT/MDT Gear On')
	else
	equip(sets.idle.Default)
	end	

--	if spell and spell.name == 'Utsusemi: Ni' then
--        ShadowType = 'Ni'
--    elseif spell and spell.name == 'Utsusemi: Ichi' then
--        ShadowType = 'Ichi'
--	end
	
  end -- // Aftercast(Spell)
 
-- ╒═══════════════════════════════════════════════════════════════════════════════════════════════════════╕
-- │ ► GearSwap Function: Status Change
-- │    ╓
-- │    ║    Passes the new and old statuses
-- │    ╙
-- ╘═══════════════════════════════════════════════════════════════════════════════════════════════════════╛
function status_change(new,tab)
 
  if new == 'Idle' and player.hpp <74 and player.hpp >25 then
    equip(sets.idle.Default, {neck="Orochi Nodowa +1"})
--	send_command('@input /echo Status_Change - HP: <hpp> - Regen Gear On')
  elseif new == 'idle' and player.hpp <26 then
	equip(sets.idle.DamageTaken)
--	send_command('@input /echo Status_Change - HP: <hpp> - PDT/MDT Gear On')
		elseif new == 'Resting' then
		equip(sets.idle.Resting)
		else
		equip(sets.idle.Default)
	end
	
  end -- // Status Change

-- ╒═══════════════════════════════════════════════════════════════════════════════════════════════════════╕
-- │ ► GearSwap Function: Buff Change
-- │    ╓
-- │    ║    Passes the new buff name and a boolean that indicates whether it was gained true or lost
-- │    ║ false. Does not fire if your buff bar does not change. For instance, overwriting a March
-- │    ║ with another March will not trigger this event.
-- │    ╙
-- ╘═══════════════════════════════════════════════════════════════════════════════════════════════════════╛
function buff_change(status,gain_or_loss) 

-- // Xolotl Crash Prevention
	if status == "Charm" then
		if gain_or_loss then
			send_command('gearswap disable all')
		else
			send_command('gearswap enable all')
		end
	end
end -- // Buff Change
	
-- // Auto Echo Drops	
function buff_change(name,gain)

	if name == "silence" and gain =="True" then
		send_command('@input /item "Echo Drops" <me>')
	end
end -- // Buff Change

-- ╒═══════════════════════════════════════════════════════════════════════════════════════════════════════╕
-- │ ► GearSwap Function: Self Command
-- │    ╓
-- │    ║    Passes any self commands, which are triggered by //gs c <command> or /console gs c <command>
-- │    ╙
-- ╘═══════════════════════════════════════════════════════════════════════════════════════════════════════╛
function self_command(command)
--  if command == "maxmp" then
--    add_to_chat(123, string.format('%s Gear Set Status: MAX MP (LOCK)', notification.command))
--    equip(sets.special.MaxMP)
--    disable('main','sub','range','ammo','head','neck','lear','rear','body','hands','lring','rring','back','waist','legs','feet')
--  end
 
--  if command == "maxhp" then
--    add_to_chat(123, string.format('%s Gear Set Status: MAX HP (LOCK)', notification.command))
--    equip(sets.special.MaxHP)
--    disable('main','sub','range','ammo','head','neck','lear','rear','body','hands','lring','rring','back','waist','legs','feet')
--  end
 
--  if command == "idle" then
--    add_to_chat(200, string.format('%s Gear Set Status: IDLE (UNLOCK)', notification.command))
--    enable('main','sub','range','ammo','head','neck','lear','rear','body','hands','lring','rring','back','waist','legs','feet')
--    equip(sets.idle.Default)
--  end
 
--  if command == "lockall" then
--    add_to_chat(123, string.format('%s Gear Set Status: CUSTOM (LOCK)', notification.command))
--    disable('main','sub','range','ammo','head','neck','lear','rear','body','hands','lring','rring','back','waist','legs','feet')
--  end
 
-- if command == "unlockall" then
--    add_to_chat(200, string.format('%s Gear Set Status: CUSTOM (UNLOCK)', notification.command))
--   enable('main','sub','range','ammo','head','neck','lear','rear','body','hands','lring','rring','back','waist','legs','feet')
--  end
 
  if command == "toggle_skill" then
    if use_skill then
      add_to_chat(123, string.format('%s Gear Set Status: SKILL', notification.command))
      use_skill = false
    else
      add_to_chat(200, string.format('%s Gear Set Status: POTENCY', notification.command))
      use_skill = true
    end
  end
end
 
-- ╒═══════════════════════════════════════════════════════════════════════════════════════════════════════╕
-- │ ► GearSwap Function: File Unload
-- │    ╓
-- │    ║       Called once on file/addon unload.
-- │    ╙
-- ╘═══════════════════════════════════════════════════════════════════════════════════════════════════════╛
function file_unload()
 
  send_command('@input /lockstyle off') 
 
end