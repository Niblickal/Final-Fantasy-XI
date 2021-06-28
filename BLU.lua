  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ ■ Start of File
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪

function get_sets()

  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  -- // Event Register
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  
windower.register_event('hpp change', function(new, old)

end)


  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ ■ Start of Setup Gear Sets
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪

  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  -- // Setup Custom Set(s)
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

blue_magic_maps = {}
    
    -- Mappings for gear sets to use for various blue magic spells.
    -- While Str isn't listed for each, it's generally assumed as being at least
    -- moderately signficant, even for spells with other mods.
    
    -- Physical Spells --
    
    -- Physical spells with no particular (or known) stat mods
    blue_magic_maps.Physical = S{
        'Bilgestorm'
    }

    -- Spells with heavy accuracy penalties, that need to prioritize accuracy first.
    blue_magic_maps.PhysicalAcc = S{
        'Heavy Strike',
    }

    -- Physical spells with Str stat mod
    blue_magic_maps.PhysicalStr = S{
        'Battle Dance','Bloodrake','Death Scissors','Dimensional Death',
        'Empty Thrash','Quadrastrike','Sinker Drill','Spinal Cleave',
        'Uppercut','Vertical Cleave'
    }
        
    -- Physical spells with Dex stat mod
    blue_magic_maps.PhysicalDex = S{
        'Amorphic Spikes','Asuran Claws','Barbed Crescent','Claw Cyclone','Disseverment',
        'Foot Kick','Frenetic Rip','Goblin Rush','Hysteric Barrage','Paralyzing Triad',
        'Seedspray','Sickle Slash','Smite of Rage','Terror Touch','Thrashing Assault',
        'Vanity Dive'
    }
        
    -- Physical spells with Vit stat mod
    blue_magic_maps.PhysicalVit = S{
        'Body Slam','Cannonball','Delta Thrust','Glutinous Dart','Grand Slam',
        'Power Attack','Quad. Continuum','Sprout Smack','Sub-zero Smash'
    }
        
    -- Physical spells with Agi stat mod
    blue_magic_maps.PhysicalAgi = S{
        'Benthic Typhoon','Feather Storm','Helldive','Hydro Shot','Jet Stream',
        'Pinecone Bomb','Spiral Spin','Wild Oats'
    }

    -- Physical spells with Int stat mod
    blue_magic_maps.PhysicalInt = S{
        'Mandibular Bite','Queasyshroom'
    }

    -- Physical spells with Mnd stat mod
    blue_magic_maps.PhysicalMnd = S{
        'Ram Charge','Screwdriver','Tourbillion'
    }

    -- Physical spells with Chr stat mod
    blue_magic_maps.PhysicalChr = S{
        'Bludgeon'
    }

    -- Physical spells with HP stat mod
    blue_magic_maps.PhysicalHP = S{
        'Final Sting'
    }

    -- Magical Spells --

    -- Magical spells with the typical Int mod
    blue_magic_maps.Magical = S{
        'Blastbomb','Blazing Bound','Bomb Toss','Cursed Sphere','Dark Orb','Death Ray',
        'Diffusion Ray','Droning Whirlwind','Embalming Earth','Firespit','Foul Waters',
        'Ice Break','Leafstorm','Maelstrom','Rail Cannon','Regurgitation','Rending Deluge',
        'Retinal Glare','Subduction','Tem. Upheaval','Water Bomb'
    }

    -- Magical spells with a primary Mnd mod
    blue_magic_maps.MagicalMnd = S{
        'Acrid Stream','Evryone. Grudge','Magic Hammer','Mind Blast'
    }

    -- Magical spells with a primary Chr mod
    blue_magic_maps.MagicalChr = S{
        'Eyes On Me','Mysterious Light'
    }

    -- Magical spells with a Vit stat mod (on top of Int)
    blue_magic_maps.MagicalVit = S{
        'Thermal Pulse'
    }

    -- Magical spells with a Dex stat mod (on top of Int)
    blue_magic_maps.MagicalDex = S{
        'Charged Whisker','Gates of Hades'
    }
            
    -- Magical spells (generally debuffs) that we want to focus on magic accuracy over damage.
    -- Add Int for damage where available, though.
    blue_magic_maps.MagicAccuracy = S{
        '1000 Needles','Absolute Terror','Actinic Burst','Auroral Drape','Awful Eye',
        'Blank Gaze','Blistering Roar','Blood Drain','Blood Saber','Chaotic Eye',
        'Cimicine Discharge','Cold Wave','Corrosive Ooze','Demoralizing Roar','Digest',
        'Dream Flower','Enervation','Feather Tickle','Filamented Hold','Frightful Roar',
        'Geist Wall','Hecatomb Wave','Infrasonics','Jettatura','Light of Penance',
        'Lowing','Mind Blast','Mortal Ray','MP Drainkiss','Osmosis','Reaving Wind',
        'Sandspin','Sandspray','Sheep Song','Soporific','Sound Blast','Stinking Gas',
        'Sub-zero Smash','Venom Shell','Voracious Trunk','Yawn'
    }
        
    -- Breath-based spells
    blue_magic_maps.Breath = S{
        'Bad Breath','Flying Hip Press','Frost Breath','Heat Breath',
        'Hecatomb Wave','Magnetite Cloud','Poison Breath','Radiant Breath','Self-Destruct',
        'Thunder Breath','Vapor Spray','Wind Breath'
    }

    -- Stun spells
    blue_magic_maps.Stun = S{
        'Blitzstrahl','Frypan','Head Butt','Sudden Lunge','Tail slap','Temporal Shift',
        'Thunderbolt','Whirl of Rage'
    }
        
    -- Healing spells
    blue_magic_maps.Healing = S{
        'Healing Breeze','Magic Fruit','Plenilune Embrace','Pollen','Restoral','White Wind',
        'Wild Carrot'
    }
    
    -- Buffs that depend on blue magic skill
    blue_magic_maps.SkillBasedBuff = S{
        'Barrier Tusk','Diamondhide','Magic Barrier','Metallic Body','Plasma Charge',
        'Pyric Bulwark','Reactor Cool',
    }

    -- Other general buffs
    blue_magic_maps.Buff = S{
		'Amplification','Animating Wail','Battery Charge','Carcharian Verve','Cocoon',
        'Erratic Flutter','Exuviation','Fantod','Feather Barrier','Harden Shell',
        'Memento Mori','Nat. Meditation','Occultation','Orcish Counterstance','Refueling',
        'Regeneration','Saline Coat','Triumphant Roar','Warm-Up','Winds of Promyvion',
        'Zephyr Mantle'
	}
    
    
    -- Spells that require Unbridled Learning to cast.
    unbridled_spells = S{
		'Absolute Terror','Bilgestorm','Blistering Roar','Bloodrake','Carcharian Verve',
        'Crashing Thunder','Droning Whirlwind','Gates of Hades','Harden Shell','Polar Roar',
        'Pyric Bulwark','Thunderbolt','Tourbillion','Uproot'
	}
  
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  -- // Setup Idle Gear Set(s)
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  
 sets.idle = {}
 sets.idle.TP = {}

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
  

 
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ ■ End of Setup Gear Sets
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ ■ Start of Input Gear Sets
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  
	-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
  -- // Idle Gear Sets(s)
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

sets.idle.TP.Offensive = {
        head="Walahra Turban",neck="Justice Torque",ear1="Brutal Earring",ear2="Suppanomimi",
        body="Homam Corazza",hands="Dusk Gloves +1",ring1="Rajas Ring",ring2="Mars's Ring",
        back="Mirage Mantle",waist="Velocious Belt",legs="Homam Cosciales",feet="Homam Gambieras"}
	
sets.idle.TP.Defensive = {
        head="Walahra Turban",neck="Justice Torque",ear1="Brutal Earring",ear2="Suppanomimi",
        body="Homam Corazza",hands="Dusk Gloves +1",ring1="Rajas Ring",ring2="Defending Ring",
        back="Shadow Mantle",waist="Velocious Belt",legs="Blood Cuisses",feet="Homam Gambieras"}

sets.idle.TP.Hybrid = {
        head="Walahra Turban",neck="Justice Torque",ear1="Brutal Earring",ear2="Suppanomimi",
        body="Morrigan's Robe",hands="Dusk Gloves +1",ring1="Rajas Ring",ring2="Serket Ring",
        back="Shadow Mantle",waist="Velocious Belt",legs="Homam Cosciales",feet="Homam Gambieras"}	

  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  -- // Pre-Cast or Pre-Weapon Skill Gear Set(s)
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  
sets.precast.FastCast = {ear1="Loquacious Earring",legs="Homam Cosciales"}

sets.precast.WeaponSkill = {
        head="Walahra Turban",neck="Justice Torque",ear1="Pixie Earring",ear2="Suppanomimi",
        body="Morrigan's Robe",hands="Dusk Gloves +1",ring1="Rajas Ring",ring2="Mars's Ring",
        back="Cuchulain's Mantle",waist="Velocious Belt",legs="Homam Cosciales",feet="Homam Gambieras"}	
  
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  -- // Mid-Cast Set(s)
  -- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

sets.midcast.BlueMagic = {
        head="Mirage Keffiyeh",neck="Justice Torque",ear1="Brutal Earring",ear2="Suppanomimi",
        body="Morrigan's Robe",hands="Dusk Gloves +1",ring1="Rajas Ring",ring2="Serket Ring",
        back="Mirage Mantle",waist="Velocious Belt",legs="Homam Cosciales",feet="Homam Gambieras"}	

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

end

function precast(spell)

end

-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- // GearSwap Function: Midcast
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function midcast(spell)

end

-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- // GearSwap Function: Aftercast
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function aftercast(spell)

end

-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- // GearSwap Function: Buff Change
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function buff_change(status,gain_or_loss)

end

-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- // GearSwap Function: Status Change
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

function status_change(new,tab)

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