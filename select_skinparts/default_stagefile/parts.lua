local parts = {}

parts.filepath = {
	{name = "No stage file image", path = "customize/no_stagefile_image/*"}
}

local function load()
	local parts_position = {x = 10, y = 617}
	
	parts.source = {
		{id = "image_back", path = "select_skinparts/default_stagefile/stagefile_back.png"},
		{id = "src-default-stagefile2-img", path = "customize/no_stagefile_image/*"},
	}
	
	parts.image = {
		{id = "default_stagefile2_img", src = "src-default-stagefile2-img", x = 0, y = 0, w = -1, h = -1},
		--{id = "image_back", src = "image_back", x = 0, y = 0, w = 297, h = 225},
		{id = "image_back", src = "image_back", x = 0, y = 0, w = 328, h = 256},
	}

	parts.destination = {		
		--{id = "image_back", timer = 11, op = {2,191}, dst = {{x = parts_position.x, y = parts_position.y, w = 297, h = 225}}},
		--{id = "image_back", timer = 11, op = {2,190}, dst = {{x = parts_position.x, y = parts_position.y, w = 297, h = 225}}},	
		{id = "image_back", timer = 11, op = {2,191}, dst = {{x = parts_position.x+4, y = parts_position.y+4+15, w = 297-9, h = 225-9}}},
		{id = "image_back", timer = 11, op = {2,190}, dst = {{x = parts_position.x+4, y = parts_position.y+4+15, w = 297-9, h = 225-9}}},	
		
		{id = "default_stagefile2_img", stretch = 1, filter = 1, op = {2,190}, dst = {{x = parts_position.x + 4, y = parts_position.y + 4, w = 297-9, h = 225-9}}},
		{id = -100, stretch = 1, filter = 1, timer = 11, loop = 250,  dst = {{time = 0, x = parts_position.x + 5, y = parts_position.y-55, w = 384, h = 288, acc = 2, a = 0},{time = 250, a = 255}}},
	}				
	
	return parts	
end

return {
	parts = parts,
	load = load
}