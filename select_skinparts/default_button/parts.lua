local parts = {}

local function load()
	
	local src1_id = "src-default_button_parts"
	
	parts.source = {
		{id = "src1_id", path = "select_skinparts/default_button/play_button_resize.png"},
		{id = "button_frame", path = "select_skinparts/default_button/play_button_window.png"}
	}

	parts.image = {
		{id = "default_button_parts",		src = "button_frame", x = 0, y = 0, w = 384, h = 392},
		{id = "default_button_autoplay",	src = "src1_id", x = 75, y = 180, w = 47, h = 36, act = 16},
		{id = "default_button_practice",	src = "src1_id", x = 30, y = 180, w = 41, h = 32, act = 315},
		{id = "default_button_play",		src = "src1_id", x = 0, y = 180, w = 26, h = 32, act = 15},
		{id = "default_button_replay",		src = "src1_id", x = 125, y = 180, w = 32, h = 39, act = 19},
		{id = "default_button_replay2",		src = "src1_id", x = 160, y = 180, w = 32, h = 39, act = 316},
		{id = "default_button_replay3",		src = "src1_id", x = 195, y = 180, w = 32, h = 39, act = 317},
		{id = "default_button_replay4",		src = "src1_id", x = 230, y = 180, w = 32, h = 39, act = 318},

		{id = "default_button_autoplay_rect",	src = "src1_id", x = 75, y = 180, w = 47, h = 36},
		{id = "default_button_practice_rect",	src = "src1_id", x = 30, y = 180, w = 41, h = 32},
		{id = "default_button_play_rect",		src = "src1_id", x = 0, y = 180, w = 26, h = 32},
		{id = "default_button_replay_rect",		src = "src1_id", x = 125, y = 180, w = 32, h = 39},
		{id = "default_button_replay2_rect",		src = "src1_id", x = 160, y = 180, w = 32, h = 39},
		{id = "default_button_replay3_rect",		src = "src1_id", x = 195, y = 180, w = 32, h = 39},
		{id = "default_button_replay4_rect",		src = "src1_id", x = 230, y = 180, w = 32, h = 39},
	}
	
	parts.destination = {
		--{id = "default_button_parts",						dst = {{x = 0, y = 463, w = 379, h = 113}}},
		{id = "default_button_parts", op = {2},				dst = {{x = 15, y = 480, w = 384, h = 392}}},
		{id = "default_button_parts", op = {3},				dst = {{x = 15, y = 480, w = 384, h = 392}}},

		{id = "default_button_replay",	op = {1205},		dst = {{time = 0,	x = 47, y = 514, w = 32, h = 39, a = 255},{time = 150, a = 50},{time = 300, a = 255}}},
		{id = "default_button_replay",	op = {197,-1205},	dst = {{time = 0,	x = 47, y = 514, w = 32, h = 39}}},
		{id = "default_button_replay",	op = {2,-197},	dst = {{time = 0, x = 47, y = 514, w = 32, h = 39, a = 64}}},
		{id = "default_button_replay",	op = {3,-197},	dst = {{time = 0, x = 47, y = 514, w = 32, h = 39, a = 64}}},
		{id = "default_button_replay2", op = {1206},		dst = {{time = 0,	x = 47+51, y = 514, w = 32, h = 39, a = 255},{time = 150, a = 50},{time = 300, a = 255}}},
		{id = "default_button_replay2", op = {1197,-1206},	dst = {{time = 0,	x = 47+51, y = 514, w = 32, h = 39}}},
		{id = "default_button_replay2", op = {2,-1197},	dst = {{time = 0,	x = 47+51, y = 514, w = 32, h = 39, a = 64}}},
		{id = "default_button_replay2", op = {3,-1197},	dst = {{time = 0,	x = 47+51, y = 514, w = 32, h = 39, a = 64}}},
		{id = "default_button_replay3", op = {1207},		dst = {{time = 0,	x = 47+102, y = 514, w = 32, h = 39, a = 255},{time = 150, a = 50},{time = 300, a = 255}}},
		{id = "default_button_replay3", op = {1200,-1207},	dst = {{time = 0,	x = 47+102, y = 514, w = 32, h = 39}}},
		{id = "default_button_replay3", op = {2,-1200},	dst = {{time = 0,	x = 47+102, y = 514, w = 32, h = 39, a = 64}}},
		{id = "default_button_replay3", op = {3,-1200},	dst = {{time = 0,	x = 47+102, y = 514, w = 32, h = 39, a = 64}}},
		{id = "default_button_replay4", op = {1208},		dst = {{time = 0,	x = 47+153, y = 514, w = 32, h = 39, a = 255},{time = 150, a = 50},{time = 300, a = 255}}},
		{id = "default_button_replay4", op = {1203,-1208},	dst = {{time = 0,	x = 47+153, y = 514, w = 32, h = 39}}},
		{id = "default_button_replay4", op = {2,-1203},	dst = {{time = 0,	x = 47+153, y = 514, w = 32, h = 39, a = 64}}},
		{id = "default_button_replay4", op = {3,-1203},	dst = {{time = 0,	x = 47+153, y = 514, w = 32, h = 39, a = 64}}},
		{id = "default_button_replay_rect",	op = {1205},		dst = {{time = 0,	x = 47, y = 514, w = 32, h = 39, a = 255, r = 60, b = 232, g = 243},{time = 150, a = 50},{time = 300, a = 255}}, mouseRect = {x = 0, y = 0, w = 32, h = 39}},
		{id = "default_button_replay_rect",	op = {197,-1205},	dst = {{time = 0,	x = 47, y = 514, w = 32, h = 39, r = 60, b = 232, g = 243}}, mouseRect = {x = 0, y = 0, w = 32, h = 39}},
		{id = "default_button_replay2_rect", op = {1206},		dst = {{time = 0,	x = 47+51, y = 514, w = 32, h = 39, a = 255, r = 60, b = 232, g = 243},{time = 150, a = 50},{time = 300, a = 255}}, mouseRect = {x = 0, y = 0, w = 32, h = 39}},
		{id = "default_button_replay2_rect", op = {1197,-1206},	dst = {{			x = 47+51, y = 514, w = 32, h = 39, r = 60, b = 232, g = 243}}, mouseRect = {x = 0, y = 0, w = 32, h = 39}},
		{id = "default_button_replay3_rect", op = {1207},		dst = {{time = 0,	x = 47+102, y = 514, w = 32, h = 39, a = 255, r = 60, b = 232, g = 243},{time = 150, a = 50},{time = 300, a = 255}}, mouseRect = {x = 0, y = 0, w = 32, h = 39}},
		{id = "default_button_replay3_rect", op = {1200,-1207},	dst = {{			x = 47+102, y = 514, w = 32, h = 39, r = 60, b = 232, g = 243}}, mouseRect = {x = 0, y = 0, w = 32, h = 39}},
		{id = "default_button_replay4_rect", op = {1208},		dst = {{time = 0,	x = 47+153, y = 514, w = 32, h = 39, a = 255, r = 60, b = 232, g = 243},{time = 150, a = 50},{time = 300, a = 255}}, mouseRect = {x = 0, y = 0, w = 32, h = 39}},
		{id = "default_button_replay4_rect", op = {1203,-1208},	dst = {{			x = 47+153, y = 514, w = 32, h = 39, r = 60, b = 232, g = 243}}, mouseRect = {x = 0, y = 0, w = 32, h = 39}},
	}
	
	return parts	
end

return {
	parts = parts,
	load = load
}