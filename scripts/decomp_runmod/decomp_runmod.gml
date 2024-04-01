/// @func	decomp_runmod_get()
/// @desc	Gets the current speed modifier for the character
function decomp_runmod_get()
{
	var run_enabled = !global.decomp_vars.VanillaMode && global.decomp_vars.EnableRunning;
	var run_allowed = decomp_runmod_allowed();
	var holding_run_input = control_check(CancelButton) ^^ global.decomp_vars.EnableAutoRun;
	
	return run_enabled && run_allowed && holding_run_input ? 2 : 1;
}

/// @func	decomp_runmod_allowed()
/// @desc	Gets whenever running is allowed in current room / event state
function decomp_runmod_allowed()
{
	// Toriel switches - can softlock by running with Toriel and getting softlocked inside the collider
	if (room == room_ruins3 && global.plot < 5)
		return false;
		
	// Toriel and training dummy - can skip this part by advancing before Toriel blocks the doorway
	if (room == room_ruins4 && global.plot < 7)
		return false;
	
	// Toriel crossing spikes with player
	if (room == room_ruins5 && global.plot < 7.5)
		return false;
		
	// Toriel running away in long hallway - funky stuff happens if you run ahead of Toriel
	if (room == room_ruins6 && global.plot < 9)
		return false;
		
	// Block running if the menu is also disabled. This includes:
	// - Undyne is coming to kick your ass (and we're going to help her)
	// - MTT News sequence
	// - Other stuff
	if (FL_UnknownBoolean17)
		return false;
		
	// Disable running during the mega laser sequence
	if (room == room_fire_core_laserfun && global.plot < 184)
		return false;
		
	// Final room in lab, this prevents the player from running after Alphys
	if (room == room_fire_core_final && global.plot == 199)
		return false;
	
	// Otherwise, allow running
	return true;
}