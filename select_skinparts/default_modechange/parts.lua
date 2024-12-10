local parts = {}

local function load()
	
	parts.source = {{id = "src-default_modechange_parts", path = "select_skinparts/default_modechange/sort_resize.png"}}

	parts.image = {
		{id = "default_modechange_allkeys",		src = "src-default_modechange_parts", x = 0, y = 0, w = 135, h = 35},
		{id = "default_modechange_5keys",		src = "src-default_modechange_parts", x = 0, y = 35, w = 135, h = 35},
		{id = "default_modechange_7keys",		src = "src-default_modechange_parts", x = 0, y = 70, w = 135, h = 35},
		{id = "default_modechange_10keys",		src = "src-default_modechange_parts", x = 0, y = 105, w = 135, h = 35},
		{id = "default_modechange_14keys",		src = "src-default_modechange_parts", x = 0, y = 140, w = 135, h = 35},
		{id = "default_modechange_9keys",		src = "src-default_modechange_parts", x = 0, y = 175, w = 135, h = 35},
		{id = "default_modechange_24keys",		src = "src-default_modechange_parts", x = 0, y = 210, w = 135, h = 35},
		{id = "default_modechange_24keysDP",	src = "src-default_modechange_parts", x = 0, y = 245, w = 135, h = 35},
		{id = "default_modechange_sortset",		src = "src-default_modechange_parts", x = 135, y = 0, w = 135, h = 280, divy = 8, len = 8, ref = 12, act = 12, click = 2},
		{id = "default_modechange_lnmodeset",	src = "src-default_modechange_parts", x = 270, y = 0, w = 115, h = 105, divy = 3, len = 3, ref = 308, act = 308, click = 2},
		{id = "default_modechange_rect",		src = "src-default_modechange_parts", x = 0, y = 280, w = 135, h = 35},
		{id = "default_modechange_rect_left",		src = "src-default_modechange_parts", x = 135, y = 280, w = 67, h = 35},
		{id = "default_modechange_rect_right",		src = "src-default_modechange_parts", x = 202, y = 280, w = 68, h = 35},
		{id = "default_modechange_rect2",		src = "src-default_modechange_parts", x = 270, y = 105, w = 115, h = 35},
		{id = "default_modechange_rect2_left",		src = "src-default_modechange_parts", x = 270, y = 140, w = 57, h = 35},
		{id = "default_modechange_rect2_right",		src = "src-default_modechange_parts", x = 327, y = 140, w = 58, h = 35},
		{id = ":",		src = "number_alte", x = 138, y = 75, w = 6, h = 11},
		{id = ":red",		src = "number_alte", x = 145, y = 75, w = 3, h = 8},
		{id = "/",		src = "number_alte", x = 150, y = 75, w = 7, h = 16},


	}

	parts.imageset = {
		{id = "default_modechange_modeset", ref = 11, images = {
		"default_modechange_allkeys",
		"default_modechange_5keys",
		"default_modechange_7keys",
		"default_modechange_10keys",
		"default_modechange_14keys",
		"default_modechange_9keys",
		"default_modechange_24keys",
		"default_modechange_24keysDP"},
		act = 11, click = 2
		}
	}
	
	parts.value = {
		{id = "time_year",		src = "number_alte", x = 0, y = 75, w = 110, h = 25, divx = 10, digit = 4, ref = 21, align = 0},
		{id = "time_month",		src = "number_alte", x = 0, y = 75, w = 121, h = 25, divx = 11, digit = 2, ref = 22, align = 0},
		{id = "time_day",		src = "number_alte", x = 0, y = 75, w = 121, h = 25, divx = 11, digit = 2, ref = 23, align = 0},
		{id = "time_hour",		src = "number_alte", x = 0, y = 75, w = 121, h = 25, divx = 11, digit = 2, ref = 24, align = 0},
		{id = "time_minute",	src = "number_alte", x = 0, y = 75, w = 121, h = 25, divx = 11, digit = 2, ref = 25, align = 0},
		{id = "time_second",	src = "number_alte", x = 0, y = 75, w = 121, h = 25, divx = 11, digit = 2, ref = 26, align = 0},
		
	}
	
	parts.destination = {
		{id = "default_modechange_modeset",		dst = {{x = 900, y = 1034, w = 135, h = 35}}},
		{id = "default_modechange_sortset",		dst = {{x = 900, y = 990, w = 135, h = 35}}},
		{id = "default_modechange_lnmodeset",	dst = {{x = 1043, y = 1034, w = 115, h = 35}}},
		
		{id = "default_modechange_rect",		dst = {{x = 900, y = 1034, w = 135, h = 35}}, mouseRect = {x = 0, y = 0, w = 135, h = 35}},
		{id = "default_modechange_rect_left",		dst = {{x = 900, y = 1034, w = 67, h = 35}}, mouseRect = {x = 0, y = 0, w = 67, h = 35}}, --36idou
		{id = "default_modechange_rect_right",		dst = {{x = 967, y = 1034, w = 68, h = 35}}, mouseRect = {x = 0, y = 0, w = 68, h = 35}},
		
		{id = "default_modechange_rect",		dst = {{x = 900, y = 990, w = 135, h = 35}}, mouseRect = {x = 0, y = 0, w = 135, h = 35}},
		{id = "default_modechange_rect_left",		dst = {{x = 900, y = 990, w = 67, h = 35}}, mouseRect = {x = 0, y = 0, w = 67, h = 35}},
		{id = "default_modechange_rect_right",		dst = {{x = 967, y = 990, w = 68, h = 35}}, mouseRect = {x = 0, y = 0, w = 68, h = 35}},

		{id = "default_modechange_rect2",		dst = {{x = 1043, y = 1034, w = 115, h = 35}}, mouseRect = {x = 0, y = 0, w = 115, h = 35}}, --44idou
		{id = "default_modechange_rect2_left",		dst = {{x = 1043, y = 1034, w = 57, h = 35}}, mouseRect = {x = 0, y = 0, w = 57, h = 35}},
		{id = "default_modechange_rect2_right",		dst = {{x = 1100, y = 1034, w = 58, h = 35}}, mouseRect = {x = 0, y = 0, w = 58, h = 35}},
		
		{id = ":",	dst = {{x = 1725-1, y = 1061, w = 6, h = 11}}},
		{id = ":",	dst = {{x = 1760-2, y = 1061, w = 6, h = 11}}},
		
		{id = "/",	dst = {{x = 1851, y = 1059, w = 7, h = 16}}},
		{id = "/",	dst = {{x = 1883, y = 1059, w = 7, h = 16}}},

		{id = "time_year",	dst = {{x = 1806, y = 1050, w = 11, h = 25}}},
		{id = "time_month",	dst = {{x = 1860, y = 1050, w = 11, h = 25}}},
		{id = "time_day",	dst = {{x = 1892, y = 1050, w = 11, h = 25}}},

		{id = "time_hour",	dst = {{x = 1699, y = 1050, w = 11, h = 25}}},
		{id = "time_minute",	dst = {{x = 1733, y = 1050, w = 11, h = 25}}},
		{id = "time_second",	dst = {{x = 1767, y = 1050, w = 11, h = 25}}},


	}
	
	return parts	
end

return {
	parts = parts,
	load = load
}