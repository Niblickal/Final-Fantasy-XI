-------------------------------------------------------------------------------------------------------------------
-- Setup functions for this job.  Generally should not be modified.
-------------------------------------------------------------------------------------------------------------------

-- Initialization function for this job file.
function get_sets()
    mote_include_version = 2

	-- Load and initialize the include file.
	include('Mote-Include.lua')
end


-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
function job_setup()

end


-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------

-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
	state.OffenseMode:options('Normal')
	state.RangedMode:options('Normal')
	state.HybridMode:options('Normal')
	state.WeaponskillMode:options('Normal')
	state.CastingMode:options('Normal')
	state.IdleMode:options('Normal')
	state.RestingMode:options('Normal')
	state.PhysicalDefenseMode:options('PDT')
	state.MagicalDefenseMode:options('MDT')

	select_default_macro_book()
end


-- Called when this job file is unloaded (eg: job change)
function user_unload()

end

function init_gear_sets()
	
	--------------------------------------
	-- Precast sets
	--------------------------------------
	
	-- Sets to apply to arbitrary JAs
	sets.precast.JA['Jump'] = {body="Drachen Greaves"}
	sets.precast.JA['High Jump'] = {body="Wyrm Brais"}
	sets.precast.JA['Call Wyvern'] = {body="Wyrm Mail"}	

    -- Sets for fast cast gear for spells
	sets.precast.FC = {head="Drachen Armet",ear2="Loquacious Earring",legs="Homam Cosciales"}

	-- Weaponskill sets
	sets.precast.WS = {sub="Pole Grip",ammo="Tiphia Sting",
		head="Hecatomb Cap +1",neck="Love Torque",ear1="Harmonius Earring",ear2="Harmonius Earring",
        body="Zahak's Mail",hands="Hct. Mittens +1",ring1="Triumph Ring",ring2="Triumph Ring",
        back="Cuchulain's Mantle",waist="Wyrm Belt",legs="Hecatomb Subligar +1",feet="Hct. Leggings +1"}  

	-- Specific weaponskill sets.
	sets.precast.WS['Drakesbane'] = {sub="Pole Grip",ammo="Tiphia Sting",
		head="Hecatomb Cap +1",neck="Love Torque",ear1="Harmonius Earring",ear2="Harmonius Earring",
        body="Hecatomb Harness +1",hands="Hct. Mittens +1",ring1="Triumph Ring",ring2="Triumph Ring",
        back="Cuchulain's Mantle",waist="Wyrm Belt",legs="Hecatomb Subligar +1",feet="Hct. Leggings +1"} 

	
	--------------------------------------
	-- Midcast sets
	--------------------------------------

    -- Generic spell recast set
	sets.midcast.FastRecast = {head="Walahra Turban",hands="Dusk Gloves +1",waist="Velocious Belt",legs="Homam Cosciales",feet="Homam Gambieras"}
		
	-- Specific spells
	sets.midcast.Utsusemi = {}

	sets.midcast.Breath = {head="Wyrm Armet",neck="Chanoix's Gorget",body="Wyvern Mail",legs="Drachen Brais",feet="Homam Gambieras"}
		
	--------------------------------------
	-- Idle/resting/defense/etc sets
	--------------------------------------
	
	-- Resting sets
	sets.resting = {neck="Orochi Nodowa +1",body="Conte Corazza"}
	

	-- Idle sets
	sets.idle = {}

	sets.idle.Town = {sub="Pole Grip",ammo="Tiphia Sting",
        head="Ace's Helm",neck="Love Torque",ear1="Brutal Earring",ear2="Assault Earring",
        body="Homam Corazza",hands="Dusk Gloves +1",ring1="Toreador's Ring",ring2="Blitz Ring",
        back="Cerberus Mantle +1",waist="Velocious Belt",legs="Homam Cosciales",feet="Homam Gambieras"}

	sets.idle.Field = {sub="Pole Grip",ammo="Tiphia Sting",
        head="Ace's Helm",neck="Love Torque",ear1="Brutal Earring",ear2="Assault Earring",
        body="Homam Corazza",hands="Blood Finger Gauntlets",ring1="Toreador's Ring",ring2="Blitz Ring",
        back="Cerberus Mantle +1",waist="Velocious Belt",legs="Blood Cuisses",feet="Homam Gambieras"}
	
	sets.idle.Weak = {sub="Pole Grip",ammo="Tiphia Sting",
        head="Ace's Helm",neck="Orochi Nodowa",ear1="Brutal Earring",ear2="Assault Earring",
        body="Conte Corazza",hands="Dusk Gloves +1",ring1="Toreador's Ring",ring2="Defending Ring",
        back="Shadow Mantle",waist="Velocious Belt",legs="Homam Cosciales",feet="Homam Gambieras"}
	
	-- Defense sets
	sets.defense.PDT = {ring2="Defending Ring",back="Shadow Mantle"}

	sets.defense.MDT = {ring1="Shadow Ring"}

    -- Gear to wear for kiting
	sets.Kiting = {legs="Blood Cuisses"}

	--------------------------------------
	-- Engaged sets
	--------------------------------------

	-- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
	-- sets if more refined versions aren't defined.
	-- If you create a set with both offense and defense modes, the offense mode should be first.
	-- EG: sets.engaged.Dagger.Accuracy.Evasion
	
	-- Normal melee group
	
	sets.engaged = {sub="Pole Grip",ammo="Tiphia Sting",
        head="Ace's Helm",neck="Love Torque",ear1="Brutal Earring",ear2="Assault Earring",
        body="Homam Corazza",hands="Dusk Gloves +1",ring1="Toreador's Ring",ring2="Blitz Ring",
        back="Cerberus Mantle +1",waist="Velocious Belt",legs="Homam Cosciales",feet="Homam Gambieras"}
		
	sets.engaged.Acc = {sub="Pole Grip",ammo="Tiphia Sting",
        head="Ace's Helm",neck="Love Torque",ear1="Brutal Earring",ear2="Assault Earring",
        body="Homam Corazza",hands="Dusk Gloves +1",ring1="Toreador's Ring",ring2="Toreador's Ring",
        back="Cerberus Mantle +1",waist="Velocious Belt",legs="Homam Cosciales",feet="Homam Gambieras"}

	--------------------------------------
	-- Custom buff sets
	--------------------------------------
end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------

-- Set eventArgs.handled to true if we don't want any automatic target handling to be done.
function job_pretarget(spell, action, spellMap, eventArgs)

end

-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
-- Set eventArgs.useMidcastGear to true if we want midcast gear equipped on precast.
function job_precast(spell, action, spellMap, eventArgs)

	if JA.name == "Jump" and world.day_element == 'Dark' then
		sets.precast.JA['Jump'] = {body="Drachen Greaves",back="Shadow Mantle"}
	end
end

-- Run after the default precast() is done.
-- eventArgs is the same one used in job_precast, in case information needs to be persisted.
function job_post_precast(spell, action, spellMap, eventArgs)

end


-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_midcast(spell, action, spellMap, eventArgs)

end

-- Run after the default midcast() is done.
-- eventArgs is the same one used in job_midcast, in case information needs to be persisted.
function job_post_midcast(spell, action, spellMap, eventArgs)

end

-- Runs when a pet initiates an action.
-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_pet_midcast(spell, action, spellMap, eventArgs)

	if spell.english:startswith('Healing Breath') or spell.english == 'Restoring Breath' or spell.english:endswith('Breath') then
		equip(sets.midcast.Breath)
	end
	
end

-- Run after the default pet midcast() is done.
-- eventArgs is the same one used in job_pet_midcast, in case information needs to be persisted.
function job_pet_post_midcast(spell, action, spellMap, eventArgs)

end

-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_aftercast(spell, action, spellMap, eventArgs)

end

-- Run after the default aftercast() is done.
-- eventArgs is the same one used in job_aftercast, in case information needs to be persisted.
function job_post_aftercast(spell, action, spellMap, eventArgs)

end

-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_pet_aftercast(spell, action, spellMap, eventArgs)

end

-- Run after the default pet aftercast() is done.
-- eventArgs is the same one used in job_pet_aftercast, in case information needs to be persisted.
function job_pet_post_aftercast(spell, action, spellMap, eventArgs)

end


-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for non-casting events.
-------------------------------------------------------------------------------------------------------------------

-- Called when the player's status changes.
function job_status_change(newStatus, oldStatus, eventArgs)

end

-- Called when the player's pet's status changes.
function job_pet_status_change(newStatus, oldStatus, eventArgs)

end

-- Called when a player gains or loses a buff.
-- buff == buff gained or lost
-- gain == true if the buff was gained, false if it was lost.
function job_buff_change(buff, gain)

end

-- Called when a generally-handled state value has been changed.
function job_state_change(stateField, newValue, oldValue)

end

-------------------------------------------------------------------------------------------------------------------
-- User code that supplements standard library decisions.
-------------------------------------------------------------------------------------------------------------------

-- Called before the Include starts constructing melee/idle/resting sets.
-- Can customize state or custom melee class values at this point.
-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_handle_equipping_gear(status, eventArgs)

end

-- Custom spell mapping.
-- Return custom spellMap value that can override the default spell mapping.
-- Don't return anything to allow default spell mapping to be used.
function job_get_spell_map(spell, default_spell_map)

end

-- Return a customized weaponskill mode to use for weaponskill sets.
-- Don't return anything if you're not overriding the default value.
function get_custom_wsmode(spell, spellMap, default_wsmode)

end

-- Modify the default idle set after it was constructed.
function customize_idle_set(idleSet)
	return idleSet
end

-- Modify the default melee set after it was constructed.
function customize_melee_set(meleeSet)
	return meleeSet
end

-- Modify the default defense set after it was constructed.
function customize_defense_set(defenseSet)
	return defenseSet
end

-- Called by the 'update' self-command, for common needs.
-- Set eventArgs.handled to true if we don't want automatic equipping of gear.
function job_update(cmdParams, eventArgs)

end

-- Set eventArgs.handled to true if we don't want the automatic display to be run.
function display_current_job_state(eventArgs)

end


-------------------------------------------------------------------------------------------------------------------
-- User code that supplements self-commands.
-------------------------------------------------------------------------------------------------------------------

-- Called for custom player commands.
function job_self_command(cmdParams, eventArgs)

end

-- Job-specific toggles.
function job_toggle_state(field)

end

-- Request job-specific mode lists.
-- Return the list, and the current value for the requested field.
function job_get_option_modes(field)

end

-- Set job-specific mode values.
-- Return true if we recognize and set the requested field.
function job_set_option_mode(field, val)

end

-- Handle auto-targetting based on local setup.
function job_auto_change_target(spell, action, spellMap, eventArgs)

end

-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
	-- Default macro set/book
	if player.sub_job == 'WAR' then
		set_macro_page(3, 20)
	elseif player.sub_job == 'NIN' then
		set_macro_page(1, 20)
	elseif player.sub_job == 'SAM' then
		set_macro_page(2, 20)
	else
		set_macro_page(5, 20)
	end
end