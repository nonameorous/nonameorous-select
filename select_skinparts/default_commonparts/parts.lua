local parts = {}

local function load()

	parts.property = {
		{name = "RANK+表記", item = {
			{name = "OFF",		op = OP_RANK_PLUS_OFF},
			{name = "ON",		op = OP_RANK_PLUS_ON},
		},def = "ON"},
	}

	parts.source = {
		{id = "number_1", path = "select_skinparts/default_commonparts/number1_resize.png"},
		{id = "number_1_small", path = "select_skinparts/default_commonparts/number1_resize_small.png"},
		{id = "number_alte", path = "select_skinparts/default_commonparts/number_alte_resize.png"},

	}
		
	parts.font = {
		{id = "font_archivo-bold",	path = "select_skinparts/default_commonparts/font_ver1.2.0/archivo-bold.ttf"},
		{id = "font_Title",	path = "select_skinparts/default_commonparts/font_ver1.2.0/font_Title/Title.fnt"},
		{id = "font_songlist",	path = "select_skinparts/default_commonparts/font_ver1.2.0/font_songlist/songlist.fnt"},
		{id = "font_sub",	path = "select_skinparts/default_commonparts/font_ver1.2.0/font_sub/sub.fnt"},
		{id = "font_sub_small",	path = "select_skinparts/default_commonparts/font_ver1.2.0/font_sub_small/sub_small.fnt"},
		{id = "font_ir",	path = "select_skinparts/default_commonparts/font_ver1.2.0/font_ir/ir_name.fnt"},

	}
	
	rank_plus = (skin_config.option["RANK+表記"] == OP_RANK_PLUS_ON)

	timer_nochart = {
		on	= get_customTimer_id(),
		off	= get_customTimer_id(),
	}
	
	return parts	
end

return {
	parts = parts,
	load = load
}