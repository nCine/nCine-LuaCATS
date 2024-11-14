---@meta

---Loop state
---@enum ncine.loop_mode
ncine.loop_mode = {
	DISABLED = 0,
	ENABLED = 1,
}

---Rewind modes
---@enum ncine.rewind_mode
ncine.rewind_mode = {
	---When the animation reaches the last frame it begins again from start
	FROM_START = 0,
	---When the animation reaches the last frame it goes backward
	BACKWARD = 1,
}

---A rectangle based animation data table
---@class ncine.rect_animation
---@field frame_duration number # Frame duration in seconds
---@field loop ncine.loop_mode
---@field rewind ncine.rewind_mode
---@field rect_size ncine.vec2
---@field source_rect ncine.rect
---@field num_rectangles_to_skip? integer # Optional field, default is 0
---@field padding? ncine.vec2 # Optional field, default is { x = 0, y = 0 }
ncine.rect_animation = {}
