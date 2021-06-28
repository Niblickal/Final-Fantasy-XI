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
    range="Aureole",
    ammo=empty,
    head="Duelist's Chapeau",
    neck="Orochi Nodowa +1",
    ear1="Novio Earring",
    ear2="Loquacious Earring",
    body="Morrigan's Robe",
    hands="Morrigan's Cuffs",
    ring1="Shadow Ring",
    ring2="Defending Ring",
    back="Shadow Mantle",
    waist="Velocious Belt",
    legs="Blood Cuisses",
    feet="Goliard Clogs"
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
    hands="Morrigan's Cuffs",
    back="Invigorating Cape",
    waist="Duelist's Belt",
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
	  body="Duelists's Tabard",
	  head="Warlock's Chapeau",
    ear2="Loquacious Earring",
    feet="Rostrum Pumps"
  }

  sets.precast.fastcast.Cure = {
    sub="Vivid Strap",
	  body="Duelists's Tabard",
	  head="Warlock's Chapeau",
    ear2="Loquacious Earring",
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
    hands="Blood Finger Gauntlets",
    ring1="Galdr Ring",
    ring2="Omniscient Ring +1",
    back="Merciful Cape",
    waist="Velocious Belt",
    legs="Morrigan's Slops",
    feet="Goliard Clogs"
  }

  sets.midcast.magic.divine.Skill = {
    main="Chatoyant Staff",
    sub="Vivid Strap",
    range="Aureole",
    ammo=empty,
    head="Morrigan's Coronal",
    neck="Divine Torque",
    ear1="Divine Earring",
    ear2="Celestial Earring",
    body="Morrigan's Robe",
    hands="Devotee's Mitts +1",
    ring1="Celestial Ring",
    ring2="Celestial Ring",
    back="Altruistic Cape",
    waist="Witch Sash",
    legs="Morrigan's Slops",
    feet="Morrigan's Pigaches"
  }

  sets.midcast.magic.enfeebling.Skill = {
    main="Chatoyant Staff",
    sub="Vivid Strap",
    range="Aureole",
    ammo=empty,
    head="Duelist's Chapeau",
    neck="Enfeebling Torque",
    ear1="Enfeebling Earring",
    ear2="Incubus Earring +1",
    body="Warlock's Tabard",
    hands="Morrigan's Cuffs",
    ring1="Celestial Ring",
    ring2="Celestial Ring",
    back="Altruistic Cape",
    waist="Witch Sash",
    legs="Morrigan's Slops",
    feet="Avocat Pigaches"
  }

  sets.midcast.magic.enfeebling.Potency = {
    main="Chatoyant Staff",
    sub="Vivid Strap",
    range="Aureole",
    ammo=empty,
    head="Duelist's Chapeau",
    neck="Enfeebling Torque",
    ear1="Enfeebling Earring",
    ear2="Celestial Earring",
    body="Warlock's Tabard",
    hands="Devotee's Mitts +1",
    ring1="Celestial Ring",
    ring2="Celestial Ring",
    back="Altruistic Cape",
    waist="Witch Sash",
    legs="Morrigan's Slops",
    feet="Morrigan's Pigaches"
  }

  sets.midcast.magic.enhancing.Default = {
    main="Chatoyant Staff",
    sub="Vivid Strap",
    range="Aureole",
    ammo=empty,
    head="Morrigan's Coronal",
    neck="Enhancing Torque",
    ear1="Augmenting Earring",
    ear2="Celestial Earring",
    body="Mahatma Houppelande",
    hands="Duelist's Gloves",
    ring1="Celestial Ring",
    ring2="Celestial Ring",
    back="Merciful Cape",
    waist="Pythia Sash +1",
    legs="Warlock's Tights",
    feet="Morrigan's Pigaches"
  }

  sets.midcast.magic.enhancing.Haste = {
    main="Chatoyant Staff",
    sub="Vivid Strap",
    range="Aureole",
    ammo=empty,
    head="Walahra Turban",
    neck="Enhancing Torque",
    ear1="Augmenting Earring",
    ear2="Celestial Earring",
    body="Mahatma Houppelande",
    hands="Dusk Gloves +1",
    ring1="Celestial Ring",
    ring2="Celestial Ring",
    back="Merciful Cape",
    waist="Velocious Belt",
    legs="Warlock's Tights",
    feet="Dusk Ledelsens +1"
  }

  sets.midcast.magic.healing.Cure = {
    main="Chatoyant Staff",
    sub="Vivid Strap +1",
    range=empty,
    ammo="Hedgehog Bomb",
    head="Morrigan's Coronal",
    neck="Fylgja Torque +1",
    ear1="Roundel Earring",
    ear2="Celestial Earring",
    body="Duelist's Tabard",
    hands="Devotee's Mitts +1",
    ring1="Celestial Ring",
    ring2="Celestial Ring",
    back="Altruistic Cape",
    waist="Pythia Sash +1",
    legs="Warlock's Tights",
    feet="Morrigan's Pigaches"
  }

  sets.midcast.magic.healing.Haste = {
    main="Chatoyant Staff",
    sub="Vivid Strap +1",
    range=empty,
    ammo="Hedgehog Bomb",
    head="Walahra Turban",
    neck="Fylgja Torque +1",
    ear1="Roundel Earring",
    ear2="Celestial Earring",
    body="Duelist's Tabard",
    hands="Dusk Gloves +1",
    ring1="Celestial Ring",
    ring2="Celestial Ring",
    back="Altruistic Cape",
    waist="Velocious Belt",
    legs="Warlock's Tights",
    feet="Dusk Ledelsens +1"
  }

  sets.midcast.magic.healing.Skill = {
    main="Chatoyant Staff",
    sub="Vivid Strap +1",
    range=empty,
    ammo="Hedgehog Bomb",
    head="Morrigan's Coronal",
    neck="Healing Torque",
    ear1="Roundel Earring",
    ear2="Healing Earring",
    body="Duelist's Tabard",
    hands="Devotee's Mitts +1",
    ring1="Celestial Ring",
    ring2="Celestial Ring",
    back="Altruistic Cape",
    waist="Phthia Sash +1",
    legs="Warlock's Tights",
    feet="Morrigan's Pigaches"
  }

  sets.midcast.magic.elemental.Skill = {
    main="Chatoyant Staff",
    sub="Vivid Strap",
    range="Aureole",
    ammo=empty,
    head="Morrigan's Coronal",
    neck="Lemegeton Medallion +1",
    ear1="Moldavite Earring",
    ear2="Novio Earring",
    body="Morrigan's Robe",
    hands="Morrigan's Cuffs",
    ring1="Galdr Ring",
    ring2="Omniscient Ring +1",
    back="Hecate's Cape",
    waist="Witch Sash",
    legs="Morrigan's Slops",
    feet="Morrigan's Pigaches"
  }

  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ ● Special Gear Set(s)
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  
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
  
    -- ▪ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ▪
    -- │ ♦ Action Cancel - Job Ability Recast not Zero
    -- ▪ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ▪
	
--   if windower.ffxi.get_ability_recasts()[spell.recast_id] > 0 then
--      add_to_chat(123, string.format('%s [%s] Action Canceled: Recast', notification.error, spell.name))
--      cancel_spell()
--      return
--    end
  end

-- ╒═══════════════════════════════════════════════════════════════════════════════════════════════════════╕
-- │ ► GearSwap Function: Pre-Cast
-- │ 	  ╓
-- │ 	  ║    Occurs immediately before the outgoing action packet is injected. Does not occur for items
-- │ 	  ║ that bypass the outgoing text buffer (like using items from the menu).
-- │ 	  ╙
-- ╘═══════════════════════════════════════════════════════════════════════════════════════════════════════╛

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
        if buffactive['Stoneskin'] then
          windower.ffxi.cancel_buff(37)
        end
        equip(sets.midcast.magic.enhancing.Default, {neck="Promise Badge",ear1="Celestial Earring",Back="Prism Cape",waist="Pythia Sash +1"})
      elseif spell.name == 'Blink' then
        if buffactive['Blink'] then
          windower.ffxi.cancel_buff(36)
        end
        equip(sets.midcast.magic.enhancing.Default, {neck="Promise Badge",ear1="Celestial Earring",Back="Prism Cape",waist="Pythia Sash +1"})
      elseif string.find(spell.name,'Bar') then
        equip(sets.midcast.magic.enhancing.Barspell)
      elseif string.find(spell.name,'Regen') then
        equip(sets.midcast.magic.enhancing.Haste)
      elseif spell.name == 'Invisible' or spell.name == 'Sneak' then
        if buffactive.Sneak and spell.target.type == 'SELF' then
          windower.ffxi.cancel_buff(71)
        end
        equip(sets.midcast.magic.enhancing.Haste, {back="Skulker's Cape"})
      else
        equip(sets.midcast.magic.enhancing.Default)
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
  end
     
    -- ▪ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ▪
    -- │ ♦ Midcast Utsusemi Ni - Shadow Check
    -- ▪ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ─ ▪
	
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

end

-- ╒═══════════════════════════════════════════════════════════════════════════════════════════════════════╕
-- │ ► GearSwap Function: Self Command
-- │ 	  ╓
-- │ 	  ║    Passes any self commands, which are triggered by //gs c <command> or /console gs c <command>
-- │ 	  ╙ 
-- ╘═══════════════════════════════════════════════════════════════════════════════════════════════════════╛

-- ╒═══════════════════════════════════════════════════════════════════════════════════════════════════════╕
-- │ ► GearSwap Function: File Unload
-- │ 	  ╓
-- │ 	  ║    	Called once on file/addon unload.
-- │ 	  ╙ 
-- ╘═══════════════════════════════════════════════════════════════════════════════════════════════════════╛

function file_unload()

end