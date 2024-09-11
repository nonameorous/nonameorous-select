local parts = {}

local function load()

	parts.source = {
		{id = "src-default_irdata_irdata_bg", path = "select_skinparts/default_irdata/ir_data_resize.png"},
		{id = "irdata_loading", path = "select_skinparts/default_irdata/ir_data_loading.png"},
		{id = "score_detail_panel", path = "select_skinparts/default_irdata/score_detail_panel.png"},
	}
	
	parts.image = {
		{id = "irdata_window",	src = "src-default_irdata_irdata_bg",	x = 0, y = 0, w = 400+12, h = 275+9},
		{id = "slash_sen",		src = "number_alte", x = 180, y = 75, w = 12, h = 20},
		{id = "dot_sen", 	src = "number_alte", x = 175, y = 75, w = 5, h = 5},
		{id = "per_sen_big", 	src = "number_alte", x = 200, y = 75, w = 16, h = 19},
		{id = "irdata_loading", src = "irdata_loading", x = 0,y = 0, w = 113, h = 60, divy = 4, cycle = 1600},
		{id = "score_detail_panel",	src = "score_detail_panel",	x = 0, y = 0, w = 400+12, h = 275+9},
	}
	
	parts.value = {
		{id = "default_irdata_clearrate_count",		src = "number_1", x = 0, y = 1, w = 120, h = 20, divx = 10, digit = 3, ref = 227},
		{id = "default_irdata_ir_rank_count",		src = "number_1", x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 4, ref = 179},
		{id = "default_irdata_ir_rank_total_count",	src = "number_1", x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 4, ref = 180},
		{id = "detail_pgreat", src = "number_1",	 x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 6, align = 0, ref = 80},
		{id = "detail_great", src = "number_1",	 x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 6, align = 0, ref = 81},
		{id = "detail_good", src = "number_1",	 x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 6, align = 0, ref = 82},
		{id = "detail_bad", src = "number_1",	 x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 6, align = 0, ref = 83},
		{id = "detail_poor", src = "number_1",	 x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 6, align = 0, ref = 84},
		{id = "detail_epoor", src = "number_1",	 x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 6, align = 0, ref = 420},
		{id = "detail_cb", src = "number_1",	 x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 6, align = 0, ref = 425},
		{id = "detail_fast", src = "number_1",	 x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 6, align = 2, ref = 423},
		{id = "detail_slow", src = "number_1",	 x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 6, align = 2, ref = 424},
	}
	
	local irdata_position = {
	x = 308,
	y = 133
	}

	local pgreat_diff = {
		x = 100,
		y = 204
		}
	
	parts.destination = {
		{id = "irdata_window",				op = {900, 51, 2},	dst = {{x = irdata_position.x-6, y = irdata_position.y, w = 400+12, h = 275+9}}},
		
		{id = "irdata_window",				op = {900, 51, 3},	dst = {{x = irdata_position.x-6, y = irdata_position.y, w = 400+12, h = 275+9}}},

		{id = "score_detail_panel",				op = {901, 2},	dst = {{x = irdata_position.x-6, y = irdata_position.y, w = 400+12, h = 275+9}}},

		{id = "score_detail_panel",				op = {901, 3},	dst = {{x = irdata_position.x-6, y = irdata_position.y, w = 400+12, h = 275+9}}},

		{id = "score_detail_panel",				op = {-51, 2},	dst = {{x = irdata_position.x-6, y = irdata_position.y, w = 400+12, h = 275+9}}},

		{id = "score_detail_panel",				op = {-51, 3},	dst = {{x = irdata_position.x-6, y = irdata_position.y, w = 400+12, h = 275+9}}},

		--{id = "irdata_window",				op = {51, 1030},	dst = {{x = irdata_position.x-6, y = irdata_position.y, w = 400+12, h = 275+9}}},

		{id = "default_irdata_ir_rank_count",			op = {900, 51, 2},	dst = {{x = irdata_position.x + 150, y = irdata_position.y + 26 + 32, w = 12, h = 20}}},
		
		{id = "default_irdata_ir_rank_total_count",		op = {900, 51, 2},	dst = {{x = irdata_position.x + 220, y = irdata_position.y + 26 + 32, w = 12, h = 20}}},
	
		{id = "default_irdata_ir_rank_count",			op = {900, 51, 3},	dst = {{x = irdata_position.x + 150, y = irdata_position.y + 26 + 32, w = 12, h = 20}}},
		
		{id = "default_irdata_ir_rank_total_count",		op = {900, 51, 3},	dst = {{x = irdata_position.x + 220, y = irdata_position.y + 26 + 32, w = 12, h = 20}}},
		
		{id = "default_irdata_clearrate_count",			op = {900, 51, 2},	dst = {{x = irdata_position.x + 162, y = irdata_position.y + 26, w = 12, h = 20}}},

		{id = "default_irdata_clearrate_count",			op = {900, 51, 3},	dst = {{x = irdata_position.x + 162, y = irdata_position.y + 26, w = 12, h = 20}}},
		
		{id = "per_sen_big", 	op = {900, 51, 2},	dst = {{x = irdata_position.x + 202, y = irdata_position.y + 27, w = 16, h = 19}}},
		{id = "per_sen_big", 	op = {900, 51, 3},	dst = {{x = irdata_position.x + 202, y = irdata_position.y + 27, w = 16, h = 19}}},

		{id = "slash_sen",		op = {900, 51, 2},	dst = {{x = irdata_position.x + 205, y = irdata_position.y + 58, w = 12, h = 20}}},
		{id = "slash_sen",		op = {900, 51, 3},	dst = {{x = irdata_position.x + 205, y = irdata_position.y + 58, w = 12, h = 20}}},

		{id = "irdata_loading" ,op = {2,51,606}, dst = {{x = irdata_position.x + 265, y = irdata_position.y + 252, w = 113, h = 15}}},
		{id = "irdata_loading" ,op = {3,51,606}, dst = {{x = irdata_position.x + 265, y = irdata_position.y + 252, w = 113, h = 15}}},

		{id = "detail_pgreat", op = {-51, 2}, dst = {{x = irdata_position.x + pgreat_diff.x, y = irdata_position.y + pgreat_diff.y - 26*0, w = 12, h = 20}}},
		{id = "detail_great", op = {-51, 2}, dst = {{x = irdata_position.x + pgreat_diff.x, y = irdata_position.y + pgreat_diff.y - 26*1, w = 12, h = 20}}},
		{id = "detail_good", op = {-51, 2}, dst = {{x = irdata_position.x + pgreat_diff.x, y = irdata_position.y + pgreat_diff.y - 26*2, w = 12, h = 20}}},
		{id = "detail_bad", op = {-51, 2}, dst = {{x = irdata_position.x + pgreat_diff.x, y = irdata_position.y + pgreat_diff.y - 26*3, w = 12, h = 20}}},
		{id = "detail_poor", op = {-51, 2}, dst = {{x = irdata_position.x + pgreat_diff.x, y = irdata_position.y + pgreat_diff.y - 26*4, w = 12, h = 20}}},
		{id = "detail_epoor", op = {-51, 2}, dst = {{x = irdata_position.x + pgreat_diff.x, y = irdata_position.y + pgreat_diff.y - 26*5, w = 12, h = 20}}},
		{id = "detail_cb", op = {-51, 2}, dst = {{x = irdata_position.x + pgreat_diff.x, y = irdata_position.y + pgreat_diff.y - 26*5 -38, w = 12, h = 20}}},
		{id = "detail_fast", op = {-51, 2}, dst = {{x = irdata_position.x + pgreat_diff.x + 110, y = irdata_position.y + pgreat_diff.y - 23, w = 12, h = 20, r = 0 ,g = 174, b = 255}}},
		{id = "detail_slow", op = {-51, 2}, dst = {{x = irdata_position.x + pgreat_diff.x + 197, y = irdata_position.y + pgreat_diff.y - 23, w = 12, h = 20, r = 255 ,g = 0, b = 84}}},

		{id = "detail_pgreat", op = {-51, 3}, dst = {{x = irdata_position.x + pgreat_diff.x, y = irdata_position.y + pgreat_diff.y - 26*0, w = 12, h = 20}}},
		{id = "detail_great", op = {-51, 3}, dst = {{x = irdata_position.x + pgreat_diff.x, y = irdata_position.y + pgreat_diff.y - 26*1, w = 12, h = 20}}},
		{id = "detail_good", op = {-51, 3}, dst = {{x = irdata_position.x + pgreat_diff.x, y = irdata_position.y + pgreat_diff.y - 26*2, w = 12, h = 20}}},
		{id = "detail_bad", op = {-51, 3}, dst = {{x = irdata_position.x + pgreat_diff.x, y = irdata_position.y + pgreat_diff.y - 26*3, w = 12, h = 20}}},
		{id = "detail_poor", op = {-51, 3}, dst = {{x = irdata_position.x + pgreat_diff.x, y = irdata_position.y + pgreat_diff.y - 26*4, w = 12, h = 20}}},
		{id = "detail_epoor", op = {-51, 3}, dst = {{x = irdata_position.x + pgreat_diff.x, y = irdata_position.y + pgreat_diff.y - 26*5, w = 12, h = 20}}},
		{id = "detail_cb", op = {-51, 3}, dst = {{x = irdata_position.x + pgreat_diff.x, y = irdata_position.y + pgreat_diff.y - 26*5 -38, w = 12, h = 20}}},
		{id = "detail_fast", op = {-51, 3}, dst = {{x = irdata_position.x + pgreat_diff.x + 110, y = irdata_position.y + pgreat_diff.y - 23, w = 12, h = 20, r = 0 ,g = 174, b = 255}}},
		{id = "detail_slow", op = {-51, 3}, dst = {{x = irdata_position.x + pgreat_diff.x + 197, y = irdata_position.y + pgreat_diff.y - 23, w = 12, h = 20, r = 255 ,g = 0, b = 84}}},

		{id = "detail_pgreat", op = {901, 2}, dst = {{x = irdata_position.x + pgreat_diff.x, y = irdata_position.y + 1 + pgreat_diff.y - 26*0, w = 12, h = 20}}},
		{id = "detail_great", op = {901, 2}, dst = {{x = irdata_position.x + pgreat_diff.x, y = irdata_position.y + 1 + pgreat_diff.y - 26*1, w = 12, h = 20}}},
		{id = "detail_good", op = {901, 2}, dst = {{x = irdata_position.x + pgreat_diff.x, y = irdata_position.y + 1 + pgreat_diff.y - 26*2, w = 12, h = 20}}},
		{id = "detail_bad", op = {901, 2}, dst = {{x = irdata_position.x + pgreat_diff.x, y = irdata_position.y + 1 + pgreat_diff.y - 26*3, w = 12, h = 20}}},
		{id = "detail_poor", op = {901, 2}, dst = {{x = irdata_position.x + pgreat_diff.x, y = irdata_position.y + 1 + pgreat_diff.y - 26*4, w = 12, h = 20}}},
		{id = "detail_epoor", op = {901, 2}, dst = {{x = irdata_position.x + pgreat_diff.x, y = irdata_position.y + 1 + pgreat_diff.y - 26*5, w = 12, h = 20}}},
		{id = "detail_cb", op = {901, 2}, dst = {{x = irdata_position.x + pgreat_diff.x, y = irdata_position.y + 1 + pgreat_diff.y - 26*5 -38, w = 12, h = 20}}},
		{id = "detail_fast", op = {901, 2}, dst = {{x = irdata_position.x + pgreat_diff.x + 110, y = irdata_position.y + pgreat_diff.y - 23, w = 12, h = 20, r = 0 ,g = 174, b = 255}}},
		{id = "detail_slow", op = {901, 2}, dst = {{x = irdata_position.x + pgreat_diff.x + 197, y = irdata_position.y + pgreat_diff.y - 23, w = 12, h = 20, r = 255 ,g = 0, b = 84}}},

		{id = "detail_pgreat", op = {901, 3}, dst = {{x = irdata_position.x + pgreat_diff.x, y = irdata_position.y + pgreat_diff.y - 26*0, w = 12, h = 20}}},
		{id = "detail_great", op = {901, 3}, dst = {{x = irdata_position.x + pgreat_diff.x, y = irdata_position.y + pgreat_diff.y - 26*1, w = 12, h = 20}}},
		{id = "detail_good", op = {901, 3}, dst = {{x = irdata_position.x + pgreat_diff.x, y = irdata_position.y + pgreat_diff.y - 26*2, w = 12, h = 20}}},
		{id = "detail_bad", op = {901, 3}, dst = {{x = irdata_position.x + pgreat_diff.x, y = irdata_position.y + pgreat_diff.y - 26*3, w = 12, h = 20}}},
		{id = "detail_poor", op = {901, 3}, dst = {{x = irdata_position.x + pgreat_diff.x, y = irdata_position.y + pgreat_diff.y - 26*4, w = 12, h = 20}}},
		{id = "detail_epoor", op = {901, 3}, dst = {{x = irdata_position.x + pgreat_diff.x, y = irdata_position.y + pgreat_diff.y - 26*5, w = 12, h = 20}}},
		{id = "detail_cb", op = {901, 3}, dst = {{x = irdata_position.x + pgreat_diff.x, y = irdata_position.y + pgreat_diff.y - 26*5 -38, w = 12, h = 20}}},
		{id = "detail_fast", op = {901, 3}, dst = {{x = irdata_position.x + pgreat_diff.x + 110, y = irdata_position.y + pgreat_diff.y - 23, w = 12, h = 20, r = 0 ,g = 174, b = 255}}},
		{id = "detail_slow", op = {901, 3}, dst = {{x = irdata_position.x + pgreat_diff.x + 197, y = irdata_position.y + pgreat_diff.y - 23, w = 12, h = 20, r = 255 ,g = 0, b = 84}}},

		{id = "default_irdata_clearrate_count",			op = {901, 51, 2},	dst = {{x = irdata_position.x + 162 + 95, y = irdata_position.y + 26 + 10, w = 12, h = 20}}},
		{id = "default_irdata_clearrate_count",			op = {901, 51, 3},	dst = {{x = irdata_position.x + 162 + 95, y = irdata_position.y + 26 + 10, w = 12, h = 20}}},
		
		{id = "per_sen_big", 	op = {901, 51, 2},	dst = {{x = irdata_position.x + 202 + 95, y = irdata_position.y + 27 + 10, w = 16, h = 19}}},
		{id = "per_sen_big", 	op = {901, 51, 3},	dst = {{x = irdata_position.x + 202 + 95, y = irdata_position.y + 27 + 10, w = 16, h = 19}}},

		{id = "default_irdata_ir_rank_count",			op = {901, 51, 2},	dst = {{x = irdata_position.x + 150 + 76, y = irdata_position.y + 26 + 32 + 50, w = 12, h = 20}}},
		{id = "default_irdata_ir_rank_total_count",		op = {901, 51, 2},	dst = {{x = irdata_position.x + 220 + 76, y = irdata_position.y + 26 + 32 + 50, w = 12, h = 20}}},
		{id = "default_irdata_ir_rank_count",			op = {901, 51, 3},	dst = {{x = irdata_position.x + 150 + 76, y = irdata_position.y + 26 + 32 + 50, w = 12, h = 20}}},
		{id = "default_irdata_ir_rank_total_count",		op = {901, 51, 3},	dst = {{x = irdata_position.x + 220 + 76, y = irdata_position.y + 26 + 32 + 50, w = 12, h = 20}}},

		{id = "slash_sen",		op = {901, 51, 2},	dst = {{x = irdata_position.x + 205 + 76, y = irdata_position.y + 58 + 50, w = 12, h = 20}}},
		{id = "slash_sen",		op = {901, 51, 3},	dst = {{x = irdata_position.x + 205 + 76, y = irdata_position.y + 58 + 50, w = 12, h = 20}}},
	}
	
	return parts
end

return {
	parts = parts,
	load = load
}