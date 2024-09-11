local parts = {}

local function load()

	parts.source = {
		{id = "src-default-optionpanel-panel1", path = "select_skinparts/default_optionpanel/option1_panel_resize.png"},
		{id = "option1_text", path = "select_skinparts/default_optionpanel/option1_0.8.5_text_resize.png"},
		{id = "src-default-optionpanel-panel2", path = "select_skinparts/default_optionpanel/option2_panel_resize.png"},
		{id = "option2_text", path = "select_skinparts/default_optionpanel/option2_text_resize.png"},
		{id = "src-default-optionpanel-panel3", path = "select_skinparts/default_optionpanel/option3_ex_panel_resize.png"},
		{id = "option3_text", path = "select_skinparts/default_optionpanel/option3_ex_text_resize.png"},
		{id = "src-default-optionpanel-cursor", path = "select_skinparts/default_optionpanel/option_cursor_resize.png"},
		{id = "other_option", path = "select_skinparts/default_optionpanel/other_option_resize.png"},
		{id = "gas_limit", path = "select_skinparts/default_optionpanel/gas_low_limit_resize.png"},
		{id = "extra_mode", path = "select_skinparts/default_optionpanel/extra_mode.png"},
	}

	parts.image = {
		{id = "default_optionpanel_option_panel1",				src = "src-default-optionpanel-panel1", x = 0, y = 0, w = 1920, h = 1080, act = (function() return xxxx() end)},
		{id = "option1_text",				src = "option1_text", x = 0, y = 0, w = 1920, h = 1080},

		{id = "default_optionpanel_option_selector11_1",		src = "src-default-optionpanel-cursor", x = 0, y = 536-43*0, w = 195, h = 587},
		{id = "default_optionpanel_option_selector11_2",		src = "src-default-optionpanel-cursor", x = 0, y = 536-43*1, w = 195, h = 587},
		{id = "default_optionpanel_option_selector11_3",		src = "src-default-optionpanel-cursor", x = 0, y = 536-43*2, w = 195, h = 587},
		{id = "default_optionpanel_option_selector11_4",		src = "src-default-optionpanel-cursor", x = 0, y = 536-43*3, w = 195, h = 587},
		{id = "default_optionpanel_option_selector11_5",		src = "src-default-optionpanel-cursor", x = 0, y = 536-43*4, w = 195, h = 587},
		{id = "default_optionpanel_option_selector11_6",		src = "src-default-optionpanel-cursor", x = 0, y = 536-43*5, w = 195, h = 587},
		{id = "default_optionpanel_option_selector11_7",		src = "src-default-optionpanel-cursor", x = 0, y = 536-43*6, w = 195, h = 587},
		{id = "default_optionpanel_option_selector11_8",		src = "src-default-optionpanel-cursor", x = 0, y = 536-43*7, w = 195, h = 587},
		{id = "default_optionpanel_option_selector11_9",		src = "src-default-optionpanel-cursor", x = 0, y = 536-43*8, w = 195, h = 587},
		{id = "default_optionpanel_option_selector11_10",		src = "src-default-optionpanel-cursor", x = 0, y = 536-43*9, w = 195, h = 587},
		{id = "default_optionpanel_option_selector11_11",		src = "src-default-optionpanel-cursor", x = 0, y = 536-43*10, w = 195, h = 587},
		
				
		{id = "default_optionpanel_option_panel2",				src = "src-default-optionpanel-panel2", x = 0, y = 0, w = 1920, h = 1080, act = (function() return xxxx() end)},
		{id = "option2_text",				src = "option2_text", x = 0, y = 0, w = 1920, h = 1080},

		{id = "default_optionpanel_option_selector21_off",		src = "src-default-optionpanel-cursor", x = 0, y = 530, w = 195, h = 50},
		{id = "default_optionpanel_option_selector21_on",		src = "src-default-optionpanel-cursor", x = 0, y = 530-53, w = 195, h = 50},			

		{id = "default_optionpanel_option_panel3",				src = "src-default-optionpanel-panel3", x = 0, y = 0, w = 1920, h = 1080, act = (function() return xxxx() end)},
		{id = "option3_text",				src = "option3_text", x = 0, y = 0, w = 1920, h = 1080},
		
		{id = "default_optionpanel_option_selector31_1",		src = "src-default-optionpanel-cursor", x = 0, y = 536-43*0, w = 195, h = 587},
		{id = "default_optionpanel_option_selector31_2",		src = "src-default-optionpanel-cursor", x = 0, y = 536-43*1, w = 195, h = 587},
		{id = "default_optionpanel_option_selector31_3",		src = "src-default-optionpanel-cursor", x = 0, y = 536-43*2, w = 195, h = 587},
		{id = "default_optionpanel_option_selector31_4",		src = "src-default-optionpanel-cursor", x = 0, y = 536-43*3, w = 195, h = 587},
		{id = "default_optionpanel_option_selector31_5",		src = "src-default-optionpanel-cursor", x = 0, y = 536-43*4, w = 195, h = 587},

		{id = "default_lanecover_button",	src = "other_option", x = 0, y = 0, w = 270, h = 100, divy = 2, len = 2, ref = 330, act = 330},
		{id = "default_liftcover_button",	src = "other_option", x = 0, y = 0, w = 270, h = 100, divy = 2, len = 2, ref = 331, act = 331},
		{id = "default_hidden_button",		src = "other_option", x = 0, y = 0, w = 270, h = 100, divy = 2, len = 2, ref = 332, act = 332},
		{id = "default_hsadjust_button",	src = "other_option", x = 0, y = 0, w = 270, h = 100, divy = 2, len = 2, ref = 342, act = 342},
		{id = "default_coveroption_button_rect",	src = "other_option", x = 0, y = 100, w = 270, h = 50},

		{id = "gas_low_limit", src = "gas_limit", x = 0, y = 0, w = 179, h = 111, divy = 3, len = 3, ref = 341, act = 341},
		{id = "gas_low_limit_rect", src = "gas_limit", x = 0, y = 179, w = 111, h = 50},

		{id = "ex_note",	src = "extra_mode", x = 0, y = 0, w = 195, h = 200, divy = 4, len = 4, ref = 350, act = 350},
		{id = "ex_longnote",	src = "extra_mode", x = 195, y = 0, w = 195, h = 300, divy = 6, len = 6, ref = 353, act = 353},
	}

	parts.imageset = {
--[[ 0.8.4以前
		{id = "default_optionpanel_option_target", ref = 77, images = {
			"default_optionpanel_option_selector11_1","default_optionpanel_option_selector11_2",
			"default_optionpanel_option_selector11_3","default_optionpanel_option_selector11_4",
			"default_optionpanel_option_selector11_5","default_optionpanel_option_selector11_6",
			"default_optionpanel_option_selector11_7","default_optionpanel_option_selector11_8",
			"default_optionpanel_option_selector11_9","default_optionpanel_option_selector11_10",
			"default_optionpanel_option_selector11_11"
		}},
--]]
		{id = "default_optionpanel_option_random", ref = 42, images = {
			"default_optionpanel_option_selector11_2",
			"default_optionpanel_option_selector11_3","default_optionpanel_option_selector11_4",
			"default_optionpanel_option_selector11_5","default_optionpanel_option_selector11_6",
			"default_optionpanel_option_selector11_7","default_optionpanel_option_selector11_8",
			"default_optionpanel_option_selector11_9","default_optionpanel_option_selector11_10",
			"default_optionpanel_option_selector11_11"
		}},
		{id = "default_optionpanel_option_gauge", ref = 40, images = {
			"default_optionpanel_option_selector11_6",
			"default_optionpanel_option_selector11_7","default_optionpanel_option_selector11_8",
			"default_optionpanel_option_selector11_9","default_optionpanel_option_selector11_10",
			"default_optionpanel_option_selector11_11"
		}},
		{id = "default_optionpanel_option_hsfix", ref = 55, images = {
			"default_optionpanel_option_selector11_7","default_optionpanel_option_selector11_8",
			"default_optionpanel_option_selector11_9","default_optionpanel_option_selector11_10",
			"default_optionpanel_option_selector11_11"
		}},
		{id = "default_optionpanel_option_random2", ref = 43, images = {
			"default_optionpanel_option_selector11_2",
			"default_optionpanel_option_selector11_3","default_optionpanel_option_selector11_4",
			"default_optionpanel_option_selector11_5","default_optionpanel_option_selector11_6",
			"default_optionpanel_option_selector11_7","default_optionpanel_option_selector11_8",
			"default_optionpanel_option_selector11_9","default_optionpanel_option_selector11_10",
			"default_optionpanel_option_selector11_11"
		}},
		{id = "default_optionpanel_option_dp", ref = 54, images = {
			"default_optionpanel_option_selector11_8",
			"default_optionpanel_option_selector11_9","default_optionpanel_option_selector11_10",
			"default_optionpanel_option_selector11_11"
		}},
		
		{id = "default_optionpanel_option_exjudge", ref = 301, images = {
			"default_optionpanel_option_selector21_on","default_optionpanel_option_selector21_off"
		}},
		{id = "default_optionpanel_option_constant", ref = 302, images = {
			"default_optionpanel_option_selector21_on","default_optionpanel_option_selector21_off"
		}},
		{id = "default_optionpanel_option_judgearea", ref = 303, images = {
			"default_optionpanel_option_selector21_on","default_optionpanel_option_selector21_off"
		}},
		{id = "default_optionpanel_option_legacy", ref = 304, images = {
			"default_optionpanel_option_selector21_on","default_optionpanel_option_selector21_off"
		}},
		{id = "default_optionpanel_option_marknote", ref = 305, images = {
			"default_optionpanel_option_selector21_on","default_optionpanel_option_selector21_off"
		}},
		{id = "default_optionpanel_option_bpmguide", ref = 306, images = {
			"default_optionpanel_option_selector21_on","default_optionpanel_option_selector21_off"
		}},
		{id = "default_optionpanel_option_nomine", ref = 307, images = {
			"default_optionpanel_option_selector21_on","default_optionpanel_option_selector21_off"
		}},
		
		{id = "default_optionpanel_option_gas", ref = 78, images = {
			"default_optionpanel_option_selector31_1","default_optionpanel_option_selector31_2",
			"default_optionpanel_option_selector31_3","default_optionpanel_option_selector31_4",
			"default_optionpanel_option_selector31_5"
		}},
		{id = "default_optionpanel_option_bga", ref = 72, images = {
			"default_optionpanel_option_selector11_9","default_optionpanel_option_selector11_10",
			"default_optionpanel_option_selector11_11"
		}},
		{id = "default_optionpanel_option_adjust", ref = 75, images = {
			"default_optionpanel_option_selector11_10","default_optionpanel_option_selector11_11"
		}},
	}

	parts.value = {
		{id = "default_optionpanel_duration",		src = "number_alte", x = 0, y = 0, w = 140, h = 25, divx = 10, digit = 4, ref = 312},
		{id = "default_optionpanel_duration_green",	src = "number_alte", x = 0, y = 25, w = 140, h = 25, divx = 10, digit = 4, ref = 313},
		{id = "default_optionpanel_judgetiming",	src = "number_alte", x = 140, y = 0, w = 168, h = 50, divx = 12, divy = 2, digit = 4, ref = 12, align = 2},	
	}

	parts.text = {
		{id = "default_optionpanel_target_1",	font = "font_sub", size = 18, overflow = 1, ref = 201},
		{id = "default_optionpanel_target_2",	font = "font_sub", size = 18, overflow = 1, ref = 202},
		{id = "default_optionpanel_target_3",	font = "font_sub", size = 18, overflow = 1, ref = 203},
		{id = "default_optionpanel_target_4",	font = "font_sub", size = 18, overflow = 1, ref = 204},
		{id = "default_optionpanel_target_5",	font = "font_sub", size = 18, overflow = 1, ref = 205},
		{id = "default_optionpanel_target_6",	font = "font_sub", size = 18, overflow = 1, ref = 206},
		{id = "default_optionpanel_target_7",	font = "font_sub", size = 18, overflow = 1, ref = 207},
		{id = "default_optionpanel_target_8",	font = "font_sub", size = 18, overflow = 1, ref = 208},
		{id = "default_optionpanel_target_9",	font = "font_sub", size = 18, overflow = 1, ref = 209},
		{id = "default_optionpanel_target_10",	font = "font_sub", size = 18, overflow = 1, ref = 3},
		{id = "default_optionpanel_target_11",	font = "font_sub", size = 18, overflow = 1, ref = 210},
		{id = "default_optionpanel_target_12",	font = "font_sub", size = 18, overflow = 1, ref = 211},
		{id = "default_optionpanel_target_13",	font = "font_sub", size = 18, overflow = 1, ref = 212},
		{id = "default_optionpanel_target_14",	font = "font_sub", size = 18, overflow = 1, ref = 213},
		{id = "default_optionpanel_target_15",	font = "font_sub", size = 18, overflow = 1, ref = 214},
		{id = "default_optionpanel_target_16",	font = "font_sub", size = 18, overflow = 1, ref = 215},
		{id = "default_optionpanel_target_17",	font = "font_sub", size = 18, overflow = 1, ref = 216},
		{id = "default_optionpanel_target_18",	font = "font_sub", size = 18, overflow = 1, ref = 217},
		{id = "default_optionpanel_target_19",	font = "font_sub", size = 18, overflow = 1, ref = 218},
	}
	
	parts.destination = {
		{id = -110, loop = 300, op = {21}, timer = 21,	dst = {{time = 0, x = 0, y = 0, w = 1920, h = 1080, a = 0},{time = 300, a = 180}}},
		{id = -110, loop = 300, op = {-21}, timer = 31,	dst = {{time = 0, x = 0, y = 0, w = 1920, h = 1080, a = 180},{time = 300, a = 0}}},
		{id = "default_optionpanel_option_panel1",	loop = 300, op = {21}, timer = 21,	dst = {{time = 0, x = -1920, y = 0, w = 1920, h = 1080, acc = 2},{time = 300, x = 0}}},
		{id = "default_optionpanel_option_panel1",	loop = 300, op = {-21}, timer = 31,	dst = {{time = 0, x = 0, y = 0, w = 1920, h = 1080, acc = 2},{time = 300, x = -1920}}},

		{id = "option1_text",	loop = 300, op = {21}, timer = 21,	dst = {{time = 0, x = -1920, y = 0, w = 1920, h = 1080, acc = 2},{time = 300, x = 0}}},
		{id = "option1_text",	loop = 300, op = {-21}, timer = 31,	dst = {{time = 0, x = 0, y = 0, w = 1920, h = 1080, acc = 2},{time = 300, x = -1920}}},
--[[ 0.8.4以前
		{id = "default_optionpanel_option_target",	blend = 2,loop = 300,	op = {21}, timer = 21,	dst = {{time = 300, x = 270, y = 235, w = 195, h = 580}}},
--]]
		{id = "default_optionpanel_option_random",	blend = 2,loop = 300,	op = {21}, timer = 21,	dst = {{time = 300, x = 546, y = 98, w = 195, h = 635}}},
		{id = "default_optionpanel_option_gauge",	blend = 2,loop = 300,	op = {21}, timer = 21,	dst = {{time = 300, x = 786, y = 285, w = 195, h = 635}}},
		{id = "default_optionpanel_option_hsfix",	blend = 2,loop = 300,	op = {21}, timer = 21,	dst = {{time = 300, x = 1026, y = 330, w = 195, h = 635}}},
		{id = "default_optionpanel_option_random2",	blend = 2,loop = 300,	op = {21}, timer = 21,	dst = {{time = 300, x = 1267, y = 98, w = 195, h = 635}}},
		{id = "default_optionpanel_option_dp",		blend = 2,loop = 300,	op = {21}, timer = 21,	dst = {{time = 300, x = 916, y = -39, w = 195, h = 635}}},

		{id = -110, loop = 300, op = {22}, timer = 22,	dst = {{time = 0, x = 0, y = 0, w = 1920, h = 1080, a = 0},{time = 300, a = 180},}},
		{id = -110, loop = 300, op = {-22}, timer = 32,	dst = {{time = 0, x = 0, y = 0, w = 1920, h = 1080, a = 180},{time = 300, a = 0}}},
		

		{id = "default_optionpanel_option_panel2",		loop = 300,	op = {22}, timer = 22, dst = {{time = 0, x = -1920, y = 0, w = 1920, h = 1080, acc = 2},{time = 300, x = 0}}},
		{id = "default_optionpanel_option_panel2",		loop = 300,	op = {-22}, timer = 32, dst = {{time = 0, x = 0, y = 0, w = 1920, h = 1080, acc = 2},{time = 300, x = -1920}}},
		{id = "option2_text",		loop = 300,	op = {22}, timer = 22, dst = {{time = 0, x = -1920, y = 0, w = 1920, h = 1080, acc = 2},{time = 300, x = 0}}},
		{id = "option2_text",		loop = 300,	op = {-22}, timer = 32, dst = {{time = 0, x = 0, y = 0, w = 1920, h = 1080, acc = 2},{time = 300, x = -1920}}},

		{id = "default_optionpanel_option_exjudge",		blend = 2,	loop = 300,	op = {22}, timer = 22, dst = {{time = 300, x = 439, y = 188, w = 175, h = 52}}},
		{id = "default_optionpanel_option_constant",	blend = 2,	loop = 300,	op = {22}, timer = 22, dst = {{time = 300, x = 582, y = 776, w = 175, h = 52}}},
		{id = "default_optionpanel_option_judgearea",	blend = 2,	loop = 300,	op = {22}, timer = 22, dst = {{time = 300, x = 727, y = 188, w = 175, h = 52}}},
		{id = "default_optionpanel_option_legacy",		blend = 2,	loop = 300,	op = {22}, timer = 22, dst = {{time = 300, x = 872, y = 776, w = 175, h = 52}}},
		{id = "default_optionpanel_option_marknote",	blend = 2,	loop = 300,	op = {22}, timer = 22, dst = {{time = 300, x = 1017, y = 188, w = 175, h = 52}}},
		{id = "default_optionpanel_option_bpmguide",	blend = 2,	loop = 300,	op = {22}, timer = 22, dst = {{time = 300, x = 1162, y = 776, w = 175, h = 52}}},
		{id = "default_optionpanel_option_nomine",		blend = 2,	loop = 300,	op = {22}, timer = 22, dst = {{time = 300, x = 1306, y = 188, w = 175, h = 52}}},

		{id = -110, loop = 300, op = {23}, timer = 23,	dst = {{time = 0, x = 0, y = 0, w = 1920, h = 1080, a = 0},{time = 300, a = 180}}},
		{id = -110, loop = 300, op = {-23}, timer = 33,	dst = {{time = 0, x = 0, y = 0, w = 1920, h = 1080, a = 180},{time = 300, a = 0}}},
		{id = "default_optionpanel_option_panel3",	loop = 300, op = {23}, timer = 23,	dst = {{time = 0, x = -1920, y = 0, w = 1920, h = 1080, acc = 2},{time = 300, x = 0}}},
		{id = "default_optionpanel_option_panel3",	loop = 300, op = {-23}, timer = 33,	dst = {{time = 0, x = 0, y = 0, w = 1920, h = 1080, acc = 2},{time = 300, x = -1920}}},
		{id = "default_lanecover_button",	loop = 300,	op = {23}, timer = 23,	dst = {{time = 300, x = 1350, y = 830, w = 270, h = 50, a = 0},{time = 300, a = 255}}},
		{id = "default_liftcover_button",	loop = 300,	op = {23}, timer = 23,	dst = {{time = 300, x = 1350, y = 777, w = 270, h = 50, a = 0},{time = 300, a = 255}}},
		{id = "default_hidden_button",		loop = 300,	op = {23}, timer = 23,	dst = {{time = 300, x = 1350, y = 724, w = 270, h = 50, a = 0},{time = 300, a = 255}}},
		{id = "default_hsadjust_button",	loop = 300,	op = {23}, timer = 23,	dst = {{time = 300, x = 1350, y = 671, w = 270, h = 50, a = 0},{time = 300, a = 255}}},
		{id = "option3_text",	loop = 300, op = {23}, timer = 23,	dst = {{time = 0, x = -1920, y = 0, w = 1920, h = 1080, acc = 2},{time = 300, x = 0}}},
		{id = "option3_text",	loop = 300, op = {-23}, timer = 33,	dst = {{time = 0, x = 0, y = 0, w = 1920, h = 1080, acc = 2},{time = 300, x = -1920}}},

		{id = "default_optionpanel_option_gas",		blend = 2,	loop = 300,	op = {23}, timer = 23,	dst = {{time = 300, x = 375, y = 197,  w = 195, h = 635, a = 0},{time = 300, a = 255}}},
		{id = "default_optionpanel_option_bga",		blend = 2,	loop = 300,	op = {23}, timer = 23,	dst = {{time = 300, x = 375, y = 25, w = 195, h = 635, a = 0},{time = 300, a = 255}}},
		{id = "default_optionpanel_option_adjust",	blend = 2,	loop = 300,	op = {23}, timer = 23,	dst = {{time = 300, x = 649, y = 30, w = 195, h = 635, a = 0},{time = 300, a = 255}}},
		{id = "default_optionpanel_duration",		loop = 300,	op = {23}, timer = 23,	dst = {{time = 300, x = 1043, y = 826, w = 14, h = 25, a = 0},{time = 300, a = 255}}},
		{id = "default_optionpanel_duration_green",	loop = 300,	op = {23}, timer = 23,	dst = {{time = 300, x = 1043, y = 780, w = 14, h = 25, a = 0},{time = 300, a = 255}}},
		{id = "default_optionpanel_judgetiming",	loop = 300,	op = {23}, timer = 23,	dst = {{time = 300, x = 1213, y = 172, w = 14, h = 25, a = 0},{time = 300, a = 255}}},

		
		{id = "default_coveroption_button_rect",	op = {23}, dst = {{x = 1350, y = 830, w = 270, h = 50}}, mouseRect = {x = 0, y = 0, w = 270, h = 50}},
		{id = "default_coveroption_button_rect",	op = {23}, dst = {{x = 1350, y = 777, w = 270, h = 50}}, mouseRect = {x = 0, y = 0, w = 270, h = 50}},
		{id = "default_coveroption_button_rect",	op = {23}, dst = {{x = 1350, y = 724, w = 270, h = 50}}, mouseRect = {x = 0, y = 0, w = 270, h = 50}},
		{id = "default_coveroption_button_rect",	op = {23}, dst = {{x = 1350, y = 671, w = 270, h = 50}}, mouseRect = {x = 0, y = 0, w = 270, h = 50}},

		{id = "gas_low_limit", loop = 300,	op = {23}, timer = 23,	dst = {{time = 300, x = 1357, y = 569, w = 195, h = 40, a = 0},{time = 300, a = 255}}},
		{id = "gas_low_limit_rect",	op = {23}, dst = {{x = 1357, y = 570, w = 195, h = 40}}, mouseRect = {x = 0, y = 0, w = 195, h = 50}},

		{id = "ex_note", loop = 300,	op = {22}, timer = 22,	dst = {{time = 300, x = 1443, y = 616, w = 195, h = 50, a = 0},{time = 300, a = 255}}},
		{id = "gas_low_limit_rect",	op = {22}, dst = {{x = 1443, y = 616, w = 195, h = 50}}, mouseRect = {x = 0, y = 0, w = 195, h = 50}},
		{id = "ex_longnote", loop = 300,	op = {22}, timer = 22,	dst = {{time = 300, x = 1443, y = 484, w = 195, h = 50, a = 0},{time = 300, a = 255}}},
		{id = "gas_low_limit_rect",	op = {22}, dst = {{x = 1443, y = 484, w = 195, h = 50}}, mouseRect = {x = 0, y = 0, w = 195, h = 50}},
	}

	for i, v in pairs(parts.text) do
		table.insert(parts.destination, {id = "default_optionpanel_target_" .. i, loop = 300, op = {21}, timer = 21, dst = {{time = 300, x = 276, y = 801 + 1 - (37 * (i - 1)), w = 190, h = 18, a = 230}}})
	end
	
	return parts	
end

return {
	parts = parts,
	load = load
}