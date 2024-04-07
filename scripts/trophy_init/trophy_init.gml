function trophy_init()
{
	if (global.trophy_init_complete > 0)
	    return 1;
	if (global.trophy_init_complete == 0)
	{
	    global.trophy_state = ds_map_create()
	    ds_map_add(global.trophy_state, "item_1", 0)
	    ds_map_add(global.trophy_state, "item_2", 0)
	    ds_map_add(global.trophy_state, "item_3", 0)
	    ds_map_add(global.trophy_state, "item_4", 0)
	    ds_map_add(global.trophy_state, "ruins", 0)
	    ds_map_add(global.trophy_state, "mouse", 0)
	    ds_map_add(global.trophy_state, "tundra", 0)
	    ds_map_add(global.trophy_state, "spaghetti", 0)
	    ds_map_add(global.trophy_state, "water", 0)
	    ds_map_add(global.trophy_state, "rain", 0)
	    ds_map_add(global.trophy_state, "fire", 0)
	    ds_map_add(global.trophy_state, "fire_2", 0)
	    ds_map_add(global.trophy_state, "fire_3", 0)
	    ds_map_add(global.trophy_state, "core", 0)
	    ds_map_add(global.trophy_state, "donate_1", 0)
	    ds_map_add(global.trophy_state, "donate_2", 0)
	    ds_map_add(global.trophy_state, "donate_3", 0)
	    ds_map_add(global.trophy_state, "donate_4", 0)
	    ds_map_add(global.trophy_state, "donate_5", 0)
	    ds_map_add(global.trophy_state, "donate_6", 0)
	    ds_map_add(global.trophy_state, "donate_7", 0)
	    ds_map_add(global.trophy_state, "donate_8", 0)
	    ds_map_add(global.trophy_state, "donate_9", 0)
	    ds_map_add(global.trophy_state, "donate_10", 0)
	    ds_map_add(global.trophy_state, "donate_11", 0)
	    ds_map_add(global.trophy_state, "donate_12", 0)
	    ds_map_add(global.trophy_state, "donate_13", 0)
	    ds_map_add(global.trophy_state, "donate_14", 0)
	    ds_map_add(global.trophy_state, "donate_15", 0)
	    global.trophy_sysid = ds_map_create()
	    var i = ds_map_find_first(global.trophy_state)
	    while (!is_undefined(i))
	    {
	        ds_map_add(global.trophy_sysid, i, "0")
	        i = ds_map_find_next(global.trophy_state, i)
	    }
	    if (os_type == os_ps4 || os_type == os_psvita)
	    {
	        ds_map_set(global.trophy_sysid, "item_1", "1")
	        ds_map_set(global.trophy_sysid, "item_2", "2")
	        ds_map_set(global.trophy_sysid, "item_3", "3")
	        ds_map_set(global.trophy_sysid, "item_4", "4")
	        ds_map_set(global.trophy_sysid, "ruins", "5")
	        ds_map_set(global.trophy_sysid, "mouse", "6")
	        ds_map_set(global.trophy_sysid, "tundra", "7")
	        ds_map_set(global.trophy_sysid, "spaghetti", "8")
	        ds_map_set(global.trophy_sysid, "water", "9")
	        ds_map_set(global.trophy_sysid, "rain", "10")
	        ds_map_set(global.trophy_sysid, "fire", "11")
	        ds_map_set(global.trophy_sysid, "fire_2", "12")
	        ds_map_set(global.trophy_sysid, "fire_3", "13")
	        ds_map_set(global.trophy_sysid, "core", "14")
	        ds_map_set(global.trophy_sysid, "donate_1", "15")
	        ds_map_set(global.trophy_sysid, "donate_2", "16")
	        ds_map_set(global.trophy_sysid, "donate_3", "17")
	        ds_map_set(global.trophy_sysid, "donate_4", "18")
	        ds_map_set(global.trophy_sysid, "donate_5", "19")
	        ds_map_set(global.trophy_sysid, "donate_6", "20")
	        ds_map_set(global.trophy_sysid, "donate_7", "21")
	        ds_map_set(global.trophy_sysid, "donate_8", "22")
	        ds_map_set(global.trophy_sysid, "donate_9", "23")
	        ds_map_set(global.trophy_sysid, "donate_10", "24")
	        ds_map_set(global.trophy_sysid, "donate_11", "25")
	        ds_map_set(global.trophy_sysid, "donate_12", "26")
	        ds_map_set(global.trophy_sysid, "donate_13", "27")
	        ds_map_set(global.trophy_sysid, "donate_14", "28")
	        ds_map_set(global.trophy_sysid, "donate_15", "29")
	    }
	    if (os_type == os_psvita)
	    {
	        ini_open("options.ini")
	        psn_init_np_libs(ini_read_string("PSVita", "nptitleid", ""), ini_read_string("PSVita", "nptitlesecret", ""), ini_read_string("PSVita", "nptitlepassphrase", ""))
	        ini_close()
	    }
	    global.trophy_init_complete = -1
	}
	if (os_type == os_ps4 || os_type == os_psvita)
	{
	    if (os_type == os_psvita)
	    {
	        if (psn_setup_trophies() != 1)
	            return 0;
	    }
	    if (os_type == os_ps4)
	        psn_init_trophy((obj_time.j_ch - 1), 1)
	    else
	        psn_init_trophy((obj_time.j_ch - 1))
	    psn_get_trophy_unlock_state((obj_time.j_ch - 1))
	}
	global.trophy_init_complete = 1
	return 1;
}
