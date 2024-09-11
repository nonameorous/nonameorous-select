local parts = {}

parts.property = {
	{name = "Display information", item = {
		{name = "IR DATA（Shows Judge Detail if offline）",		op = 900},
		{name = "JUDGE DETAIL",		op = 901},
	},def = "IR DATA（Shows Judge Detail if offline）"},
}

local function load()

	parts.source = {
		{id = "src-default_ranking_ranking_bg", path = "select_skinparts/default_ranking/ranking_bg.png"},
		{id = "src-default_ranking_num", path = "select_skinparts/default_ranking/num.png"},
	}
	
	parts.value = {
		{id = "default_ranking_score_count_1", src = "number_1", x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 6, align = 0, ref = 380},
		{id = "default_ranking_score_count_2", src = "number_1", x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 6, align = 0, ref = 381},
		{id = "default_ranking_score_count_3", src = "number_1", x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 6, align = 0, ref = 382},
		{id = "default_ranking_score_count_4", src = "number_1", x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 6, align = 0, ref = 383},
		{id = "default_ranking_score_count_5", src = "number_1", x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 6, align = 0, ref = 384},

		{id = "default_ranking_scorerate_count_1",			src = "number_1_small", x = 0, y = 0, w = 100, h = 17, divx = 10, digit = 3, value = function()
			local score = main_state.number(380)
			local maxscore = main_state.number(74) * 2
			local scorerate = 0
			if score > 0 and maxscore > 0 then scorerate = math.floor(score / maxscore * 100)  end
			return scorerate
		end},
		{id = "default_ranking_scorerate_dot_count_1",		src = "number_1_small", x = 0, y = 34, w = 110, h = 17, divx = 11, digit = 2, value = function()
			local score = main_state.number(380)
			local maxscore = main_state.number(74) * 2
			local scorerate_dot = 0
			if score > 0 and maxscore > 0 then scorerate_dot = ((score / maxscore) * 10000) % 100  end
			return scorerate_dot
		end},
		{id = "default_ranking_scorerate_count_2",			src = "number_1_small", x = 0, y = 0, w = 100, h = 17, divx = 10, digit = 3, value = function()
			local score = main_state.number(381)
			local maxscore = main_state.number(74) * 2
			local scorerate = 0
			if score > 0 and maxscore > 0 then scorerate = math.floor(score / maxscore * 100)  end
			return scorerate
		end},
		{id = "default_ranking_scorerate_dot_count_2",		src = "number_1_small", x = 0, y = 34, w = 110, h = 17, divx = 11, digit = 2, value = function()
			local score = main_state.number(381)
			local maxscore = main_state.number(74) * 2
			local scorerate_dot = 0
			if score > 0 and maxscore > 0 then scorerate_dot = ((score / maxscore) * 10000) % 100  end
			return scorerate_dot
		end},
		{id = "default_ranking_scorerate_count_3",			src = "number_1_small", x = 0, y = 0, w = 100, h = 17, divx = 10, digit = 3, value = function()
			local score = main_state.number(382)
			local maxscore = main_state.number(74) * 2
			local scorerate = 0
			if score > 0 and maxscore > 0 then scorerate = math.floor(score / maxscore * 100)  end
			return scorerate
		end},
		{id = "default_ranking_scorerate_dot_count_3",		src = "number_1_small", x = 0, y = 34, w = 110, h = 17, divx = 11, digit = 2, value = function()
			local score = main_state.number(382)
			local maxscore = main_state.number(74) * 2
			local scorerate_dot = 0
			if score > 0 and maxscore > 0 then scorerate_dot = ((score / maxscore) * 10000) % 100  end
			return scorerate_dot
		end},
		{id = "default_ranking_scorerate_count_4",			src = "number_1_small", x = 0, y = 0, w = 100, h = 17, divx = 10, digit = 3, value = function()
			local score = main_state.number(383)
			local maxscore = main_state.number(74) * 2
			local scorerate = 0
			if score > 0 and maxscore > 0 then scorerate = math.floor(score / maxscore * 100)  end
			return scorerate
		end},
		{id = "default_ranking_scorerate_dot_count_4",		src = "number_1_small", x = 0, y = 34, w = 110, h = 17, divx = 11, digit = 2, value = function()
			local score = main_state.number(383)
			local maxscore = main_state.number(74) * 2
			local scorerate_dot = 0
			if score > 0 and maxscore > 0 then scorerate_dot = ((score / maxscore) * 10000) % 100  end
			return scorerate_dot
		end},
		{id = "default_ranking_scorerate_count_5",			src = "number_1_small", x = 0, y = 0, w = 100, h = 17, divx = 10, digit = 3, value = function()
			local score = main_state.number(384)
			local maxscore = main_state.number(74) * 2
			local scorerate = 0
			if score > 0 and maxscore > 0 then scorerate = math.floor(score / maxscore * 100)  end
			return scorerate
		end},
		{id = "default_ranking_scorerate_dot_count_5",		src = "number_1_small", x = 0, y = 34, w = 110, h = 17, divx = 11, digit = 2, value = function()
			local score = main_state.number(384)
			local maxscore = main_state.number(74) * 2
			local scorerate_dot = 0
			if score > 0 and maxscore > 0 then scorerate_dot = ((score / maxscore) * 10000) % 100  end
			return scorerate_dot
		end},
	}
	
	parts.image = {
		{id = "per_sen", 	src = "number_alte", x = 160, y = 75, w = 14, h = 16},
		{id = "dot_sen", 	src = "number_alte", x = 175, y = 75, w = 5, h = 5},
	}

	parts.text = {
		{id = "default_ranking_name_1",		font = "font_sub_small", size = 18, align = 2, ref = 120, overflow = 1},
		{id = "default_ranking_name_2",		font = "font_sub_small", size = 18, align = 2, ref = 121, overflow = 1},
		{id = "default_ranking_name_3",		font = "font_sub_small", size = 18, align = 2, ref = 122, overflow = 1},
		{id = "default_ranking_name_4",		font = "font_sub_small", size = 18, align = 2, ref = 123, overflow = 1},
		{id = "default_ranking_name_5",		font = "font_sub_small", size = 18, align = 2, ref = 124, overflow = 1},
	}
	
	local irdata_position = {
		x = 308,
		y = 133
		}

	local pos = {x = irdata_position.x + 202, y = irdata_position.y + 208}
	local pos2 = {x = irdata_position.x + 222}
	local y_space = 29
	local scorerate_x_diff = 136
	
	parts.destination = {
		{id = "default_ranking_name_1",					op = {900, 51, 2},	dst = {{x = pos.x, y = pos.y + 8, w = 130, h = 18}}},
		{id = "default_ranking_name_2",					op = {900, 51, 2},	dst = {{x = pos.x, y = pos.y + 8 - 29, w = 130, h = 18}}},
		{id = "default_ranking_name_3",					op = {900, 51, 2},	dst = {{x = pos.x, y = pos.y + 8 - 58, w = 130, h = 18}}},
		{id = "default_ranking_name_4",					op = {900, 51, 2},	dst = {{x = pos.x, y = pos.y + 8 - 87, w = 130, h = 18}}},
		{id = "default_ranking_name_5",					op = {900, 51, 2},	dst = {{x = pos.x, y = pos.y + 8 - 116, w = 130, h = 18}}},
		{id = "default_ranking_score_count_1",			op = {900, 51, 2},	dst = {{x = pos2.x, y = pos.y - 0, w = 12, h = 20}}},
		{id = "default_ranking_score_count_2",			op = {900, 51, 2},	dst = {{x = pos2.x, y = pos.y - 29, w = 12, h = 20}}},
		{id = "default_ranking_score_count_3",			op = {900, 51, 2},	dst = {{x = pos2.x, y = pos.y - 58, w = 12, h = 20}}},
		{id = "default_ranking_score_count_4",			op = {900, 51, 2},	dst = {{x = pos2.x, y = pos.y - 87, w = 12, h = 20}}},
		{id = "default_ranking_score_count_5",			op = {900, 51, 2},	dst = {{x = pos2.x, y = pos.y - 116, w = 12, h = 20}}},

		{id = "default_ranking_name_1",					op = {900, 51, 3},	dst = {{x = pos.x, y = pos.y + 8, w = 130, h = 18}}},
		{id = "default_ranking_name_2",					op = {900, 51, 3},	dst = {{x = pos.x, y = pos.y + 8 - 29, w = 130, h = 18}}},
		{id = "default_ranking_name_3",					op = {900, 51, 3},	dst = {{x = pos.x, y = pos.y + 8 - 58, w = 130, h = 18}}},
		{id = "default_ranking_name_4",					op = {900, 51, 3},	dst = {{x = pos.x, y = pos.y + 8 - 87, w = 130, h = 18}}},
		{id = "default_ranking_name_5",					op = {900, 51, 3},	dst = {{x = pos.x, y = pos.y + 8 - 116, w = 130, h = 18}}},
		{id = "default_ranking_score_count_1",			op = {900, 51, 3},	dst = {{x = pos2.x, y = pos.y - 0, w = 12, h = 20}}},
		{id = "default_ranking_score_count_2",			op = {900, 51, 3},	dst = {{x = pos2.x, y = pos.y - 29, w = 12, h = 20}}},
		{id = "default_ranking_score_count_3",			op = {900, 51, 3},	dst = {{x = pos2.x, y = pos.y - 58, w = 12, h = 20}}},
		{id = "default_ranking_score_count_4",			op = {900, 51, 3},	dst = {{x = pos2.x, y = pos.y - 87, w = 12, h = 20}}},
		{id = "default_ranking_score_count_5",			op = {900, 51, 3},	dst = {{x = pos2.x, y = pos.y - 116, w = 12, h = 20}}},
		
		{id = "default_ranking_scorerate_count_1", op = {900, 2,51,-606},	dst = {{x = pos.x-35+scorerate_x_diff, y = pos.y-29*0, w = 10, h = 17}}},
		{id = "default_ranking_scorerate_dot_count_1", op = {900, 2,51,-606},	dst = {{x = pos.x+scorerate_x_diff, y = pos.y-29*0, w = 10, h = 17}}},
		{id = "per_sen",	op = {900, 2,51,-606},	dst = {{x = pos.x+22+scorerate_x_diff, y = pos.y+1-29*0, w = 14, h = 16}}},
		{id = "dot_sen",	op = {900, 2,51,-606},	dst = {{x = pos.x-5+scorerate_x_diff, y = pos.y-29*0, w = 5, h = 5}}},
		{id = "default_ranking_scorerate_count_2", op = {900, 2,51,-606},	dst = {{x = pos.x-35+scorerate_x_diff, y = pos.y-29*1, w = 10, h = 17}}},
		{id = "default_ranking_scorerate_dot_count_2", op = {900, 2,51,-606},	dst = {{x = pos.x+scorerate_x_diff, y = pos.y-29*1, w = 10, h = 17}}},
		{id = "per_sen",	op = {900, 2,51,-606},	dst = {{x = pos.x+22+scorerate_x_diff, y = pos.y+1-29*1, w = 14, h = 16}}},
		{id = "dot_sen",	op = {900, 2,51,-606},	dst = {{x = pos.x-5+scorerate_x_diff, y = pos.y-29*1, w = 5, h = 5}}},
		{id = "default_ranking_scorerate_count_3", op = {900, 2,51,-606},	dst = {{x = pos.x-35+scorerate_x_diff, y = pos.y-29*2, w = 10, h = 17}}},
		{id = "default_ranking_scorerate_dot_count_3", op = {900, 2,51,-606},	dst = {{x = pos.x+scorerate_x_diff, y = pos.y-29*2, w = 10, h = 17}}},
		{id = "per_sen",	op = {900, 2,51,-606},	dst = {{x = pos.x+22+scorerate_x_diff, y = pos.y+1-29*2, w = 14, h = 16}}},
		{id = "dot_sen",	op = {900, 2,51,-606},	dst = {{x = pos.x-5+scorerate_x_diff, y = pos.y-29*2, w = 5, h = 5}}},
		{id = "default_ranking_scorerate_count_4", op = {900, 2,51,-606},	dst = {{x = pos.x-35+scorerate_x_diff, y = pos.y-29*3, w = 10, h = 17}}},
		{id = "default_ranking_scorerate_dot_count_4", op = {900, 2,51,-606},	dst = {{x = pos.x+scorerate_x_diff, y = pos.y-29*3, w = 10, h = 17}}},
		{id = "per_sen",	op = {900, 2,51,-606},	dst = {{x = pos.x+22+scorerate_x_diff, y = pos.y+1-29*3, w = 14, h = 16}}},
		{id = "dot_sen",	op = {900, 2,51,-606},	dst = {{x = pos.x-5+scorerate_x_diff, y = pos.y-29*3, w = 5, h = 5}}},
		{id = "default_ranking_scorerate_count_5", op = {900, 2,51,-606},	dst = {{x = pos.x-35+scorerate_x_diff, y = pos.y-29*4, w = 10, h = 17}}},
		{id = "default_ranking_scorerate_dot_count_5", op = {900, 2,51,-606},	dst = {{x = pos.x+scorerate_x_diff, y = pos.y-29*4, w = 10, h = 17}}},
		{id = "per_sen",	op = {900, 2,51,-606},	dst = {{x = pos.x+22+scorerate_x_diff, y = pos.y+1-29*4, w = 14, h = 16}}},
		{id = "dot_sen",	op = {900, 2,51,-606},	dst = {{x = pos.x-5+scorerate_x_diff, y = pos.y-29*4, w = 5, h = 5}}},

		{id = "default_ranking_scorerate_count_1", op = {900, 3,51,-606},	dst = {{x = pos.x-35+scorerate_x_diff, y = pos.y-29*0, w = 10, h = 17}}},
		{id = "default_ranking_scorerate_dot_count_1", op = {900, 3,51,-606},	dst = {{x = pos.x+scorerate_x_diff, y = pos.y-29*0, w = 10, h = 17}}},
		{id = "per_sen",	op = {900, 3,51,-606},	dst = {{x = pos.x+22+scorerate_x_diff, y = pos.y+1-29*0, w = 14, h = 16}}},
		{id = "dot_sen",	op = {900, 3,51,-606},	dst = {{x = pos.x-5+scorerate_x_diff, y = pos.y-29*0, w = 5, h = 5}}},
		{id = "default_ranking_scorerate_count_2", op = {900, 3,51,-606},	dst = {{x = pos.x-35+scorerate_x_diff, y = pos.y-29*1, w = 10, h = 17}}},
		{id = "default_ranking_scorerate_dot_count_2", op = {900, 3,51,-606},	dst = {{x = pos.x+scorerate_x_diff, y = pos.y-29*1, w = 10, h = 17}}},
		{id = "per_sen",	op = {900, 3,51,-606},	dst = {{x = pos.x+22+scorerate_x_diff, y = pos.y+1-29*1, w = 14, h = 16}}},
		{id = "dot_sen",	op = {900, 3,51,-606},	dst = {{x = pos.x-5+scorerate_x_diff, y = pos.y-29*1, w = 5, h = 5}}},
		{id = "default_ranking_scorerate_count_3", op = {900, 3,51,-606},	dst = {{x = pos.x-35+scorerate_x_diff, y = pos.y-29*2, w = 10, h = 17}}},
		{id = "default_ranking_scorerate_dot_count_3", op = {900, 3,51,-606},	dst = {{x = pos.x+scorerate_x_diff, y = pos.y-29*2, w = 10, h = 17}}},
		{id = "per_sen",	op = {900, 3,51,-606},	dst = {{x = pos.x+22+scorerate_x_diff, y = pos.y+1-29*2, w = 14, h = 16}}},
		{id = "dot_sen",	op = {900, 3,51,-606},	dst = {{x = pos.x-5+scorerate_x_diff, y = pos.y-29*2, w = 5, h = 5}}},
		{id = "default_ranking_scorerate_count_4", op = {900, 3,51,-606},	dst = {{x = pos.x-35+scorerate_x_diff, y = pos.y-29*3, w = 10, h = 17}}},
		{id = "default_ranking_scorerate_dot_count_4", op = {900, 3,51,-606},	dst = {{x = pos.x+scorerate_x_diff, y = pos.y-29*3, w = 10, h = 17}}},
		{id = "per_sen",	op = {900, 3,51,-606},	dst = {{x = pos.x+22+scorerate_x_diff, y = pos.y+1-29*3, w = 14, h = 16}}},
		{id = "dot_sen",	op = {900, 3,51,-606},	dst = {{x = pos.x-5+scorerate_x_diff, y = pos.y-29*3, w = 5, h = 5}}},
		{id = "default_ranking_scorerate_count_5", op = {900, 3,51,-606},	dst = {{x = pos.x-35+scorerate_x_diff, y = pos.y-29*4, w = 10, h = 17}}},
		{id = "default_ranking_scorerate_dot_count_5", op = {900, 3,51,-606},	dst = {{x = pos.x+scorerate_x_diff, y = pos.y-29*4, w = 10, h = 17}}},
		{id = "per_sen",	op = {900, 3,51,-606},	dst = {{x = pos.x+22+scorerate_x_diff, y = pos.y+1-29*4, w = 14, h = 16}}},
		{id = "dot_sen",	op = {900, 3,51,-606},	dst = {{x = pos.x-5+scorerate_x_diff, y = pos.y-29*4, w = 5, h = 5}}},
	}
	
	return parts
end

return {
	parts = parts,
	load = load
}