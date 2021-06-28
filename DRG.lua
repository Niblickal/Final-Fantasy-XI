  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ ■ Start of File
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪

function get_sets()

  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  -- // Event Register
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  
windower.register_event('hpp change', function(new, old)
	
	if new >26 and player.status == 'Engaged' then
		if Offensive:contains(player.sub_job) then
			equip(sets.idle.Offensive)
		elseif Supportive:contains(player.sub_job) then
			equip(sets.idle.Supportive)
		end
	end
end)


  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ ■ Start of Setup Gear Sets
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪

  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  -- // Setup Custom Set(s)
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  Supportive = 		S{"WHM","RDM","BLM","BLU","SCH","SMN"}
  MultiPurpose = 	S{"PLD","DRK","BRD","NIN"}
  Offensive = 		S{"WAR","MNK","THF","SAM","RNG","DNC","BST"}
  BlueMagic =		S{'Head Butt','Cocoon','Sprout Smack', 'Metallic Body', 'Pinecone Bomb', 'Wild Carrot', 'Pollen'}
  ElementalBreath =	S{'Flame Breath','Frost Breath','Sand Breath','Hydro Breath','Gust Breath','Lightning Breath',}
  
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  -- // Setup Idle Gear Set(s)
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  
  sets.idle = {}

  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  -- // Setup Precast Gear Set(s)
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  
  sets.precast = {}

  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  -- // Setup Midcast Gear Set(s)
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  
  sets.midcast = {}
  
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  -- // Setup Aftercast Gear Set(s)
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  
  sets.aftercast = {}
    
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  -- // Setup Breath Set(s)
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  
  sets.midcast.Wyvern = {}

  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ ■ End of Setup Gear Sets
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ ■ Start of Input Gear Sets
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  
	-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
  -- // Idle Gear Sets(s)
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  
  sets.idle.Offensive = {sub="Pole Grip",ammo="Tiphia Sting",
        head="Ace's Helm",neck="Love Torque",ear1="Brutal Earring",ear2="Assault Earring",
        body="Homam Corazza",hands="Dusk Gloves +1",ring1="Rajas Ring",ring2="Mars's Ring",
        back="Cerberus Mantle +1",waist="Velocious Belt",legs="Homam Cosciales",feet="Homam Gambieras"}
		
  sets.idle.Supportive = {sub="Pole Grip",range="Aureole",
        head="Walahra Turban",neck="Love Torque",ear1="Brutal Earring",ear2="Assault Earring",
        body="Homam Corazza",hands="Dusk Gloves +1",ring1="Rajas Ring",ring2="Defending Ring",
        back="Shadow Mantle",waist="Velocious Belt",legs="Homam Cosciales",feet="Homam Gambieras"}
		
  sets.idle.Defensive = {sub="Pole Grip",
        head="Ace's Helm",neck="Orochi Nodowa",ear1="Brutal Earring",ear2="Drake Earring",
        body="Conte Corazza",hands="Dusk Gloves +1",ring1="Shadow Ring",ring2="Defending Ring",
        back="Shadow Mantle",waist="Velocious Belt",legs="Homam Cosciales",feet="Homam Gambieras"}
		
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  -- // Pre-Cast or Pre-Weapon Skill Gear Set(s)
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  
  sets.precast.WeaponSkill = {sub="Pole Grip",
		head="Hecatomb Cap +1",neck="Love Torque",ear1="Harmonius Earring",ear2="Harmonius Earring",
        body="Zahak's Mail",hands="Hct. Mittens +1",ring1="Rajas Ring",ring2="Triumph Ring",
        back="Cuchulain's Mantle",waist="Wyrm Belt",legs="Hecatomb Subligar +1",feet="Hct. Leggings +1"}  

  sets.precast.Drakesbane = {sub="Pole Grip",
		head="Hecatomb Cap +1",neck="Love Torque",ear1="Harmonius Earring",ear2="Harmonius Earring",
        body="Hecatomb Harness +1",hands="Hct. Mittens +1",ring1="Rajas Ring",ring2="Triumph Ring",
        back="Cuchulain's Mantle",waist="Wyrm Belt",legs="Hecatomb Subligar +1",feet="Hct. Leggings +1"} 

  sets.precast.Jump = {sub="Pole Grip",
        head="Ace's Helm",neck="Love Torque",ear1="Brutal Earring",ear2="Pixie Earring",
        body="Homam Corazza",hands="Dusk Gloves +1",ring1="Toreador's Ring",ring2="Mars's Ring",
        back="Cuchulain's Mantle",waist="Wyrm Belt",legs="Conte Cosciales",feet="Drachen Greaves"}
		
  sets.precast.HighJump = {sub="Pole Grip",
        head="Ace's Helm",neck="Love Torque",ear1="Brutal Earring",ear2="Pixie Earring",
        body="Homam Corazza",hands="Dusk Gloves +1",ring1="Toreador's Ring",ring2="Mars's Ring",
        back="Cuchulain's Mantle",waist="Wyrm Belt",legs="Wyrm Brais",feet="Homam Gambieras"}
  
  sets.precast.Wyvern = {head="Drachen Armet",ear1="Harmonius Earring",ring2="Bloodbead Ring",
		back="Gigant Mantle",waist="Steppe Sash",}
    
  sets.precast.Breath = {head="Wyrm Armet",neck="Chanoix's Gorget",ear2="Dragoon's Earring",
		body="Wyvern Mail",legs="Drachen Brais",feet="Homam Gambieras"}
  
  sets.precast.Magic = {head="Drachen Armet",ear2="Loquacious Earring",legs="Homam Cosciales"} 
 
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  -- // Mid-Cast Set(s)
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  sets.midcast.Breath = {head="Wyrm Armet",neck="Chanoix's Gorget",ear2="Dragoon's Earring",
		body="Wyvern Mail",legs="Drachen Brais",feet="Homam Gambieras"}

  sets.midcast.Magic = {head="Walahra Turban",neck="Promise Badge",ear1="Celestial Earring",
		ear2="Immortal's Earring",body="Ares's Cuirass",hands="Dusk Gloves +1",ring1="Celestial Ring",ring2="Celestial Ring",
        back="Altruistic Cape",waist="Velocious Belt",legs="Homam Cosciales",feet="Homam Gambieras"}

end

  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ ■ End of Input Gear Sets
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪

  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ ■ Start of Functions
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪

-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- // GearSwap Function: Precast
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function pretarget(spell)

-------------------

end

function precast(spell)

	if spell.action_type == 'Magic' then
		if player.hp > 700 then
			if BlueMagic:contains(spell.english) then
				equip(sets.precast.Magic)
--				send_command('@input /echo precast(spell) - Magic')
			else
				cancel_spell()
--				send_command('@input /echo HP too high! - Cancelling')
			end
		else
			equip(sets.precast.Wyvern)
--			send_command('@input /echo precast(spell) - Breath')
		end
	elseif spell.type == 'WeaponSkill' then
		if spell.name == "Drakesbane" then
			equip(sets.precast.Drakesbane)
		else
			equip(sets.precast.WeaponSkill)
		end
	elseif spell.name == 'Jump' then
		if spell.target.distance > 9 then
			cancel_spell()
		elseif windower.ffxi.get_ability_recasts()[158] > 0 then
			cancel_spell()
		else
			if world.day_element == 'Dark' then
				equip(sets.precast.Jump, {back="Shadow Mantle"})
			else
				equip(sets.precast.Jump)
			end
		end
	elseif spell.name == 'High Jump' then
		if spell.target.distance > 11 then
			cancel_spell()
		elseif windower.ffxi.get_ability_recasts()[159] > 0 then
			cancel_spell()
		else
			equip(sets.precast.HighJump)
		end
	elseif spell.name == 'Spirit Link' then
		if windower.ffxi.get_ability_recasts()[162] > 0 then
			cancel_spell()
		else
			equip(sets.precast.Breath)
		end
	elseif spell.name == 'Call Wyvern' then
		if windower.ffxi.get_ability_recasts()[163] > 0 then
			cancel_spell()
		else
			if player.hpp <26 then
				equip(sets.idle.Defensive, {body="Wyrm Mail"})
			elseif Offensive:contains(player.sub_job) then
				equip(sets.idle.Offensive, {body="Wyrm Mail"})
			elseif Supportive:contains(player.sub_job) then
				equip(sets.idle.Supportive, {body="Wyrm Mail"})
			end
		end
	end
end

function pet_precast(spell)

	if string.find(spell.english,'Healing Breath') then
		equip(sets.precast.Breath)
		send_command('@input /echo pet_precast(spell) - Breath')
	end
end

-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- // GearSwap Function: Midcast
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function midcast(spell)

	if spell.action_type == 'Magic' then
		if spell.skill == 'Blue Magic' then
			if player.hp > 700 then
				equip(sets.midcast.Magic)
				send_command('@input /echo midcast(spell) - Magic')
			else
				equip(sets.midcast.Breath)
				send_command('@input /echo midcast(spell) - Breath')
			end
		else
			if spell.skill == 'Enhancing Magic' then
				equip(sets.midcast.Magic, {back="Merciful Cape",ear2="Augmenting Earring"})
			elseif spell.skill == 'Healing Magic' then
				equip(sets.midcast.Magic, {neck="Healing Torque",ear1="Roundel Earring",ear2="Healing Earring"})
			else
				equip(sets.idle.Supportive)
			end
		end
	end
	
end

function pet_midcast(spell)

	if string.find(spell.english,'Healing Breath') then
		equip(sets.midcast.Breath)
		send_command('@input /echo pet_midcast(spell) - Breath')

	end
end

-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- // GearSwap Function: Aftercast
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function aftercast(spell)

	if (player.status == 'Idle' or spell.interrupted) then
		if player.hpp <26 then
			equip(sets.idle.Defensive)
		elseif Offensive:contains(player.sub_job) then
			equip(sets.idle.Offensive)
		elseif Supportive:contains(player.sub_job) then
			equip(sets.idle.Supportive)
		end
	end

	local status = player.status
	
	if status == 'Engaged' then
		if Offensive:contains(player.sub_job) then
			if player.hpp <26 then
				equip(sets.idle.Defensive, {body="Homam Corazza"})
			else
			equip(sets.idle.Offensive)
			end
			if player.sub_job == 'SAM' then
				if not buffactive['Hasso'] then
					send_command('input /ja "Hasso" <me>')
				end
			end
		elseif Supportive:contains(player.sub_job) then
			if player.hpp <26 then
				equip(sets.idle.Defensive, {body="Homam Corazza"})
			else
				equip(sets.idle.Supportive)
			end
--			if player.sub_job == 'BLU' then
--				if not buffactive['Defense Boost'] then
--					send_command('input /echo Cocoon Not Active.')
--				end
--			end
		end
	end
	
end

-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- // GearSwap Function: Buff Change
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function buff_change(status,gain_or_loss)

	if status == "Charm" then
		if gain_or_loss then
			send_command('gearswap disable all')
		else
			send_command('gearswap enable all')
		end
	end

	if (player.status == 'Idle' or 'Engaged' or 'Resting') then
		if player.hpp <26 then
				if player.status == 'Engaged' then
					equip(sets.idle.Defensive, {body="Homam Corazza"})
				else
					equip(sets.idle.Defensive)
				end
		elseif Offensive:contains(player.sub_job) then
			equip(sets.idle.Offensive)
		elseif Supportive:contains(player.sub_job) then
			equip(sets.idle.Supportive)
		end
	end
	
end

-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- // GearSwap Function: Status Change
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function status_change(new,tab)

	if (new == 'Engaged' or 'Idle' or spell.interrupted or 'Resting') then
		if Offensive:contains(player.sub_job) then
			if player.hpp <26 then
				if new == 'Engaged' then
					equip(sets.idle.Defensive, {body="Homam Corazza"})
				else
					equip(sets.idle.Defensive)
				end
			else
			equip(sets.idle.Offensive)
			end
			if player.sub_job == 'SAM' then
				if not buffactive['Hasso'] and new == 'Engaged' then
					send_command('input /ja "Hasso" <me>')
				end
			end
		elseif Supportive:contains(player.sub_job) then
			if player.hpp <26 then
				equip(sets.idle.Defensive)
			else
				equip(sets.idle.Supportive)
			end
		end
	end
	
end

-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- // GearSwap Function: Self Command
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function self_command(command)

end

  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ ■ End of Functions
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ ■ End of File
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪