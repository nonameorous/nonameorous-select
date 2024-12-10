local parts = {}

local function load()

	parts.source = {
		{id = "src-default-info_parts", path = "select_skinparts/default_info/parts.png"},
		{id = "course_parts", path = "select_skinparts/default_info/course_info_resize.png"},
		{id = "course_parts_on", path = "select_skinparts/default_info/course_info_on_resize.png"},
	}
	
	parts.image = {
		{id = "course_info_notes_panel", src = "course_parts",	x = 0, y = 0, w = 188, h = 74},
		{id = "course_info_option_panel", src = "course_parts",	x = 0, y = 0, w = 622, h = 453},
		{id = "gauge_lr2", src = "course_parts_on",	x = 0, y = 60, w = 219, h = 58},
		{id = "gauge_5keys", src = "course_parts_on",	x = 0, y = 118, w = 219, h = 58},
		{id = "gauge_7keys", src = "course_parts_on",	x = 0, y = 176, w = 219, h = 58},
		{id = "gauge_9keys", src = "course_parts_on",	x = 0, y = 234, w = 219, h = 58},
		{id = "gauge_24keys", src = "course_parts_on",	x = 0, y = 292, w = 219, h = 58},
		{id = "mirror_ok", src = "course_parts_on",	x = 220, y = 58, w = 86, h = 58},
		{id = "random_ok", src = "course_parts_on",	x = 220, y = 116, w = 86, h = 58},
		{id = "no_good", src = "course_parts_on",	x = 394, y = 0, w = 86, h = 58},
		{id = "no_great", src = "course_parts_on",	x = 394, y = 58, w = 86, h = 58},
		{id = "no_speed", src = "course_parts_on",	x = 482, y = 58, w = 86, h = 58},
		{id = "course_ln", src = "course_parts_on",	x = 308, y = 0, w = 86, h = 58},
		{id = "course_cn", src = "course_parts_on",	x = 308, y = 58, w = 86, h = 58},
		{id = "course_hcn", src = "course_parts_on",	x = 308, y = 116, w = 86, h = 58},
	}

	parts.value = {
		{id = "course_total_notes",		src = "number_alte", x = 140, y = 50, w = 170, h = 25, divx = 10, digit = 6, ref = 74, align = 0},	
	}

	parts.text = {
		{id = "default_info_genre",		font = "font_sub", size = 26, align = 2, ref = 13, overflow = 1},
		{id = "default_info_title",		font = "font_Title", size = 72, align = 2, ref = 12, overflow = 1},
		{id = "default_info_artist",	font = "font_sub", size = 26, align = 2, ref = 16, overflow = 1},
		{id = "default_info_course1",	font = "font_songlist", size = 30, align = 0, ref = 150, overflow = 1},
		{id = "default_info_course2",	font = "font_songlist", size = 30, align = 0, ref = 151, overflow = 1},
		{id = "default_info_course3",	font = "font_songlist", size = 30, align = 0, ref = 152, overflow = 1},
		{id = "default_info_course4",	font = "font_songlist", size = 30, align = 0, ref = 153, overflow = 1},
		{id = "default_info_course5",	font = "font_songlist", size = 30, align = 0, ref = 154, overflow = 1},
		{id = "default_info_directory",	font = "font_sub", size = 26, align = 0, ref = 1000, overflow = 1},
		{id = "random_select",		font = "font_Title", size = 72, align = 2, overflow = 1, constantText = "RANDOM SELECT"},
		{id = "random_select_2",		font = "font_sub", size = 26, align = 2, overflow = 1, constantText = "Randomly selects songs from the folder"},
	}


	local option_panel_x = 311
	local option_panel_y = 426


	parts.destination = {}
	

	parts.judgegraph = {{
		id = "default_info_notes_graph",
		type = 0,
		backTexOff = 0,
		delay = 500,
		orderReverse = 0,
		noGap = 0,
	}}
	parts.bpmgraph = {{id = "default_info_bpmgraph"}}


		
	local dst_info = {
	
		-- フォルダ選択時
		{id = "default_info_songs",			op = {1}, dst = {{x = 826, y = 573, w = 120, h = 24}}},
		{id = "default_info_songs_count",	op = {1}, dst = {{x = 936, y = 573, w = 24, h = 24}}},
		
		-- 曲選択時
		{id = -102, stretch = 1, filter = 1, timer = 11, loop = 250,	dst = {{time = 0, x = 420, y = 720-25, w = 300+80, h = 80+80, acc = 2, a = 0},{time = 250, a = 255}}},
		
		{id = "default_info_genre",		filter = 1, timer = 11, loop = 300, op = {192},	dst = {{time = 0, x = 1040, y = 777-25, w = 660, h = 24, acc = 2, a = 0},{time = 300, x = 1080, a = 255}}},
		{id = "default_info_genre",		filter = 1, timer = 11, loop = 300, op = {193},	dst = {{time = 0, x = 1040, y = 777-25, w = 660, h = 24, acc = 2, a = 0},{time = 300, x = 1080, a = 255}}},
		{id = "default_info_title",		filter = 1, timer = 11, loop = 300,				dst = {{time = 0, x = 1120, y = 691-25, w = 660, h = 72, acc = 2, a = 0},{time = 300, x = 1080, a = 255}}},
		{id = "random_select",			filter = 1, timer = 11, loop = 300,	op = {1030},	dst = {{time = 0, x = 1120-150, y = 690-100, w = 724+20, h = 72, acc = 2, a = 0},{time = 300, x = 1125-46, a = 255}}},
		{id = "default_info_artist",	filter = 1, timer = 11, loop = 300,				dst = {{time = 0, x = 1080, y = 690-25, w = 660, h = 24, acc = 2, a = 0},{time = 300, y = 660-25, a = 255}}},
		{id = "random_select_2",		filter = 1, timer = 11, loop = 300,	op = {1030},	dst = {{time = 0, x = 1125-100, y = 690-100, w = 724+20, h = 24, acc = 2, a = 0},{time = 300, y = 660-100, a = 255}}},

		{id = "course_info_option_panel",  op = {3}, dst = {{x = option_panel_x+2+100, y = option_panel_y-6, w = 622, h = 453}}},

		{id = "gauge_lr2",  op = {1010},dst = {{x = option_panel_x+5+100, y = option_panel_y+4, w = 219, h = 58}}},
		{id = "gauge_5keys",  op = {1011}, dst = {{x = option_panel_x+15+100, y = option_panel_y+4, w = 219, h = 58}}},
		{id = "gauge_7keys",  op = {1012}, dst = {{x = option_panel_x+15+100, y = option_panel_y+4, w = 219, h = 58}}},
		{id = "gauge_9keys",  op = {1013}, dst = {{x = option_panel_x+15+100, y = option_panel_y+4, w = 219, h = 58}}},
		{id = "gauge_24keys",  op = {1014}, dst = {{x = option_panel_x+15+100, y = option_panel_y+4, w = 219, h = 58}}},
		{id = "mirror_ok",  op = {1003}, dst = {{x = option_panel_x+240+100, y = option_panel_y+4, w = 86, h = 58}}},
		{id = "random_ok",  op = {1004}, dst = {{x = option_panel_x+240+100, y = option_panel_y+4, w = 86, h = 58}}},
		{id = "no_good",  op = {1006}, dst = {{x = option_panel_x+433+100, y = option_panel_y+4, w = 86, h = 58}}},
		{id = "no_great",  op = {1007}, dst = {{x = option_panel_x+433+100, y = option_panel_y+4, w = 86, h = 58}}},
		{id = "no_speed",  op = {1005}, dst = {{x = option_panel_x+338+100, y = option_panel_y+4, w = 86, h = 58}}},
		{id = "course_ln",  op = {1015}, dst = {{x = option_panel_x+532+100, y = option_panel_y+4, w = 86, h = 58}}},
		{id = "course_cn",  op = {1016}, dst = {{x = option_panel_x+532+100, y = option_panel_y+4, w = 86, h = 58}}},
		{id = "course_hcn",  op = {1017}, dst = {{x = option_panel_x+532+100, y = option_panel_y+4, w = 86, h = 58}}},

		
		--{id = "course_total_notes",	op = {3},	dst = {{x = 330, y = 597, w = 17, h = 25}}},	

		-- コース選択時
--[[
		{id = -110, op = {3}, dst = {{x = 378, y = 467, w = 702, h = 100, a = 127}}},
		
		{id = "default_info_const_gauge_gaugetype",	op = {3}, dst = {{x = 396, y = 542, w = 260, h = 21}}},
		{id = "default_info_const_gauge_lr2",		op = {3}, dst = {{x = 402, y = 475, w = 260, h = 21, a = 95}}},
		{id = "default_info_const_gauge_5keys",		op = {3}, dst = {{x = 402, y = 523, w = 260, h = 21, a = 95}}},
		{id = "default_info_const_gauge_7keys",		op = {3}, dst = {{x = 402, y = 499, w = 260, h = 21, a = 95}}},
		{id = "default_info_const_gauge_9keys",		op = {3}, dst = {{x = 522, y = 523, w = 260, h = 21, a = 95}}},
		{id = "default_info_const_gauge_24keys",	op = {3}, dst = {{x = 522, y = 499, w = 260, h = 21, a = 95}}},
		{id = "default_info_const_option",	op = {3}, dst = {{x = 710, y = 542, w = 260, h = 21}}},
		{id = "default_info_const_mirror",	op = {3}, dst = {{x = 716, y = 523, w = 260, h = 21, a = 95, r = 102}}},
		{id = "default_info_const_random",	op = {3}, dst = {{x = 716, y = 499, w = 260, h = 21, a = 95, b = 102}}},
		{id = "default_info_const_nospeed",	op = {3}, dst = {{x = 716, y = 475, w = 260, h = 21, a = 95, g = 102, b = 102}}},
		{id = "default_info_const_nogood",	op = {3}, dst = {{x = 905, y = 523, w = 260, h = 21, a = 95, g = 102, b = 204}}},
		{id = "default_info_const_nogreat",	op = {3}, dst = {{x = 905, y = 499, w = 260, h = 21, a = 95, g = 204, b = 102}}},
		
		{id = "default_info_const_gauge_lr2",		op = {1010}, dst = {{x = 402, y = 475, w = 260, h = 21}}},
		{id = "default_info_const_gauge_5keys",		op = {1011}, dst = {{x = 402, y = 523, w = 260, h = 21}}},
		{id = "default_info_const_gauge_7keys",		op = {1012}, dst = {{x = 402, y = 499, w = 260, h = 21}}},
		{id = "default_info_const_gauge_9keys",		op = {1013}, dst = {{x = 522, y = 523, w = 260, h = 21}}},
		{id = "default_info_const_gauge_24keys",	op = {1014}, dst = {{x = 522, y = 499, w = 260, h = 21}}},
		{id = "default_info_const_mirror",	op = {1003}, dst = {{x = 716, y = 523, w = 260, h = 21, r = 102}}},
		{id = "default_info_const_random",	op = {1004}, dst = {{x = 716, y = 499, w = 260, h = 21, b = 102}}},
		{id = "default_info_const_nospeed",	op = {1005}, dst = {{x = 716, y = 475, w = 260, h = 21, g = 102, b = 102}}},
		{id = "default_info_const_nogood",	op = {1006}, dst = {{x = 905, y = 523, w = 260, h = 21, g = 102, b = 204}}},
		{id = "default_info_const_nogreat",	op = {1007}, dst = {{x = 905, y = 499, w = 260, h = 21, g = 204, b = 102}}},
]]
		{id = "default_info_course1", filter = 1, timer = 11, loop = 300, dst = {{time = 0, x = 600, y = 763+24-6, w = 490, h = 30, acc = 2, a = 0},{time = 300, x = 525, a = 255}}},
		{id = "default_info_course2", filter = 1, timer = 11, loop = 300, dst = {{time = 0, x = 600, y = 723+7-6, w = 490, h = 30, acc = 2, a = 0},{time = 300, x = 525, a = 255}}},
		{id = "default_info_course3", filter = 1, timer = 11, loop = 300, dst = {{time = 0, x = 600, y = 683-10-6, w = 490, h = 30, acc = 2, a = 0},{time = 300, x = 525, a = 255}}},
		{id = "default_info_course4", filter = 1, timer = 11, loop = 300, dst = {{time = 0, x = 600, y = 643-27-6, w = 490, h = 30, acc = 2, a = 0},{time = 300, x = 525, a = 255}}},
		{id = "default_info_course5", filter = 1, timer = 11, loop = 300, dst = {{time = 0, x = 600, y = 603-44-6, w = 490, h = 30, acc = 2, a = 0},{time = 300, x = 525, a = 255}}},

		{id = "default_info_directory",	filter = 1, timer = 11, loop = 300, op = {1,192},	dst = {{time = 0, x = 325, y = 912, w = 724, h = 24, b = 128, g = 191, a = 255, a = 0},{time = 300, a = 255}}},
		{id = "default_info_directory",	filter = 1, timer = 11, loop = 300, op = {1,193},	dst = {{time = 0, x = 325, y = 912, w = 724, h = 24, b = 128, g = 191, a = 255, a = 0},{time = 300, a = 255}}},
		{id = "default_info_directory",	filter = 1, timer = 11, loop = 300, op = {2,192},	dst = {{time = 0, x = 425, y = 840, w = 724, h = 24, b = 128, g = 191, a = 255, a = 0},{time = 300, a = 255}}},
		{id = "default_info_directory",	filter = 1, timer = 11, loop = 300, op = {2,193},	dst = {{time = 0, x = 425, y = 840, w = 724, h = 24, b = 128, g = 191, a = 255, a = 0},{time = 300, a = 255}}},
		{id = "default_info_directory",	filter = 1, timer = 11, loop = 300, op = {3,192},	dst = {{time = 0, x = 435, y = 850-6, w = 724, h = 24, a = 255, a = 0},{time = 300, a = 255}}},
		{id = "default_info_directory",	filter = 1, timer = 11, loop = 300, op = {3,193},	dst = {{time = 0, x = 425, y = 875, w = 724, h = 24, b = 128, g = 191, a = 255, a = 0},{time = 300, a = 255}}},

		{id = "default_info_directory",	filter = 1, timer = 11, loop = 300, op = {1030},	dst = {{time = 0, x = 325, y = 912, w = 724, h = 24, b = 128, g = 191, a = 255, a = 0},{time = 300, a = 255}}},
	
		-- ランダムセレクト
		{id = "default_info_random",	filter = 1, timer = 11, loop = 300, op = {1030},	dst = {{time = 0, x = 325, y = 912, w = 512, h = 105, acc = 2, a = 0},{time = 300, x = 568, a = 255}}},
	}
	append_all(parts.destination, dst_info)
	
	return parts	
end

return {
	parts = parts,
	load = load
}