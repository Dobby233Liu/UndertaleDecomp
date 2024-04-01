if (global.decomp_vars.VanillaMode)
	return;
	
if (!instance_exists(obj_mainchara))
	return;

var saved_draw_state = new draw_state();

draw_set_font(fnt_maintext);
draw_set_color(c_gray);

if (!decomp_runmod_allowed())
	draw_text(0, 0, "Can't run at the moment!");
	
draw_load_state(saved_draw_state);