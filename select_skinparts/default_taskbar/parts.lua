local parts = {}

local function load()
	parts.source = {
		{id = "taskbar", path = "select_skinparts/default_taskbar/taskbar_resize.png"},
	}

	parts.image = {
		{id = "taskbar_panel",		src = "taskbar", x = 0, y = 0, w = 1920, h = 1080},
	}
	
	parts.destination = {
		{id = "taskbar_panel",	dst = {{x = 0, y = 0, w = 1920, h = 1080}}},
	}
	
	return parts	
end

return {
	parts = parts,
	load = load
}