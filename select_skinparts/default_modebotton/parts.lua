local parts = {}

local function load()
	local flg = false
	local flg2 = false
	local flg3 = false


	help_number = 1

	local timer = {
		on	= get_customTimer_id(),
		off	= get_customTimer_id()
	}

	local timer2 = {
		on	= get_customTimer_id(),
		off	= get_customTimer_id()
	}

	local timer3 = {
		on	= get_customTimer_id(),
		off	= get_customTimer_id()
	}

	local function help_open()
		flg = not flg
		if flg then
			main_state.set_timer(timer.on, main_state.time())
			main_state.set_timer(timer.off, main_state.timer_off_value)
			if flg3 then
				flg3 = false
				main_state.set_timer(timer3.off, main_state.time())
				main_state.set_timer(timer3.on, main_state.timer_off_value)
			end
			if flg2 then
				flg2 = false
				main_state.set_timer(timer2.off, main_state.time())
				main_state.set_timer(timer2.on, main_state.timer_off_value)
			end
		else
			main_state.set_timer(timer.off, main_state.time())
			main_state.set_timer(timer.on, main_state.timer_off_value)
		end
	end

	local function settings_open()
		flg2 = not flg2
		if flg2 then
			main_state.set_timer(timer2.on, main_state.time())
			main_state.set_timer(timer2.off, main_state.timer_off_value)
			if flg then
				flg = false
				main_state.set_timer(timer.off, main_state.time())
				main_state.set_timer(timer.on, main_state.timer_off_value)
			end
			if flg3 then
				flg3 = false
				main_state.set_timer(timer3.off, main_state.time())
				main_state.set_timer(timer3.on, main_state.timer_off_value)
			end
		else
			main_state.set_timer(timer2.off, main_state.time())
			main_state.set_timer(timer2.on, main_state.timer_off_value)
		end
	end

	local function score_detail_open()
		flg3 = not flg3
		if flg3 then
			main_state.set_timer(timer3.on, main_state.time())
			main_state.set_timer(timer3.off, main_state.timer_off_value)
			if flg then
				flg = false
				main_state.set_timer(timer.off, main_state.time())
				main_state.set_timer(timer.on, main_state.timer_off_value)
			end
			if flg2 then
				flg2 = false
				main_state.set_timer(timer2.off, main_state.time())
				main_state.set_timer(timer2.on, main_state.timer_off_value)
			end
		else
			main_state.set_timer(timer3.off, main_state.time())
			main_state.set_timer(timer3.on, main_state.timer_off_value)
		end
	end

	local function help_1()
		help_number = 1
	end

	local function help_2()
		help_number = 2
	end

	local function help_3()
		help_number = 3
	end

	local function help_4()
		help_number = 4
	end

	local function help_5()
		help_number = 5
	end

	local function help_6()
		help_number = 6
	end

	local function help_7()
		help_number = 7
	end

	local function help_8()
		help_number = 8
	end

	local function help_9()
		help_number = 9
	end

	local function help_10()
		help_number = 10
	end

	local function help_11()
		help_number = 11
	end

	local function help_12()
		help_number = 12
	end

	parts.source = {
			{id = "modebotton", path = "select_skinparts/default_modebotton/modebotton_resize.png"},
			{id = "off", path = "select_skinparts/default_modebotton/off.png"},
			{id = "help_window", path = "select_skinparts/default_modebotton/help_window_resize.png"},
			{id = "help_article", path = "select_skinparts/default_modebotton/help_article.png"},
			{id = "help1", path = "select_skinparts/default_modebotton/help_1.png"},
			{id = "help2", path = "select_skinparts/default_modebotton/help_2.png"},
			{id = "help3", path = "select_skinparts/default_modebotton/help_3.png"},
			{id = "help4", path = "select_skinparts/default_modebotton/help_4.png"},
			{id = "help5", path = "select_skinparts/default_modebotton/help_5.png"},
			{id = "help6", path = "select_skinparts/default_modebotton/help_6.png"},
			{id = "help7", path = "select_skinparts/default_modebotton/help_7.png"},

			{id = "settings_window", path = "select_skinparts/default_modebotton/replay_set_window_resize.png"},
			{id = "score_detail", path = "select_skinparts/default_modebotton/score_detail_window_resize.png"},
			{id = "replay_item", path = "select_skinparts/default_modebotton/replay_item_resize.png"},
			{id = "judge_item", path = "select_skinparts/default_modebotton/judge_item_resize.png"},
			{id = "volume_parts", path = "select_skinparts/default_modebotton/other_option_resize.png"},
		}
		
	parts.image = {
		{id = "skinselect_botton",	src = "modebotton", x = 0, y = 69*0, w = 69, h = 69, act = 14},
		{id = "keyconfig_botton",	src = "modebotton", x = 0, y = 69*1, w = 69, h = 69, act = 13},
		{id = "settings_botton",	src = "modebotton", x = 0, y = 69*2, w = 69, h = 69, act = (function() return settings_open() end)},
		{id = "help_botton",	src = "modebotton", x = 0, y = 69*3, w = 69, h = 69, act = (function() return help_open() end)},
		{id = "ranking_botton",	src = "modebotton", x = 0, y = 69*4, w = 69, h = 69, act = 210},
		{id = "score_botton",	src = "modebotton", x = 0, y = 69*5, w = 69, h = 69, act = (function() return score_detail_open() end)},
		{id = "readme_botton",	src = "modebotton", x = 0, y = 69*6, w = 69, h = 69, act = 17},
		{id = "button_rect",	src = "modebotton", x = 0, y = 69*7, w = 69, h = 69},
		{id = "black",	src = "off", x = 0, y = 0, w = 1, h = 1, act = (function() return xxxx() end)},
		{id = "help_window", src = "help_window", x = 0, y = 0, w = 1920, h = 1080},
		{id = "help1_botton", src = "help_article", x = 0, y = 50*0, w = 240, h = 50, act = (function() return help_1() end)},
		{id = "help2_botton", src = "help_article", x = 0, y = 50*1, w = 240, h = 50, act = (function() return help_2() end)},
		{id = "help3_botton", src = "help_article", x = 0, y = 50*2, w = 240, h = 50, act = (function() return help_3() end)},
		{id = "help4_botton", src = "help_article", x = 0, y = 50*3, w = 240, h = 50, act = (function() return help_4() end)},
		{id = "help5_botton", src = "help_article", x = 0, y = 50*4, w = 240, h = 50, act = (function() return help_5() end)},
		{id = "help6_botton", src = "help_article", x = 0, y = 50*5, w = 240, h = 50, act = (function() return help_6() end)},
		{id = "help7_botton", src = "help_article", x = 0, y = 50*6, w = 240, h = 50, act = (function() return help_7() end)},
		{id = "close_botton", src = "help_article", x = 0, y = 50*7, w = 240, h = 50, act = (function() return help_open() end)},
		{id = "close_botton_2", src = "help_article", x = 0, y = 50*7, w = 240, h = 50, act = (function() return settings_open() end)},
		{id = "close_botton_3", src = "help_article", x = 0, y = 50*7, w = 240, h = 50, act = (function() return score_detail_open() end)},
		{id = "article_rect", src = "help_article", x = 0, y = 50*8, w = 240, h = 50},
		{id = "cursor", src = "help_article", x = 0, y = 50*9, w = 240, h = 50},
		{id = "help1_text", src = "help1", x = 0, y = 0, w = 1234, h = 970},
		{id = "help2_text", src = "help2", x = 0, y = 0, w = 1234, h = 970},
		{id = "help3_text", src = "help3", x = 0, y = 0, w = 1234, h = 970},
		{id = "help4_text", src = "help4", x = 0, y = 0, w = 1234, h = 970},
		{id = "help5_text", src = "help5", x = 0, y = 0, w = 1234, h = 970},
		{id = "help6_text", src = "help6", x = 0, y = 0, w = 1234, h = 970},
		{id = "help7_text", src = "help7", x = 0, y = 0, w = 1234, h = 970},

		{id = "settings_window", src = "settings_window", x = 0, y = 0, w = 1130, h = 825, act = (function() return xxxx() end)},

		{id = "replay_item_1", src = "replay_item", x = 0, y = 0, w = 240, h = 550, divy = 11, len = 11, ref = 321, act = 321},
		{id = "replay_item_2", src = "replay_item", x = 0, y = 0, w = 240, h = 550, divy = 11, len = 11, ref = 322, act = 322},
		{id = "replay_item_3", src = "replay_item", x = 0, y = 0, w = 240, h = 550, divy = 11, len = 11, ref = 323, act = 323},
		{id = "replay_item_4", src = "replay_item", x = 0, y = 0, w = 240, h = 550, divy = 11, len = 11, ref = 324, act = 324},

		{id = "judge_algorithm_item", src = "judge_item", x = 0, y = 0, w = 240, h = 150, divy = 3, len = 3, ref = 340, act = 340},

		{id = "score_detail_window", src = "score_detail", x = 0, y = 0, w = 1130, h = 825, act = (function() return xxxx() end)},
		{id = "score_detail_text", src = "score_detail", x = 0, y = 825, w = 1130, h = 825},
	}

	parts.value = {
		{id = "master_count",	src = "number_alte", x = 0, y = 0, w = 140, h = 25, divx = 10, digit = 3, ref = 57},
		{id = "key_count",		src = "number_alte", x = 0, y = 0, w = 140, h = 25, divx = 10, digit = 3, ref = 58},
		{id = "bgm_count",		src = "number_alte", x = 0, y = 0, w = 140, h = 25, divx = 10, digit = 3, ref = 59},
		{id = "detail_score", src = "number_1",	 x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 6, align = 0, ref = 71},
		{id = "detail_maxscore", src = "number_1",	 x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 6, align = 0, ref = 72},
		{id = "detail_miss", src = "number_1",	 x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 6, align = 0, ref = 76},
		{id = "detail_cb", src = "number_1",	 x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 6, align = 0, ref = 425},
		{id = "detail_combo", src = "number_1",	 x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 6, align = 0, ref = 75},
		{id = "detail_totalnotes", src = "number_1",	 x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 6, align = 0, ref = 74},
		{id = "detail_play", src = "number_1",	 x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 6, align = 0, ref = 77},
		{id = "detail_clear", src = "number_1",	 x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 6, align = 0, ref = 78},
		{id = "detail_fail", src = "number_1",	 x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 6, align = 0, ref = 79},
		{id = "detail_pgreat", src = "number_1",	 x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 6, align = 0, ref = 80},
		{id = "detail_great", src = "number_1",	 x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 6, align = 0, ref = 81},
		{id = "detail_good", src = "number_1",	 x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 6, align = 0, ref = 82},
		{id = "detail_bad", src = "number_1",	 x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 6, align = 0, ref = 83},
		{id = "detail_poor", src = "number_1",	 x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 6, align = 0, ref = 84},
		{id = "detail_epoor", src = "number_1",	 x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 6, align = 0, ref = 420},
		{id = "detail_fast", src = "number_1",	 x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 6, align = 0, ref = 423},
		{id = "detail_slow", src = "number_1",	 x = 0, y = 0, w = 120, h = 20, divx = 10, digit = 6, align = 0, ref = 424},
		{id = "default_playerdata_mode_diff_count",		src = "number_1_small", x = 0, y = 0, w = 110, h = 17, divx = 11, digit = 4, align = 1, value = function()

			score = main_state.number(71)
			maxscore = (main_state.number(74) * 2)
			if maxscore < 1 then
				scorerate = 0
			else	
				scorerate = score / maxscore
			end
			rivalscore = main_state.number(271)
			if maxscore < 1 then
				rival_scorerate = 0
			else	
				rival_scorerate = rivalscore / maxscore
			end
			--score off
			if maxscore < 1 then
				return 0
			elseif rank_plus then
				--max+
				if scorerate == 18/18 then
					return 0
				--max-
				elseif scorerate < 18/18 and scorerate >= 17/18 then
					return math.ceil(maxscore * 9/9) - score
				--aaa+
				elseif scorerate < 17/18 and scorerate >= 16/18 then
					return score - math.ceil(maxscore * 8/9)
				--aaa-
				elseif scorerate < 16/18 and scorerate >= 15/18 then
					return math.ceil(maxscore * 8/9) - score
				--aa+
				elseif scorerate < 15/18 and scorerate >= 14/18 then
					return score - math.ceil(maxscore * 7/9)
				--aa-
				elseif scorerate < 14/18 and scorerate >= 13/18 then
					return math.ceil(maxscore * 7/9) - score
				--a+
				elseif scorerate < 13/18 and scorerate >= 12/18 then
					return score - math.ceil(maxscore * 6/9)
				--a-
				elseif scorerate < 12/18 and scorerate >= 11/18 then
					return math.ceil(maxscore * 6/9) - score
				--b+
				elseif scorerate < 11/18 and scorerate >= 10/18 then
					return score - math.ceil(maxscore * 5/9)
				--b-
				elseif scorerate < 10/18 and scorerate >= 9/18 then
					return math.ceil(maxscore * 5/9) - score
				--c+
				elseif scorerate < 9/18 and scorerate >= 8/18 then
					return score - math.ceil(maxscore * 4/9)
				--c-
				elseif scorerate < 8/18 and scorerate >= 7/18 then
					return math.ceil(maxscore * 4/9) - score
				--d+
				elseif scorerate < 7/18 and scorerate >= 6/18 then
					return score - math.ceil(maxscore * 3/9)
				--d-
				elseif scorerate < 6/18 and scorerate >= 5/18 then
					return math.ceil(maxscore * 3/9) - score
				--e+
				elseif scorerate < 5/18 and scorerate >= 4/18 then
					return score - math.ceil(maxscore * 2/9)
				--e-
				elseif scorerate < 4/18 and scorerate >= 2/18 then
					return math.ceil(maxscore * 2/9) - score
				--f+
				elseif scorerate < 2/18 and scorerate >= 0/18 then
					return score - math.ceil(maxscore * 0/9)
				end
			else
				--max-
				if scorerate < 18/18 and scorerate >= 16/18 then
					return math.ceil(maxscore * 9/9) - score
				--aaa-
				elseif scorerate < 16/18 and scorerate >= 14/18 then
					return math.ceil(maxscore * 8/9) - score
				--aa-
				elseif scorerate < 14/18 and scorerate >= 12/18 then
					return math.ceil(maxscore * 7/9) - score
				--a-
				elseif scorerate < 12/18 and scorerate >= 10/18 then
					return math.ceil(maxscore * 6/9) - score
				--b-
				elseif scorerate < 10/18 and scorerate >= 8/18 then
					return math.ceil(maxscore * 5/9) - score
				--c-
				elseif scorerate < 8/18 and scorerate >= 6/18 then
					return math.ceil(maxscore * 4/9) - score
				--d-
				elseif scorerate < 6/18 and scorerate >= 4/18 then
					return math.ceil(maxscore * 3/9) - score
				--e-
				elseif scorerate < 4/18 and scorerate >= 0/18 then
					return math.ceil(maxscore * 2/9) - score
				end
			end
		end},
	}

	parts.slider = {
		{id = "default_volumeslider_master",	src = "volume_parts", x = 215, y = 113, w = 55, h = 87, angle = 0, range = 130, type = 17},
		{id = "default_volumeslider_key",		src = "volume_parts", x = 215, y = 113, w = 55, h = 87, angle = 0, range = 130, type = 18},
		{id = "default_volumeslider_bgm",		src = "volume_parts", x = 215, y = 113, w = 55, h = 87, angle = 0, range = 130, type = 19},
	}

	parts.text = {}

	parts.graph = {
		{id = "master_graph", src = "volume_parts", x = 0, y = 118, w = 2, h = 216, angle = 2, type = 17},    
		{id = "key_graph", src = "volume_parts", x = 0, y = 118, w = 2, h = 216, angle = 2, type = 18},  
		{id = "bg_graph", src = "volume_parts", x = 0, y = 118 , w = 2, h = 216, angle = 2, type = 19},  
	}
	
	local skinselect_x = 316
	local skinselect_y = 996
	local ranking_x = 655
	local botton_space = 78

	local help1_botton_x = 225
	local help1_botton_y = 883
	local help_space = 58
	
	local settings_window_x = 21
	local settings_window_y = 73

	local detail_score_x = 900
	local detail_score_y = 522

	local rank_diff_x = 640
	local rank_diff_y = 550

	local rank_x = rank_diff_x + settings_window_x + 242
	local rank_y = rank_diff_y + settings_window_y + 97
	local lamp_x = rank_diff_x + settings_window_x + 243
	local lamp_y = rank_diff_y + settings_window_y + 20
	local next_x = rank_diff_x + settings_window_x + 249
	local next_y = rank_diff_y + settings_window_y + 69
	local rate_x = rank_diff_x + settings_window_x + 286
	local rate_y = rank_diff_y + settings_window_y + 49



	parts.destination = {
		{id = "skinselect_botton",	dst = {{x = skinselect_x + botton_space * 0, y = skinselect_y, w = 69, h = 69}}},
		{id = "keyconfig_botton",	dst = {{x = skinselect_x + botton_space * 1, y = skinselect_y, w = 69, h = 69}}},
		{id = "settings_botton",	dst = {{x = skinselect_x + botton_space * 2, y = skinselect_y, w = 69, h = 69}}},
		{id = "help_botton",	dst = {{x = skinselect_x + botton_space * 3, y = skinselect_y, w = 69, h = 69}}},
		{id = "ranking_botton",	dst = {{x = ranking_x + botton_space * 0, y = skinselect_y, w = 69, h = 69}}},
		{id = "score_botton",	dst = {{x = ranking_x + botton_space * 1, y = skinselect_y, w = 69, h = 69}}},
		{id = "readme_botton",	dst = {{x = ranking_x + botton_space * 2, y = skinselect_y, w = 69, h = 69}}},

		{id = "button_rect",	dst = {{x = skinselect_x + botton_space * 0, y = skinselect_y, w = 69, h = 69}}, mouseRect = {x = 0, y = 0, w = 69, h = 69}},
		{id = "button_rect",	dst = {{x = skinselect_x + botton_space * 1, y = skinselect_y, w = 69, h = 69}}, mouseRect = {x = 0, y = 0, w = 69, h = 69}},		
		{id = "button_rect",	dst = {{x = skinselect_x + botton_space * 2, y = skinselect_y, w = 69, h = 69}}, mouseRect = {x = 0, y = 0, w = 69, h = 69}},		
		{id = "button_rect",	dst = {{x = skinselect_x + botton_space * 3, y = skinselect_y, w = 69, h = 69}}, mouseRect = {x = 0, y = 0, w = 69, h = 69}},		
		{id = "button_rect",	dst = {{x = ranking_x + botton_space * 0, y = skinselect_y, w = 69, h = 69}}, mouseRect = {x = 0, y = 0, w = 69, h = 69}},		
		{id = "button_rect",	dst = {{x = ranking_x + botton_space * 1, y = skinselect_y, w = 69, h = 69}}, mouseRect = {x = 0, y = 0, w = 69, h = 69}},	
		{id = "button_rect",	dst = {{x = ranking_x + botton_space * 2, y = skinselect_y, w = 69, h = 69}}, mouseRect = {x = 0, y = 0, w = 69, h = 69}},	

		{id = "settings_window", loop = 300, timer = timer2.on,	dst = {{time = 0, x = -1130, y = settings_window_y, w = 1130, h = 825}, {time = 300, x = settings_window_x}}},
		{id = "settings_window", loop = 300, timer = timer2.off,	dst = {{time = 0, x = settings_window_x, y = settings_window_y, w = 1130, h = 825}, {time = 300, x = -1130}}},

		{id = "replay_item_1", draw = function() return flg2 end, loop = 300, timer = timer2.on,	dst = {{time = 0, x = settings_window_x + 225, y = settings_window_y + 563, w = 240, h = 50, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "article_rect",draw = function() return flg2 end, dst = {{x = settings_window_x + 225, y = settings_window_y + 563, w = 240, h = 50}}, mouseRect = {x = 0, y = 0, w = 240, h = 50}},

		{id = "replay_item_2", draw = function() return flg2 end, loop = 300, timer = timer2.on,	dst = {{time = 0, x = settings_window_x + 225, y = settings_window_y + 563-70*1, w = 240, h = 50, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "article_rect",draw = function() return flg2 end, dst = {{x = settings_window_x + 225, y = settings_window_y + 563-70*1, w = 240, h = 50}}, mouseRect = {x = 0, y = 0, w = 240, h = 50}},

		{id = "replay_item_3", draw = function() return flg2 end, loop = 300, timer = timer2.on,	dst = {{time = 0, x = settings_window_x + 225, y = settings_window_y + 563-70*2, w = 240, h = 50, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "article_rect",draw = function() return flg2 end, dst = {{x = settings_window_x + 225, y = settings_window_y + 563-70*2, w = 240, h = 50}}, mouseRect = {x = 0, y = 0, w = 240, h = 50}},

		{id = "replay_item_4", draw = function() return flg2 end, loop = 300, timer = timer2.on,	dst = {{time = 0, x = settings_window_x + 225, y = settings_window_y + 563-70*3, w = 240, h = 50, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "article_rect",draw = function() return flg2 end, dst = {{x = settings_window_x + 225, y = settings_window_y + 563-70*3, w = 240, h = 50}}, mouseRect = {x = 0, y = 0, w = 240, h = 50}},

		{id = "judge_algorithm_item", draw = function() return flg2 end, loop = 300, timer = timer2.on,	dst = {{time = 0, x = settings_window_x + 92, y = settings_window_y + 143, w = 240, h = 50, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "article_rect",draw = function() return flg2 end, dst = {{x = settings_window_x + 92, y = settings_window_y + 143, w = 240, h = 50}}, mouseRect = {x = 0, y = 0, w = 240, h = 50}},

		{id = "master_graph",	draw = function() return flg2 end, loop = 300, timer = timer2.on,	dst = {{time = 0, x = settings_window_x + 587, y = settings_window_y + 556, w = 200, h = 3, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "key_graph",	draw = function() return flg2 end, loop = 300, timer = timer2.on,	dst = {{time = 0, x = settings_window_x + 587, y = settings_window_y + 458, w = 200, h = 3, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "bg_graph",	draw = function() return flg2 end, loop = 300, timer = timer2.on,	dst = {{time = 0, x = settings_window_x + 587, y = settings_window_y + 361, w = 200, h = 3, a = 0}, {time = 300}, {time = 300, a = 255}}},


		{id = "default_volumeslider_master",	draw = function() return flg2 end, loop = 300, timer = timer2.on,	dst = {{time = 0, x = settings_window_x + 581, y = settings_window_y + 556 -205, w = 55, h = 87, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "default_volumeslider_key",	draw = function() return flg2 end, loop = 300, timer = timer2.on,	dst = {{time = 0, x = settings_window_x + 623 + 48, y = settings_window_y + 556 -205, w = 55, h = 87, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "default_volumeslider_bgm",	draw = function() return flg2 end, loop = 300, timer = timer2.on,	dst = {{time = 0, x = settings_window_x + 656 + 105, y = settings_window_y + 556 -205, w = 55, h = 87, a = 0}, {time = 300}, {time = 300, a = 255}}},
		
		{id = "master_count",	draw = function() return flg2 end, loop = 300, timer = timer2.on,	dst = {{time = 0, x = settings_window_x + 587, y = settings_window_y + 556 +25, w = 14, h = 25, a = 0}, {time = 300}, {time = 300, a = 255}}},

		{id = "key_count",		draw = function() return flg2 end, loop = 300, timer = timer2.on,	dst = {{time = 0, x = settings_window_x + 677, y = settings_window_y + 556 +25, w = 14, h = 25, a = 0}, {time = 300}, {time = 300, a = 255}}},

		{id = "bgm_count",		draw = function() return flg2 end, loop = 300, timer = timer2.on,	dst = {{time = 0, x = settings_window_x + 767, y = settings_window_y + 556 +25, w = 14, h = 25, a = 0}, {time = 300}, {time = 300, a = 255}}},


		{id = "close_botton_2",draw = function() return flg2 end, loop = 300, timer = timer2.on,	dst = {{time = 0, x = settings_window_x + 605, y = settings_window_y + 114, w = 240, h = 50, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "article_rect",draw = function() return flg2 end, dst = {{x = settings_window_x + 605, y = settings_window_y + 114, w = 240, h = 50}}, mouseRect = {x = 0, y = 0, w = 240, h = 50}},

		{id = "score_detail_window", loop = 300, timer = timer3.on,	dst = {{time = 0, x = -1130, y = settings_window_y, w = 1130, h = 825}, {time = 300, x = settings_window_x}}},
		{id = "score_detail_window", loop = 300, timer = timer3.off,	dst = {{time = 0, x = settings_window_x, y = settings_window_y, w = 1130, h = 825}, {time = 300, x = -1130}}},
		
		{id = "score_detail_text", draw = function() return flg3 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = settings_window_x, y = settings_window_y, w = 1130, h = 825, a = 0}, {time = 300}, {time = 300, a = 255}}},

		{id = "default_playerdata_state_clear", draw = function() return flg3 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = lamp_x, y = lamp_y, w = 97, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},

		{id = "default_playerdata_rank_aaa",  op = {200}, loop = 300, timer = timer3.on,	dst = {{time = 0, x = rank_x, y = rank_y, w = 101, h = 40, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "default_playerdata_rank_aa",  op = {201}, loop = 300, timer = timer3.on,	dst = {{time = 0, x = rank_x, y = rank_y, w = 101, h = 40, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "default_playerdata_rank_a",  op = {202}, loop = 300, timer = timer3.on,	dst = {{time = 0, x = rank_x, y = rank_y, w = 101, h = 40, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "default_playerdata_rank_b",  op = {203}, loop = 300, timer = timer3.on,	dst = {{time = 0, x = rank_x, y = rank_y, w = 101, h = 40, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "default_playerdata_rank_c",  op = {204}, loop = 300, timer = timer3.on,	dst = {{time = 0, x = rank_x, y = rank_y, w = 101, h = 40, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "default_playerdata_rank_d",  op = {205}, loop = 300, timer = timer3.on,	dst = {{time = 0, x = rank_x, y = rank_y, w = 101, h = 40, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "default_playerdata_rank_e",  op = {206}, loop = 300, timer = timer3.on,	dst = {{time = 0, x = rank_x, y = rank_y, w = 101, h = 40, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "default_playerdata_rank_f",  op = {207}, loop = 300, timer = timer3.on,	dst = {{time = 0, x = rank_x, y = rank_y, w = 101, h = 40, a = 0}, {time = 300}, {time = 300, a = 255}}},



		{id = "diff_rank_max",  draw = function() return not(rank_plus) and flag_score and scorerate < 18/18 and scorerate >= 16/18 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = next_x, y = next_y, w = 43, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "diff_rank_aaa",  draw = function() return not(rank_plus) and flag_score and scorerate < 16/18 and scorerate >= 14/18 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = next_x, y = next_y, w = 43, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "diff_rank_aa",  draw = function() return not(rank_plus) and flag_score and scorerate < 14/18 and scorerate >= 12/18 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = next_x-5, y = next_y, w = 43, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "diff_rank_a",  draw = function() return not(rank_plus) and flag_score and scorerate < 12/18 and scorerate >= 10/18 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = next_x-10, y = next_y, w = 43, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "diff_rank_b",  draw = function() return not(rank_plus) and flag_score and scorerate < 10/18 and scorerate >= 8/18 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = next_x-10, y = next_y, w = 43, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "diff_rank_c",  draw = function() return not(rank_plus) and flag_score and scorerate < 8/18 and scorerate >= 6/18 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = next_x-10, y = next_y, w = 43, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "diff_rank_d",  draw = function() return not(rank_plus) and flag_score and scorerate < 6/18 and scorerate >= 4/18 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = next_x-10, y = next_y, w = 43, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "diff_rank_e",  draw = function() return not(rank_plus) and flag_score and scorerate < 4/18 and scorerate >= 0/18 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = next_x-10, y = next_y, w = 43, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},

		{id = "diff_rank_max",  draw = function() return rank_plus and flag_score and scorerate < 18/18 and scorerate >= 17/18 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = next_x, y = next_y, w = 43, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "diff_rank_aaa",  draw = function() return rank_plus and flag_score and scorerate < 16/18 and scorerate >= 15/18 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = next_x, y = next_y, w = 43, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "diff_rank_aa",  draw = function() return rank_plus and flag_score and scorerate < 14/18 and scorerate >= 13/18 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = next_x-5, y = next_y, w = 43, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "diff_rank_a",  draw = function() return rank_plus and flag_score and scorerate < 12/18 and scorerate >= 11/18 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = next_x-10, y = next_y, w = 43, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "diff_rank_b",  draw = function() return rank_plus and flag_score and scorerate < 10/18 and scorerate >= 9/18 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = next_x-10, y = next_y, w = 43, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "diff_rank_c",  draw = function() return rank_plus and flag_score and scorerate < 8/18 and scorerate >= 7/18 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = next_x-10, y = next_y, w = 43, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "diff_rank_d",  draw = function() return rank_plus and flag_score and scorerate < 6/18 and scorerate >= 5/18 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = next_x-10, y = next_y, w = 43, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "diff_rank_e",  draw = function() return rank_plus and flag_score and scorerate < 4/18 and scorerate >= 2/18 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = next_x-10, y = next_y, w = 43, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},

		{id = "diff_rank_max_plus",  draw = function() return rank_plus and flag_score and scorerate == 18/18 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = next_x, y = next_y, w = 43, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "diff_rank_aaa_plus",  draw = function() return rank_plus and flag_score and scorerate < 17/18 and scorerate >= 16/18 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = next_x, y = next_y, w = 43, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "diff_rank_aa_plus",  draw = function() return rank_plus and flag_score and scorerate < 15/18 and scorerate >= 14/18 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = next_x-5, y = next_y, w = 43, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "diff_rank_a_plus",  draw = function() return rank_plus and flag_score and scorerate < 13/18 and scorerate >= 12/18 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = next_x-10, y = next_y, w = 43, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "diff_rank_b_plus",  draw = function() return rank_plus and flag_score and scorerate < 11/18 and scorerate >= 10/18 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = next_x-10, y = next_y, w = 43, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "diff_rank_c_plus",  draw = function() return rank_plus and flag_score and scorerate < 9/18 and scorerate >= 8/18 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = next_x-10, y = next_y, w = 43, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "diff_rank_d_plus",  draw = function() return rank_plus and flag_score and scorerate < 7/18 and scorerate >= 6/18 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = next_x-10, y = next_y, w = 43, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "diff_rank_e_plus",  draw = function() return rank_plus and flag_score and scorerate < 5/18 and scorerate >= 4/18 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = next_x-10, y = next_y, w = 43, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "diff_rank_f_plus",  draw = function() return rank_plus and flag_score and scorerate < 2/18 and scorerate >= 0/18 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = next_x-10, y = next_y, w = 43, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},

		{id = "default_playerdata_mode_diff_count", draw = function() return not(rank_plus) and flag_score and scorerate >= 14/18 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = next_x+45, y = next_y+3, w = 10, h = 17, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "default_playerdata_mode_diff_count", draw = function() return not(rank_plus) and flag_score and scorerate < 14/18 and scorerate >= 12/18 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = next_x+45-5, y = next_y+3, w = 10, h = 17, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "default_playerdata_mode_diff_count", draw = function() return not(rank_plus) and flag_score and scorerate < 12/18 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = next_x+45-10, y = next_y+3, w = 10, h = 17, a = 0}, {time = 300}, {time = 300, a = 255}}},

		{id = "default_playerdata_mode_diff_count", draw = function() return rank_plus and flag_score and scorerate >= 15/18 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = next_x+45, y = next_y+3, w = 10, h = 17, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "default_playerdata_mode_diff_count", draw = function() return rank_plus and flag_score and scorerate < 15/18 and scorerate >= 13/18 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = next_x+45-5, y = next_y+3, w = 10, h = 17, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "default_playerdata_mode_diff_count", draw = function() return rank_plus and flag_score and scorerate < 13/18 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = next_x+45-10, y = next_y+3, w = 10, h = 17, a = 0}, {time = 300}, {time = 300, a = 255}}},

		--scorerate 100%
		{id = "default_playerdata_scorerate_count", draw = function() return flag_score and scorerate == 10/10 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = rate_x-35+5, y = rate_y, w = 10, h = 17, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "default_playerdata_scorerate_dot_count", draw = function() return flag_score and scorerate == 10/10 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = rate_x+5, y = rate_y, w = 10, h = 17, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "per_sen", draw = function() return flag_score and scorerate == 10/10 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = rate_x+22+5, y = rate_y+1, w = 14, h = 16, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "dot_sen", draw = function() return flag_score and scorerate == 10/10 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = rate_x-5+5, y = rate_y+1, w = 5, h = 5, a = 0}, {time = 300}, {time = 300, a = 255}}},

        --scorerate 10~99%
		{id = "default_playerdata_scorerate_count", draw = function() return flag_score and scorerate < 10/10 and scorerate >= 1/10 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = rate_x-35, y = rate_y, w = 10, h = 17, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "default_playerdata_scorerate_dot_count", draw = function() return flag_score and scorerate < 10/10 and scorerate >= 1/10 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = rate_x, y = rate_y, w = 10, h = 17, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "per_sen", draw = function() return flag_score and scorerate < 10/10 and scorerate >= 1/10 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = rate_x+22, y = rate_y+1, w = 14, h = 16, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "dot_sen", draw = function() return flag_score and scorerate < 10/10 and scorerate >= 1/10 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = rate_x-5, y = rate_y+1, w = 5, h = 5, a = 0}, {time = 300}, {time = 300, a = 255}}},

		--scorerate ~10%
		{id = "default_playerdata_scorerate_count", draw = function() return flag_score and scorerate < 1/10 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = rate_x-35-5, y = rate_y, w = 10, h = 17, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "default_playerdata_scorerate_dot_count", draw = function() return flag_score and scorerate < 1/10 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = rate_x-5, y = rate_y, w = 10, h = 17, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "per_sen", draw = function() return flag_score and scorerate < 1/10 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = rate_x+22-5, y = rate_y+1, w = 14, h = 16, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "dot_sen", draw = function() return flag_score and scorerate < 1/10 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = rate_x-5-5, y = rate_y+1, w = 5, h = 5, a = 0}, {time = 300}, {time = 300, a = 255}}},


		--{id = "detail_score", draw = function() return flg3 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = settings_window_x + detail_score_x, y = settings_window_y + detail_score_y - 27 * 0 - 50 * 0, w = 12, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "default_playerdata_score_count", draw = function() return flg3 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = settings_window_x + detail_score_x, y = settings_window_y + detail_score_y - 27 * 0 - 50 * 0, w = 12, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},

		{id = "slash_sen",	draw = function() return flg3 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = settings_window_x + detail_score_x + 80, y = settings_window_y + detail_score_y, w = 12, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "detail_maxscore", draw = function() return (flg3 and main_state.number(71) >= 0) end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = settings_window_x + detail_score_x + 92, y = settings_window_y + detail_score_y, w = 12, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "detail_miss", draw = function() return (flg3 and main_state.number(71) >= 0) end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = settings_window_x + detail_score_x, y = settings_window_y + detail_score_y - 27 * 1 - 50 * 0, w = 12, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "detail_cb", draw = function() return (flg3 and main_state.number(71) >= 0) end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = settings_window_x + detail_score_x, y = settings_window_y + detail_score_y - 27 * 2 - 50 * 0, w = 12, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "detail_combo", draw = function() return flg3 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = settings_window_x + detail_score_x, y = settings_window_y + detail_score_y - 27 * 3 - 50 * 0, w = 12, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "slash_sen",	draw = function() return flg3 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = settings_window_x + detail_score_x + 80, y = settings_window_y + detail_score_y - 27 * 3 - 50 * 0, w = 12, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "detail_totalnotes", draw = function() return (flg3 and main_state.number(71) >= 0) end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = settings_window_x + detail_score_x + 92, y = settings_window_y + detail_score_y - 27 * 3 - 50 * 0, w = 12, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		
		{id = "detail_play", draw = function() return flg3 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = settings_window_x + detail_score_x, y = settings_window_y + detail_score_y - 27 * 3 - 50 * 1, w = 12, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "detail_clear", draw = function() return flg3 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = settings_window_x + detail_score_x, y = settings_window_y + detail_score_y - 27 * 4 - 50 * 1, w = 12, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "detail_fail", draw = function() return flg3 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = settings_window_x + detail_score_x, y = settings_window_y + detail_score_y - 27 * 5 - 50 * 1, w = 12, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},

		{id = "detail_pgreat", draw = function() return flg3 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = settings_window_x + detail_score_x, y = settings_window_y + detail_score_y - 27 * 5 - 50 * 2, w = 12, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "detail_great", draw = function() return flg3 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = settings_window_x + detail_score_x, y = settings_window_y + detail_score_y - 27 * 6 - 50 * 2, w = 12, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "detail_good", draw = function() return flg3 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = settings_window_x + detail_score_x, y = settings_window_y + detail_score_y - 27 * 7 - 50 * 2, w = 12, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "detail_bad", draw = function() return flg3 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = settings_window_x + detail_score_x, y = settings_window_y + detail_score_y - 27 * 8 - 50 * 2, w = 12, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "detail_poor", draw = function() return flg3 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = settings_window_x + detail_score_x, y = settings_window_y + detail_score_y - 27 * 9 - 50 * 2, w = 12, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "detail_epoor", draw = function() return (flg3 and main_state.number(71) >= 0) end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = settings_window_x + detail_score_x, y = settings_window_y + detail_score_y - 27 * 10 - 50 * 2, w = 12, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		
		{id = "detail_fast", draw = function() return (flg3 and main_state.number(71) >= 0) end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = settings_window_x + detail_score_x + 20, y = settings_window_y + detail_score_y - 27 * 10 - 50 * 3, w = 12, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "slash_sen",	draw = function() return flg3 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = settings_window_x + detail_score_x + 80 + 20, y = settings_window_y + detail_score_y - 27 * 10 - 50 * 3, w = 12, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "detail_slow", draw = function() return (flg3 and main_state.number(71) >= 0) end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = settings_window_x + detail_score_x + 92 + 20, y = settings_window_y + detail_score_y - 27 * 10 - 50 * 3, w = 12, h = 20, a = 0}, {time = 300}, {time = 300, a = 255}}},

		{id = "close_botton_3",draw = function() return flg3 end, loop = 300, timer = timer3.on,	dst = {{time = 0, x = settings_window_x + 850, y = settings_window_y + 24, w = 240, h = 50, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "article_rect",draw = function() return flg3 end, dst = {{x = settings_window_x + 850, y = settings_window_y + 24, w = 240, h = 50}}, mouseRect = {x = 0, y = 0, w = 240, h = 50}},

		{id = "black", draw = function() return flg end, loop = 300, timer = timer.on,	dst = {{time = 0, x = 0, y = 0, w = 1920, h = 1080, a = 0}, {time = 300, a = 180}}},
		{id = "help_window", loop = 300, timer = timer.on,	dst = {{time = 0, x = -1920, y = 0, w = 1920, h = 1080}, {time = 300, x = 0}}},
		{id = "help_window", loop = 300, timer = timer.off,	dst = {{time = 0, x = 0, y = 0, w = 1920, h = 1080}, {time = 300, x = -1920}}},
		{id = "help1_text",draw = function() return (flg and (help_number == 1)) end, loop = 300, timer = timer.on,	dst = {{time = 0, x = 476, y = 25, w = 1234, h = 970, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "help2_text",draw = function() return (flg and (help_number == 2)) end, loop = 300, timer = timer.on,	dst = {{time = 0, x = 476, y = 25, w = 1234, h = 970, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "help3_text",draw = function() return (flg and (help_number == 3)) end, loop = 300, timer = timer.on,	dst = {{time = 0, x = 476, y = 25, w = 1234, h = 970, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "help4_text",draw = function() return (flg and (help_number == 4)) end, loop = 300, timer = timer.on,	dst = {{time = 0, x = 476, y = 25, w = 1234, h = 970, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "help5_text",draw = function() return (flg and (help_number == 5)) end, loop = 300, timer = timer.on,	dst = {{time = 0, x = 476, y = 25, w = 1234, h = 970, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "help6_text",draw = function() return (flg and (help_number == 6)) end, loop = 300, timer = timer.on,	dst = {{time = 0, x = 476, y = 25, w = 1234, h = 970, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "help7_text",draw = function() return (flg and (help_number == 7)) end, loop = 300, timer = timer.on,	dst = {{time = 0, x = 476, y = 25, w = 1234, h = 970, a = 0}, {time = 300}, {time = 300, a = 255}}},

		{id = "help1_botton",draw = function() return flg end, loop = 300, timer = timer.on,	dst = {{time = 0, x = help1_botton_x, y = help1_botton_y - help_space * 0, w = 240, h = 50, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "help2_botton",draw = function() return flg end, loop = 300, timer = timer.on,	dst = {{time = 0, x = help1_botton_x, y = help1_botton_y - help_space * 1, w = 240, h = 50, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "help3_botton",draw = function() return flg end, loop = 300, timer = timer.on,	dst = {{time = 0, x = help1_botton_x, y = help1_botton_y - help_space * 2, w = 240, h = 50, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "help4_botton",draw = function() return flg end, loop = 300, timer = timer.on,	dst = {{time = 0, x = help1_botton_x, y = help1_botton_y - help_space * 3, w = 240, h = 50, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "help5_botton",draw = function() return flg end, loop = 300, timer = timer.on,	dst = {{time = 0, x = help1_botton_x, y = help1_botton_y - help_space * 4, w = 240, h = 50, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "help6_botton",draw = function() return flg end, loop = 300, timer = timer.on,	dst = {{time = 0, x = help1_botton_x, y = help1_botton_y - help_space * 5, w = 240, h = 50, a = 0}, {time = 300}, {time = 300, a = 255}}},
		
		{id = "help7_botton",draw = function() return flg end, loop = 300, timer = timer.on,	dst = {{time = 0, x = help1_botton_x, y = help1_botton_y - help_space * 11.5, w = 240, h = 50, a = 0}, {time = 300}, {time = 300, a = 255}}},
		
		{id = "close_botton",draw = function() return flg end, loop = 300, timer = timer.on,	dst = {{time = 0, x = help1_botton_x, y = help1_botton_y - help_space * 13, w = 240, h = 50, a = 0}, {time = 300}, {time = 300, a = 255}}},
		
		{id = "article_rect",draw = function() return flg end, dst = {{x = help1_botton_x, y = help1_botton_y - help_space * 0, w = 240, h = 50}}, mouseRect = {x = 0, y = 0, w = 240, h = 50}},
		{id = "article_rect",draw = function() return flg end, dst = {{x = help1_botton_x, y = help1_botton_y - help_space * 1, w = 240, h = 50}}, mouseRect = {x = 0, y = 0, w = 240, h = 50}},
		{id = "article_rect",draw = function() return flg end, dst = {{x = help1_botton_x, y = help1_botton_y - help_space * 2, w = 240, h = 50}}, mouseRect = {x = 0, y = 0, w = 240, h = 50}},
		{id = "article_rect",draw = function() return flg end, dst = {{x = help1_botton_x, y = help1_botton_y - help_space * 3, w = 240, h = 50}}, mouseRect = {x = 0, y = 0, w = 240, h = 50}},
		{id = "article_rect",draw = function() return flg end, dst = {{x = help1_botton_x, y = help1_botton_y - help_space * 4, w = 240, h = 50}}, mouseRect = {x = 0, y = 0, w = 240, h = 50}},
		{id = "article_rect",draw = function() return flg end, dst = {{x = help1_botton_x, y = help1_botton_y - help_space * 5, w = 240, h = 50}}, mouseRect = {x = 0, y = 0, w = 240, h = 50}},
		{id = "article_rect",draw = function() return flg end, dst = {{x = help1_botton_x, y = help1_botton_y - help_space * 11.5, w = 240, h = 50}}, mouseRect = {x = 0, y = 0, w = 240, h = 50}},
		{id = "article_rect",draw = function() return flg end, dst = {{x = help1_botton_x, y = help1_botton_y - help_space * 13, w = 240, h = 50}}, mouseRect = {x = 0, y = 0, w = 240, h = 50}},
		
		{id = "cursor",draw = function() return (flg and (help_number == 1)) end, loop = 300, timer = timer.on,	dst = {{time = 0, x = help1_botton_x, y = help1_botton_y - help_space * 0, w = 240, h = 50, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "cursor",draw = function() return (flg and (help_number == 2)) end, loop = 300, timer = timer.on,	dst = {{time = 0, x = help1_botton_x, y = help1_botton_y - help_space * 1, w = 240, h = 50, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "cursor",draw = function() return (flg and (help_number == 3)) end, loop = 300, timer = timer.on,	dst = {{time = 0, x = help1_botton_x, y = help1_botton_y - help_space * 2, w = 240, h = 50, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "cursor",draw = function() return (flg and (help_number == 4)) end, loop = 300, timer = timer.on,	dst = {{time = 0, x = help1_botton_x, y = help1_botton_y - help_space * 3, w = 240, h = 50, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "cursor",draw = function() return (flg and (help_number == 5)) end, loop = 300, timer = timer.on,	dst = {{time = 0, x = help1_botton_x, y = help1_botton_y - help_space * 4, w = 240, h = 50, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "cursor",draw = function() return (flg and (help_number == 6)) end, loop = 300, timer = timer.on,	dst = {{time = 0, x = help1_botton_x, y = help1_botton_y - help_space * 5, w = 240, h = 50, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "cursor",draw = function() return (flg and (help_number == 8)) end, loop = 300, timer = timer.on,	dst = {{time = 0, x = help1_botton_x, y = help1_botton_y - help_space * 6, w = 240, h = 50, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "cursor",draw = function() return (flg and (help_number == 9)) end, loop = 300, timer = timer.on,	dst = {{time = 0, x = help1_botton_x, y = help1_botton_y - help_space * 7, w = 240, h = 50, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "cursor",draw = function() return (flg and (help_number == 10)) end, loop = 300, timer = timer.on,	dst = {{time = 0, x = help1_botton_x, y = help1_botton_y - help_space * 8, w = 240, h = 50, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "cursor",draw = function() return (flg and (help_number == 11)) end, loop = 300, timer = timer.on,	dst = {{time = 0, x = help1_botton_x, y = help1_botton_y - help_space * 9, w = 240, h = 50, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "cursor",draw = function() return (flg and (help_number == 12)) end, loop = 300, timer = timer.on,	dst = {{time = 0, x = help1_botton_x, y = help1_botton_y - help_space * 10, w = 240, h = 50, a = 0}, {time = 300}, {time = 300, a = 255}}},
		{id = "cursor",draw = function() return (flg and (help_number == 7)) end, loop = 300, timer = timer.on,	dst = {{time = 0, x = help1_botton_x, y = help1_botton_y - help_space * 11.5, w = 240, h = 50, a = 0}, {time = 300}, {time = 300, a = 255}}},

	}
	
	return parts	
end

return {
	parts = parts,
	load = load
}