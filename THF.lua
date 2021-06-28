-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- // GearSwap Function: Get Gear Sets
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function get_sets()

  -- send_command('input /macro book 2;wait .1;input /macro set 1')

windower.register_event('hpp change', function(new, old)
	
	if new <25 and player.status == 'Engaged' then
		equip(sets.idle.Evasion)
		send_command('@input /echo HP <25% - Evasion Set Equipped')
	else
    end
end)
	
--end) --// Windower.Register_Event
  
  
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  -- // Setup Idle Gear Set(s)
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  
  sets.idle = {ammo="Fire Bomblet",
        head="Walahra Turban",neck="Love Torque",ear1="Brutal Earring",ear2="Pixie Earring",
        body="Homam Corazza",hands="Hecatomb Mittens +1",ring1="Sniper's Ring +1",ring2="Sniper's Ring +1",
        back="Cuchulain's Mantle",waist="Velocious Belt",legs="Homam Cosciales",feet="Trotter Boots"}

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

	-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  -- // Idle Gear Sets(s)
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  
  sets.idle.Default = {ammo="Fire Bomblet",
        head="Walahra Turban",neck="Love Torque",ear1="Brutal Earring",ear2="Pixie Earring",
        body="Homam Corazza",hands="Dusk Gloves +1",ring1="Sniper's Ring +1",ring2="Sniper's Ring +1",
        back="Cuchulain's Mantle",waist="Velocious Belt",legs="Homam Cosciales",feet="Homam Gambieras"}

  sets.idle.Evasion = {ammo="Fire Bomblet",
        head="Walahra Turban",neck="Evasion Torque",ear1="Evasion Earring",ear2="Elusive Earring",
        body="Homam Corazza",hands="Dusk Gloves +1",ring1="Wivre Ring +1",ring2="Wivre Ring +1",
        back="Toreador's Cape",waist="Velocious Belt",legs="Homam Cosciales",feet="Homam Gambieras"}

  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  -- // Pre-Cast or Pre-Weapon Skill Gear Set(s)
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

  sets.precast.DancingEdge = {ammo="Fire Bomblet",
		head="Hecatomb Cap +1",neck="Love Torque",ear1="Adroit Earring",ear2="Pixie Earring",
        body="Hecatomb Harness +1",hands="Hct. Mittens +1",ring1="Adroit Ring",ring2="Adroit Ring",
        back="Cuchulain's Mantle",waist="Warwolf Belt",legs="Hecatomb Subligar +1",feet="Hct. Leggings +1"} 
		
  sets.precast.Evisceration = {ammo="Fire Bomblet",
		head="Hecatomb Cap +1",neck="Love Torque",ear1="Adroit Earring",ear2="Pixie Earring",
        body="Hecatomb Harness +1",hands="Hct. Mittens +1",ring1="Adroit Ring",ring2="Adroit Ring",
        back="Cerberus Mantle +1",waist="Warwolf Belt",legs="Hecatomb Subligar +1",feet="Hct. Leggings +1"} 		

  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  -- // Custom Gear Set(s)
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  		
end

-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- // GearSwap Function: HP Change
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

windower.register_event('hp change', function(new, old)
 
	if player.status == 'Engaged' and not buffactive['Drain Samba'] and player.tp > 250 then
		equip(sets.idle.Default)
		send_command('input /ja "Drain Samba II" <me>')
	else
    end
end)

-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- // GearSwap Function: Precast
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function precast(spell)

	if spell.type == 'WeaponSkill' then
		if spell.name == 'Dancing Edge' then
			equip(sets.precast.DancingEdge)
		elseif spell.name == 'Evisceration' then
			equip(sets.precast.Evisceration)
		elseif spell.name == 'Mandalic Stab' then
			equip(sets.precast.DancingEdge)
		end
	elseif spell.type == 'Ninjutsu' and windower.wc_match(spell.name 'Utsusemi*') then
		equip(sets.idle.Evasion)
	end
end

-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- // GearSwap Function: Midcast
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function midcast(spell)

    if spell.action_type == 'Ninjutsu' then
		if windower.wc_match(spell.name,'Utsusemi*') then
			if spell.name == 'Utsusemi: Ichi' and ShadowType == 'Ni' then
            	if buffactive['Copy Image'] then
                	windower.ffxi.cancel_buff(66)
            	elseif buffactive['Copy Image (2)'] then
                	windower.ffxi.cancel_buff(444)
            	elseif buffactive['Copy Image (3)'] then
					windower.ffxi.cancel_buff(445)
            	elseif buffactive['Copy Image (4+)'] then
                	windower.ffxi.cancel_buff(446)
            	end
        	end
    	end
	end
end

-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- // GearSwap Function: Aftercast
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function aftercast(spell)

	local status = player.status
		if status == 'Idle' then
			if player.sub_job == 'DNC' then
				if not buffactive['Drain Samba'] and player.tp > 250 then
					equip(sets.idle.Default)
					send_command('input /ja "Drain Samba II" <me>')
				end
			else
			end
		else
			equip(sets.idle.Default)
		end
end

-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- // GearSwap Function: Buff Change
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function buff_change(status,gain_or_loss)

	if status == 'Blind' or status == 'Paralyze' then
		if gain_or_loss and player.tp > 200 and player.sub_job == 'DNC' then
			equip(sets.idle.Default)
			send_command('input /ja "Healing Waltz" <me>')
		end
	end
	if status == 'Silence' then
		if gain_or_loss and player.sub_job == 'NIN' then
			send_command('wait .5;input /item "Echo Drops" <me>')
		end
	end
	if status == 'Drain Samba' then
		if gain_or_loss and player.tp > 250 and player.sub_job == 'DNC' and not buffactive['Drain Samba'] then
			equip(sets.idle.Default)
			send_command('input /ja "Drain Samba II" <me>')
		end
	end
end

-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- // GearSwap Function: Status Change
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function status_change(new,tab)

	if new == 'Engaged' then
		if player.sub_job == 'DNC' then
			if not buffactive['Drain Samba'] and player.tp > 250 then
				send_command('input /ja "Drain Samba II" <me>')
			end
		else
		end
		equip(sets.idle.Default)
	elseif new == 'Resting' then
		equip(sets.idle.Default)
	elseif new == 'Idle' then
		equip(sets.idle)
	end
end


-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- // GearSwap Function: Self Command
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function self_command(command)

end

