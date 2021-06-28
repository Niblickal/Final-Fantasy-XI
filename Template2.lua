  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ 	■ GearSwap Template File
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪

function get_sets()
  
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ 	■ Gear Set(s)
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪

  -- ▪ --------------------------------------------------------------------------------------------------- ▪
  -- │ 	● Idle Set(s)
  -- ▪ --------------------------------------------------------------------------------------------------- ▪

		sets.idle = {}
		
  -- ▪ --------------------------------------------------------------------------------------------------- ▪
  -- │ 	● Pretarget Set(s)
  -- ▪ --------------------------------------------------------------------------------------------------- ▪

		sets.pretarget = {}
  
  -- ▪ --------------------------------------------------------------------------------------------------- ▪
  -- │ 	● Precast Set(s)
  -- ▪ --------------------------------------------------------------------------------------------------- ▪
  
		sets.precast = {}
  
  -- ▪ --------------------------------------------------------------------------------------------------- ▪
  -- │ 	● Midcast Set(s)
  -- ▪ --------------------------------------------------------------------------------------------------- ▪
  
		sets.midcast = {}
  
  -- ▪ --------------------------------------------------------------------------------------------------- ▪
  -- │ 	● Aftercast Set(s)
  -- ▪ --------------------------------------------------------------------------------------------------- ▪
  
		sets.aftercast = {}
  
  
end -- // END OF FUNCTION GET_SETS

  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ 	■ Function(s)
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪

  -- ▪ --------------------------------------------------------------------------------------------------- ▪
  -- │ 	● Pretarget Function(s)
  -- ▪ --------------------------------------------------------------------------------------------------- ▪

function job_pretarget(spell, action)

end
  
  -- ▪ --------------------------------------------------------------------------------------------------- ▪
  -- │ 	● Precast  Function(s)
  -- ▪ --------------------------------------------------------------------------------------------------- ▪
  
function job_precast(spell, action)

end

function job_post_precast(spell, action)

end
  
  -- ▪ --------------------------------------------------------------------------------------------------- ▪
  -- │ 	● Midcast  Function(s)
  -- ▪ --------------------------------------------------------------------------------------------------- ▪
  
function job_midcast(spell, action)

end

function job_post_midcast(spell, action)

end

function job_pet_midcast(spell, action)
	
end

function job_pet_post_midcast(spell, action)

end
  
  -- ▪ --------------------------------------------------------------------------------------------------- ▪
  -- │ 	● Aftercast  Function(s)
  -- ▪ --------------------------------------------------------------------------------------------------- ▪
  
function job_aftercast(spell, action)

end

function job_post_aftercast(spell, action)

end

function job_pet_aftercast(spell, action)

end

function job_pet_post_aftercast(spell, action)

end

  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ ■ Event Handler(s)
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪

function job_status_change(newStatus, oldStatus)

end

function job_pet_status_change(newStatus, oldStatus)

end

function job_buff_change(buff, gain)

end

function job_state_change(stateField, newValue, oldValue)

end

  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪
  -- │ ■ Other Function(s)
  -- ▪ ─────────────────────────────────────────────────────────────────────────────────────────────────── ▪

function select_default_macro_book()

end