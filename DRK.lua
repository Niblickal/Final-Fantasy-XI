-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- // GearSwap Function: Get Gear Sets
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function get_sets()

  -- send_command('input /macro book 2;wait .1;input /macro set 1')
  
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  -- // Setup Idle Gear Set(s)
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  
  sets.idle = {sub="Pole Grip",ammo="Fire Bomblet",
        head="Ace's Helm",neck="Justice Torque",ear1="Brutal Earring",ear2="Abyssal Earring",
        body="Homam Corazza",hands="Dusk Gloves +1",ring1="Toreador's Ring",ring2="Toreador's Ring",
        back="Cuchulain's Mantle",waist="Velocious Belt",legs="Homam Cosciales",feet="Homam Gambieras"}

  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  -- // Setup Precast Gear Set(s)
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  
  sets.precast = {}

  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  -- // Setup Midcast Gear Set(s)
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  
  sets.midcast = {}
  sets.midcast.Dark = {}
  sets.midcast.Elemental = {}
  sets.midcast.Dark.Skill = {}
  sets.midcast.Elemental.Skill = {}
  
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  -- // Setup Aftercast Gear Set(s)
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  
  sets.aftercast = {}

	-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
  -- // Idle Gear Sets(s)
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  
  sets.idle.Default = {sub="Pole Grip",ammo="Fire Bomblet",
        head="Ace's Helm",neck="Justice Torque",ear1="Brutal Earring",ear2="Abyssal Earring",
        body="Homam Corazza",hands="Dusk Gloves +1",ring1="Blitz Ring",ring2="Mars's Ring",
        back="Cuchulain's Mantle",waist="Velocious Belt",legs="Homam Cosciales",feet="Homam Gambieras"}
		
  sets.idle.DefaultSAM = {sub="Pole Grip",ammo="Fire Bomblet",
        head="Ace's Helm",neck="Justice Torque",ear1="Brutal Earring",ear2="Abyssal Earring",
        body="Homam Corazza",hands="Dusk Gloves +1",ring1="Blitz Ring",ring2="Toreador's Ring",
        back="Cuchulain's Mantle",waist="Velocious Belt",legs="Homam Cosciales",feet="Homam Gambieras"}
		
	-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  -- // Aftermath Gear Sets(s)
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  
  sets.idle.Aftermath = {sub="Pole Grip",ammo="Fire Bomblet",
        head="Ace's Helm",neck="Justice Torque",ear1="Brutal Earring",ear2="Abyssal Earring",
        body="Homam Corazza",hands="Dusk Gloves +1",ring1="Toreador's Ring",ring2="Mars's Ring",
        back="Cuchulain's Mantle",waist="Velocious Belt",legs="Homam Cosciales",feet="Homam Gambieras"}
		
  sets.idle.AftermathSAM = {sub="Pole Grip",ammo="Fire Bomblet",
        head="Ace's Helm",neck="Justice Torque",ear1="Brutal Earring",ear2="Abyssal Earring",
        body="Homam Corazza",hands="Dusk Gloves +1",ring1="Toreador's Ring",ring2="Mars's Ring",
        back="Cuchulain's Mantle",waist="Velocious Belt",legs="Homam Cosciales",feet="Homam Gambieras"}

  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  -- // Pre-Cast or Pre-Weapon Skill Gear Set(s)
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  
  sets.precast.Catastrophe = {sub="Pole Grip",ammo="Fire Bomblet",
		head="Hecatomb Cap +1",neck="Justice Torque",ear1="Harmonius Earring",ear2="Harmonius Earring",
        body="Hecatomb Harness +1",hands="Hct. Mittens +1",ring1="Triumph Ring",ring2="Triumph Ring",
        back="Cerberus Mantle +1",waist="Warwolf Belt",legs="Onyx Cuisses",feet="Hct. Leggings +1"}  
		
  sets.precast.CatastropheSE = {sub="Pole Grip",ammo="Fire Bomblet",
		head="Hecatomb Cap +1",neck="Justice Torque",ear1="Harmonius Earring",ear2="Harmonius Earring",
        body="Hecatomb Harness +1",hands="Hct. Mittens +1",ring1="Triumph Ring",ring2="Triumph Ring",
        back="Cerberus Mantle +1",waist="Warwolf Belt",legs="Onyx Cuisses",feet="Hct. Leggings +1"} 
		
  sets.precast.CatastropheSAM = {sub="Pole Grip",ammo="Fire Bomblet",
		head="Hecatomb Cap +1",neck="Justice Torque",ear1="Harmonius Earring",ear2="Harmonius Earring",
        body="Hecatomb Harness +1",hands="Hct. Mittens +1",ring1="Triumph Ring",ring2="Triumph Ring",
        back="Cerberus Mantle +1",waist="Warwolf Belt",legs="Onyx Cuisses",feet="Hct. Leggings +1"}
		
  sets.precast.CatastropheSAMSE = {sub="Pole Grip",ammo="Fire Bomblet",
		head="Hecatomb Cap +1",neck="Justice Torque",ear1="Harmonius Earring",ear2="Harmonius Earring",
        body="Hecatomb Harness +1",hands="Hct. Mittens +1",ring1="Triumph Ring",ring2="Triumph Ring",
        back="Cerberus Mantle +1",waist="Warwolf Belt",legs="Onyx Cuisses",feet="Hct. Leggings +1"}
		
  sets.precast.Guillotine = {sub="Pole Grip",ammo="Fire Bomblet",
		head="Hecatomb Cap +1",neck="Justice Torque",ear1="Harmonius Earring",ear2="Harmonius Earring",
        body="Hecatomb Harness +1",hands="Hct. Mittens +1",ring1="Triumph Ring",ring2="Triumph Ring",
        back="Cerberus Mantle +1",waist="Warwolf Belt",legs="Onyx Cuisses",feet="Hct. Leggings +1"}  

  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  -- // Midcast Magic Gear Set(s)
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
		
  sets.midcast.Elemental.Skill = {sub="Pole Grip",
        head="Demon Helm +1",neck="Lemegeton Medallion +1",ear1="Moldavite Earring",ear2="Novio Earring",
        body="Corselet",hands="Dusk Gloves +1",ring1="Galdr Ring",ring2="Omniscient Ring +1",
        back="Merciful Cape",waist="Velocious Belt",legs="Onyx Cuisses",feet="Homam Gambieras"}
		
  sets.midcast.Dark.Skill = {sub="Pole Grip",
        head="Ree Habalo's Headgear",neck="Dark Torque",ear1="Dark Earring",ear2="Abyssal Earring",
        body="Corselet",hands="Blood Finger Gauntlets",ring1="Galdr Ring",ring2="Omniscient Ring +1",
        back="Merciful Cape",waist="Velocious Belt",legs="Onyx Cuisses",feet="Homam Gambieras"}

  sets.midcast.Dark.Skill.Absorb = {sub="Pole Grip",
        head="Onyx Sallet",neck="Dark Torque",ear1="Dark Earring",ear2="Abyssal Earring",
        body="Corselet",hands="Onyx Gadlings",ring1="Galdr Ring",ring2="Omniscient Ring +1",
        back="Merciful Cape",waist="Velocious Belt",legs="Onyx Cuisses",feet="Onyx Sollerets"}
		
end

-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- // GearSwap Function: Precast
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function precast(spell)

	if spell.type == 'WeaponSkill' then
		if spell.name == 'Insurgency' then
			if player.sub_job == 'SAM' then
				if not buffactive['Souleater'] then
					equip(sets.precast.CatastropheSAM)
				else
					equip(sets.precast.CatastropheSAMSE)
				end
			else
				if not buffactive['Souleater'] then
					equip(sets.precast.Catastrophe)
				else
					equip(sets.precast.CatastropheSE)
				end
			end
		end
	end
end

-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- // GearSwap Function: Midcast
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function midcast(spell)

  if spell.action_type == 'Magic' then
    if spell.skill == 'Dark Magic' then
		if spell.english:startswith('Absorb') then
		equip(sets.midcast.Dark.Skill.Absorb)
		else
		equip(sets.midcast.Dark.Skill)
		end
	elseif spell.skill == 'Elemental Magic' then
		equip(sets.midcast.Elemental.Skill)
	end	
  end

end

-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- // GearSwap Function: Aftercast
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function aftercast(spell)

	local status = player.status
	
		if status == 'Engaged' then
			if player.sub_job == 'SAM' then
				if not buffactive['Hasso'] then
					equip(sets.idle.Default)
					send_command('input /ja "Hasso" <me>')
				else
					equip(sets.idle.Default)
				end
				if not buffactive['Aftermath'] then
					equip(sets.idle.Default)
				else
					equip(sets.idle.AftermathSAM)
				end
			else
				if not buffactive['Aftermath'] then
					equip(sets.idle.Default)
				else
					equip(sets.idle.Aftermath)
				end
			end
		elseif status == 'Idle' or status == 'Resting' then
			if player.hpp <100 then
				equip(sets.idle, {neck="Orochi Nodowa +1"})
			else
				equip(sets.idle)
			end
		end		
end

-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- // GearSwap Function: Buff Change
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function buff_change(status,gain_or_loss)

	if status == 'Aftermath' then
		if gain_or_loss == true then
			if player.sub_job == 'SAM' then
				equip(sets.idle.AftermathSAM)
			else
				equip(sets.idle.Aftermath)
			end
		else
			if player.sub_job == 'SAM' then
				equip(sets.idle.DefaultSAM)
			else
				equip(sets.idle.Default)
			end
		end
	end
end

-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- // GearSwap Function: Status Change
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function status_change(new,tab)

  if new == 'Engaged' then
		if player.sub_job == 'SAM' then
			if not buffactive['Hasso'] and new == 'Engaged' then
				equip(sets.idle.Default)
				send_command('input /ja "Hasso" <me>')
			end
			if not buffactive['Aftermath'] then
				equip(sets.idle.DefaultSAM)
			else
				equip(sets.idle.AftermathSAM)
			end
		else
			if not buffactive['Aftermath'] then
				equip(sets.idle.Default)
			else
				equip(sets.idle.Aftermath)
			end
		end
	elseif new == 'Idle' or 'Resting' then
		equip(sets.idle)
	end
end

-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- // GearSwap Function: Self Command
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function self_command(command)

end