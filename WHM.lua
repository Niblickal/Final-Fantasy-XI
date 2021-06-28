-- ╒═══════════════════════════════════════════════════════════════════════════════════════════════════════╕
-- │ ► GearSwap Function: Get Gear Sets
-- │ 	  ╓
-- │ 	  ║    Called once when file is loaded. Used to define variables, and gear sets.
-- │ 	  ╙
-- ╘═══════════════════════════════════════════════════════════════════════════════════════════════════════╛
function get_sets()
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ ■ Setup Variable(s)
  -- │ 	 ╓
  -- │ 	 ║ use_skill - Boolean; used to toggle between using skill and potency for certain spells.
  -- │ 	 ║ notification - Table; contains special characters used in various notification messages.
  -- │ 	 ╙
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  use_skill = true

  notification = {}
  notification.error = string.format('%s %s', string.char(0x81, 0x9F), string.char(0x81, 0xA8))
  notification.command = string.format('%s %s', string.char(0x81, 0xA1), string.char(0x81, 0xA8))
	
	
	
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
  sets.idle.Default = {
    main="Terra's Staff",
    sub="Vivid Strap",
    range=empty,
    ammo="Hedgehog Bomb",
    head="Zenith Crown +1",
    neck="Orochi Nodowa +1",
    ear1="Loquacious Earring",
    ear2="Roundel Earring",
    body="Aristocrat's Coat",
    hands="Blessed Mitts +1",
    ring1="Shadow Ring",
    ring2="Defending Ring",
    back="Shadow Mantle",
    waist="Pythia Sash +1",
    legs="Blessed Trousers +1",
    feet="Herald's Gaiters"
  }

  sets.idle.Resting = {
    main="Chatoyant Staff",
    sub="Ariesian Grip",
    range=empty,
    ammo="Hedgehog Bomb",
    head="Mirror Tiara",
    neck="Beak Necklace +1",
    ear1="Rapture Earring",
    ear2="Antivenom Earring",
    body="Mahatma Houppelande",
    hands="Oracle's Gloves",
    back="Invigorating Cape",
    waist="Qiqirn Sash +1",
    legs="Baron's Slops",
    feet="Goliard Clogs",
    ring1="Celestial Ring",
    ring2="Celestial Ring"
  }



  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ ● Precast Gear Set(s)
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  sets.precast.fastcast.Default = {
    sub="Vivid Strap",
    ear2="Loquacious Earring",
    body="Marduk's Jubbah",
    feet="Rostrum Pumps"
  }

  sets.precast.fastcast.Cure = {
    sub="Vivid Strap",
    ear2="Loquacious Earring",
    body="Marduk's Jubbah",
    feet="Cure Clogs"
  }


  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ ● Midcast Gear Set(s)
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  sets.midcast.magic.dark.Skill = {
    main="Chatoyant Staff",
    sub="Vivid Strap",
    range="Aureole",
    ammo=empty,
    head="Walahra Turban",
    neck="Dark Torque",
    ear1="Dark Earring",
    ear2="Abyssal Earring",
    body="Mahatma Houppelande",
    hands="Mahatma Cuffs",
    ring1="Galdr Ring",
    ring2="Omniscient Ring +1",
    back="Merciful Cape",
    waist="Witch Sash",
    legs="Mahatma Slops",
    feet="Goliard Clogs"
  }

  sets.midcast.magic.divine.Skill = {
    main="Chatoyant Staff",
    sub="Vivid Strap",
    range="Aureole",
    ammo=empty,
    head="Zenith Crown +1",
    neck="Divine Torque",
    ear1="Divine Earring",
    ear2="Celestial Earring",
    body="Blessed Briault +1",
    hands="Blessed Mitts +1",
    ring1="Celestial Ring",
    ring2="Celestial Ring",
    back="Altruistic Cape",
    waist="Witch Sash",
    legs="Blessed Trousers +1",
    feet="Blessed Pumps +1"
  }

  sets.midcast.magic.enfeebling.Skill = {
    main="Chatoyant Staff",
    sub="Vivid Strap",
    range="Aureole",
    ammo=empty,
    head="Oracle's Cap",
    neck="Enfeebling Torque",
    ear1="Enfeebling Earring",
    ear2="Celestial Earring",
    body="Blessed Briault +1",
    hands="Oracle's Gloves",
    ring1="Celestial Ring",
    ring2="Celestial Ring",
    back="Altruistic Cape",
    waist="Witch Sash",
    legs="Blessed Trousers +1",
    feet="Blessed Pumps +1"
  }

  sets.midcast.magic.enfeebling.Potency = {
    main="Chatoyant Staff",
    sub="Vivid Strap",
    range="Aureole",
    ammo=empty,
    head="Zenith Crown +1",
    neck="Promise Badge",
    ear1="Celestial Earring",
    ear2="Celestial Earring",
    body="Blessed Briault +1",
    hands="Blessed Mitts +1",
    ring1="Celestial Ring",
    ring2="Celestial Ring",
    back="Prism Cape",
    waist="Witch Sash",
    legs="Blessed Trousers +1",
    feet="Blessed Pumps +1"
  }

  sets.midcast.magic.enhancing.Default = {
    main="Chatoyant Staff",
    sub="Vivid Strap",
    range=empty,
    ammo="Hedgehog Bomb",
    head="Zenith Crown +1",
    neck="Enhancing Torque",
    ear1="Augmenting Earring",
    ear2="Celestial Earring",
    body="Blessed Briault +1",
    hands="Blessed Mitts +1",
    ring1="Celestial Ring",
    ring2="Celestial Ring",
    back="Merciful Cape",
    waist="Pythia Sash +1",
    legs="Blessed Trousers +1",
    feet="Cleric's Duckbills"
  }

  sets.midcast.magic.enhancing.Barspell = {
    main="Kirin's Pole",
    sub="Vivid Strap",
    range=empty,
    ammo="Hedgehog Bomb",
    head="Zenith Crown +1",
    neck="Enhancing Torque",
    ear1="Augmenting Earring",
    ear2="Celestial Earring",
    body="Blessed Briault +1",
    hands="Blessed Mitts +1",
    ring1="Celestial Ring",
    ring2="Celestial Ring",
    back="Merciful Cape",
    waist="Pythia Sash +1",
    legs="Cleric's Pantaloons",
    feet="Cleric's Duckbills"
  }

  sets.midcast.magic.enhancing.Haste = {
    main="Capricorn Staff",
    sub="Vivid Strap",
    range=empty,
    ammo="Hedgehog Bomb",
    head="Walahra Turban",
    neck="Enhancing Torque",
    ear1="Celestial Earring",
    ear2="Celestial Earring",
    body="Blessed Briault +1",
    hands="Blessed Mitts +1",
    ring1="Celestial Ring",
    ring2="Celestial Ring",
    back="Merciful Cape",
    waist="Pythia Sash +1",
    legs="Blessed Trousers +1",
    feet="Blessed Pumps +1"
  }

  sets.midcast.magic.healing.Cure = {
    main="Chatoyant Staff",
    sub="Vivid Strap +1",
    range=empty,
    ammo="Hedgehog Bomb",
    head="Walahra Turban",
    neck="Fylgja Torque +1",
    ear1="Roundel Earring",
    ear2="Celestial Earring",
    body="Aristocrat's Coat",
    hands="Blessed Mitts +1",
    ring1="Celestial Ring",
    ring2="Celestial Ring",
    back="Altruistic Cape",
    waist="Pythia Sash +1",
    legs="Blessed Trousers +1",
    feet="Blessed Pumps +1"
  }

  sets.midcast.magic.healing.Haste = {
    main="Capricorn Staff",
    sub="Vivid Strap",
    range=empty,
    ammo="Hedgehog Bomb",
    head="Walahra Turban",
    neck="Healing Torque",
    ear1="Celestial Earring",
    ear2="Celestial Earring",
    body="Blessed Briault +1",
    hands="Blessed Mitts +1",
    ring1="Celestial Ring",
    ring2="Celestial Ring",
    back="Prism Cape",
    waist="Pythia Sash +1",
    legs="Blessed Trousers +1",
    feet="Blessed Pumps +1"
  }

  sets.midcast.magic.healing.Skill = {
    main="Prelatic Pole",
    sub="Vivid Strap",
    range=empty,
    ammo="Hedgehog Bomb",
    head="Walahra Turban",
    neck="Healing Torque",
    ear1="Healing Earring",
    ear2="Celestial Earring",
    body="Blessed Briault +1",
    hands="Blessed Mitts +1",
    ring1="Celestial Ring",
    ring2="Celestial Ring",
    back="Altruistic Cape",
    waist="Pythia Sash +1",
    legs="Cleric's Pantaloons",
    feet="Blessed Pumps +1"
  }

  sets.midcast.magic.elemental.Skill = {
    main="Chatoyant Staff",
    sub="Vivid Strap",
    range="Aureole",
    ammo=empty,
    head="Oracle's Cap",
    neck="Lemegeton Medallion +1",
    ear1="Moldavite Earring",
    ear2="Novio Earring",
    body="Mahatma Houppelande",
    hands="Zenith Mitts +1",
    ring1="Galdr Ring",
    ring2="Omniscient Ring +1",
    back="Hecate's Cape",
    waist="Witch Sash",
    legs="Blessed Trousers +1",
    feet="Shrewd Pumps"
  }



  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ ● Special Gear Set(s)
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  sets.special.MaxMP = {
    main="Chatoyant Staff",
    sub="Vivid Strap",
    range=empty,
    ammo="Hedgehog Bomb",
    head="Zenith Crown +1",
    neck="Orochi Nodowa +1",
    ear1="Celestial Earring",
    ear2="Celestial Earring",
    body="Blessed Briault +1",
    hands="Blessed Mitts +1",
    ring1="Celestial Ring",
    ring2="Celestial Ring",
    back="Merciful Cape",
    waist="Pythia Sash +1",
    legs="Zenith Slacks +1",
    feet="Herald's Gaiters"
  }

  sets.special.MaxHP = {
    main="Chatoyant Staff",
    sub="Vivid Strap",
    range=empty,
    ammo="Hedgehog Bomb",
    head="Zenith Crown +1",
    neck="Orochi Nodowa +1",
    ear1="Celestial Earring",
    ear2="Celestial Earring",
    body="Blessed Briault +1",
    hands="Blessed Mitts +1",
    ring1="Celestial Ring",
    ring2="Celestial Ring",
    back="Merciful Cape",
    waist="Pythia Sash +1",
    legs="Zenith Slacks +1",
    feet="Herald's Gaiters"
  }

end



-- ╒═══════════════════════════════════════════════════════════════════════════════════════════════════════╕
-- │ ► GearSwap Function: Filtered Action
-- │ 	  ╓
-- │ 	  ║    Occurs when the player attempts to cast a spell that they are unable to cast. Does not occur
-- │ 	  ║ for actions that bypass the outgoing text buffer (like using items from the menu).
-- │ 	  ╙
-- ╘═══════════════════════════════════════════════════════════════════════════════════════════════════════╛
function filtered_action(spell)

end

-- ╒═══════════════════════════════════════════════════════════════════════════════════════════════════════╕
-- │ ► GearSwap Function: Pre-Target
-- │ 	  ╓
-- │ 	  ║    Occurs when the command text hits the outgoing text buffer. Does not occur for actions that
-- │ 	  ║ bypass the outgoing text buffer (like using items from the menu).
-- │ 	  ╙
-- ╘═══════════════════════════════════════════════════════════════════════════════════════════════════════╛
function pretarget(spell)
  -- ▪ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ - ▪
  -- │ ♦ Action Cancel - Player is Mid-Action
  -- ▪ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ - ▪
  if midaction() then
    add_to_chat(123, string.format('%s [%s] Action Canceled: Mid-Action', notification.error, spell.name))
    cancel_spell()
    return
  end
  
  if spell.action_type == 'Magic' then
    -- ▪ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ▪
    -- │ ♦ Action Cancel - Spell Recast not Zero
    -- ▪ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ▪
    if windower.ffxi.get_spell_recasts()[spell.recast_id] > 0 then
      add_to_chat(123, string.format('%s [%s] Action Canceled: Recast', notification.error, spell.name))
      cancel_spell()
      return
    end

    -- ▪ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ▪
    -- │ ♦ Pretarget Gear Swap - FastCast
    -- ▪ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ▪
    if spell.skill == 'Healing Magic' then
      if string.find(spell.name,'Cur') and spell.name ~= 'Cursna' then
        equip(sets.precast.fastcast.Cure)
      else
        equip(sets.precast.fastcast.Default)
      end
    else
      equip(sets.precast.fastcast.Default)
    end
  end

  if spell.type == 'JobAbility' then
    -- ▪ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ▪
    -- │ ♦ Action Cancel - Job Ability Recast not Zero
    -- ▪ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ▪
    if windower.ffxi.get_ability_recasts()[spell.recast_id] > 0 then
      add_to_chat(123, string.format('%s [%s] Action Canceled: Recast', notification.error, spell.name))
      cancel_spell()
      return
    end
  end

  if spell.type == 'Scholar' then
    -- ▪ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ▪
    -- │ ♦ Action Cancel - Scholar Ability Recast not Zero
    -- ▪ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ▪
    if get_current_strategem_count() == 0 then
      add_to_chat(123, string.format('%s [%s] Action Canceled: Recast', notification.error, spell.name))
      cancel_spell()
      return
    end

    if buffactive[spell.name] then
      add_to_chat(123, string.format('%s [%s] Action Canceled: Buff Active', notification.error, spell.name))
      cancel_spell()
      return
    end
  end
end

-- ╒═══════════════════════════════════════════════════════════════════════════════════════════════════════╕
-- │ ► GearSwap Function: Pre-Cast
-- │ 	  ╓
-- │ 	  ║    Occurs immediately before the outgoing action packet is injected. Does not occur for items
-- │ 	  ║ that bypass the outgoing text buffer (like using items from the menu).
-- │ 	  ╙
-- ╘═══════════════════════════════════════════════════════════════════════════════════════════════════════╛
function precast(spell)

end

-- ╒═══════════════════════════════════════════════════════════════════════════════════════════════════════╕
-- │ ► GearSwap Function: Midcast
-- │ 	  ╓
-- │ 	  ║    Occurs immediately after the outgoing action packet is injected. Does not occur for items
-- │ 	  ║ that bypass the outgoing text buffer (like using items from the menu).
-- │ 	  ╙
-- ╘═══════════════════════════════════════════════════════════════════════════════════════════════════════╛
function midcast(spell)
  if spell.action_type == 'Magic' then
    -- ▪ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ▪
    -- │ ♦ Midcast Gear Swap - Dark Magic
    -- ▪ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ▪
    if spell.skill == 'Dark Magic' then
      equip(sets.midcast.magic.dark.Skill)
    end

    -- ▪ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ▪
    -- │ ♦ Midcast Gear Swap - Divine Magic
    -- ▪ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ▪
    if spell.skill == 'Divine Magic' then
      if spell.name == 'Flash' then
        equip(sets.midcast.magic.divine.Skill, {ear2="Celestial Earring"})
      else
        equip(sets.midcast.magic.divine.Skill)
      end
    end

    -- ▪ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ▪
    -- │ ♦ Midcast Gear Swap - Enhancing Magic
    -- ▪ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ▪
    if spell.skill == 'Enhancing Magic' then
      if spell.name == 'Stoneskin' then
        equip(sets.midcast.magic.enhancing.Default, {neck="Promise Badge",ear1="Celestial Earring",Back="Prism Cape",waist="Pythia Sash +1"})
      elseif spell.name == 'Blink' then
        equip(sets.midcast.magic.enhancing.Default, {neck="Promise Badge",ear1="Celestial Earring",Back="Prism Cape",waist="Pythia Sash +1"})
      elseif string.find(spell.name,'Bar') then
        equip(sets.midcast.magic.enhancing.Barspell)
      elseif string.find(spell.name,'Regen') then
        equip(sets.midcast.magic.enhancing.Haste, {body="Blessed Briault +1"})
      elseif spell.name == 'Invisible' or spell.name == 'Sneak' then
        equip(sets.midcast.magic.enhancing.Haste, {back="Skulker's Cape"})
      else
        equip(sets.midcast.magic.enhancing.Haste)
      end
    end

    -- ▪ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ▪
    -- │ ♦ Midcast Gear Swap - Enfeebling Magic
    -- ▪ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ▪
    if spell.skill == 'Enfeebling Magic' then
      if use_skill then
        equip(sets.midcast.magic.enfeebling.Skill)
      else
        equip(sets.midcast.magic.enfeebling.Potency)
      end
    end

    -- ▪ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ▪
    -- │ ♦ Midcast Gear Swap - Elemental Magic
    -- ▪ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ▪
    if spell.skill == 'Elemental Magic' then
		if player.mpp < 51 then
			equip(sets.midcast.magic.elemental.Skill, {neck="Uggalepih Pendant"})
		else
			equip(sets.midcast.magic.elemental.Skill)
		end
    end
    
    -- ▪ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ▪
    -- │ ♦ Midcast Gear Swap - Healing Magic
    -- ▪ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ▪
    if spell.skill == 'Healing Magic' then
      if string.find(spell.name,'Cur') and spell.name ~= 'Cursna' then
        if player.hpp < 75 then
          equip(sets.midcast.magic.healing.Cure, {ring1="Medicine Ring"})
        else
          equip(sets.midcast.magic.healing.Cure)
        end
      elseif spell.name == 'Cursna' then
        equip(sets.midcast.magic.healing.Skill)
      else
        equip(sets.midcast.magic.healing.Haste)
      end
    end
  end
end

-- ╒═══════════════════════════════════════════════════════════════════════════════════════════════════════╕
-- │ ► GearSwap Function: Aftercast
-- │ 	  ╓
-- │ 	  ║    Occurs when the “result” action packet is received from the server, or an interruption of
-- │ 	  ║ some kind is detected.
-- │ 	  ╙
-- ╘═══════════════════════════════════════════════════════════════════════════════════════════════════════╛
function aftercast(spell)
  if player.status == 'Idle' or spell.interrupted then
    equip(sets.idle.Default)
  end
end

-- ╒═══════════════════════════════════════════════════════════════════════════════════════════════════════╕
-- │ ► GearSwap Function: Status Change
-- │ 	  ╓
-- │ 	  ║    Passes the new and old statuses
-- │ 	  ╙
-- ╘═══════════════════════════════════════════════════════════════════════════════════════════════════════╛
function status_change(new,tab)
  if new == 'Resting' then
    equip(sets.idle.Resting)
  end

  if new == 'Idle' then
    equip(sets.idle.Default)
  end
end

-- ╒═══════════════════════════════════════════════════════════════════════════════════════════════════════╕
-- │ ► GearSwap Function: Buff Change
-- │ 	  ╓
-- │ 	  ║    Passes the new buff name and a boolean that indicates whether it was gained true or lost
-- │ 	  ║ false. Does not fire if your buff bar does not change. For instance, overwriting a March
-- │ 	  ║ with another March will not trigger this event.
-- │ 	  ╙
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

-- ╒═══════════════════════════════════════════════════════════════════════════════════════════════════════╕
-- │ ► GearSwap Function: Self Command
-- │ 	  ╓
-- │ 	  ║    Passes any self commands, which are triggered by //gs c <command> or /console gs c <command>
-- │ 	  ╙ 
-- ╘═══════════════════════════════════════════════════════════════════════════════════════════════════════╛
function self_command(command)
  if command == "maxmp" then
    add_to_chat(123, string.format('%s Gear Set Status: MAX MP (LOCK)', notification.command))
    equip(sets.special.MaxMP)
    disable('main','sub','range','ammo','head','neck','lear','rear','body','hands','lring','rring','back','waist','legs','feet')
  end

  if command == "maxhp" then
    add_to_chat(123, string.format('%s Gear Set Status: MAX HP (LOCK)', notification.command))
    equip(sets.special.MaxHP)
    disable('main','sub','range','ammo','head','neck','lear','rear','body','hands','lring','rring','back','waist','legs','feet')
  end

  if command == "idle" then
    add_to_chat(200, string.format('%s Gear Set Status: IDLE (UNLOCK)', notification.command))
    enable('main','sub','range','ammo','head','neck','lear','rear','body','hands','lring','rring','back','waist','legs','feet')
    equip(sets.idle.Default)
  end

  if command == "lockall" then
    add_to_chat(123, string.format('%s Gear Set Status: CUSTOM (LOCK)', notification.command))
    disable('main','sub','range','ammo','head','neck','lear','rear','body','hands','lring','rring','back','waist','legs','feet')
  end

  if command == "unlockall" then
    add_to_chat(200, string.format('%s Gear Set Status: CUSTOM (UNLOCK)', notification.command))
    enable('main','sub','range','ammo','head','neck','lear','rear','body','hands','lring','rring','back','waist','legs','feet')
  end
  
  if command == "toggle_skill" then
    if use_skill then
      add_to_chat(123, string.format('%s Gear Set Status: POTENCY', notification.command))
      use_skill = false
    else
      add_to_chat(200, string.format('%s Gear Set Status: SKILL', notification.command))
      use_skill = true
    end
  end
end

-- ╒═══════════════════════════════════════════════════════════════════════════════════════════════════════╕
-- │ ► GearSwap Function: File Unload
-- │ 	  ╓
-- │ 	  ║    	Called once on file/addon unload.
-- │ 	  ╙ 
-- ╘═══════════════════════════════════════════════════════════════════════════════════════════════════════╛
function file_unload()

end

-- ╒═══════════════════════════════════════════════════════════════════════════════════════════════════════╕
-- │ ► User Function: Get Current Strategem Count
-- │ 	  ╓
-- │ 	  ║    	Returns the current amount of Scholar strategems available to use.
-- │ 	  ╙ 
-- ╘═══════════════════════════════════════════════════════════════════════════════════════════════════════╛
function get_current_strategem_count()
  local allRecasts = windower.ffxi.get_ability_recasts()
  local stratsRecast = allRecasts[231]

  local maxStrategems = (player.main_job_level + 10) / 20

  local fullRechargeTime = 4*60

  local currentCharges = math.floor(maxStrategems - maxStrategems * stratsRecast / fullRechargeTime)

  return currentCharges
end