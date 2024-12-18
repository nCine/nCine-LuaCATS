---@submodule ncine.animated_sprite

---Loop state (enumeration)
ncine.loop_mode = {
	DISABLED = 0,
	ENABLED = 1,
}

---Rewind modes (enumeration)
ncine.rewind_mode = {
	FROM_START = 0, ---When the animation reaches the last frame it begins again from start
	BACKWARD = 1, ---When the animation reaches the last frame it goes backward
}

---A rectangle based animation data table
---@number frame_duration Frame duration in seconds
---@field loop (ncine.loop_mode)
---@field rewind (ncine.rewind_mode)
---@field rect_size (ncine.vec2)
---@field source_rect (ncine.rect)
---@int num_rectangles_to_skip Optional field, default is 0
---@field padding (ncine.vec2) Optional field, default is { x = 0, y = 0 }
---@table ncine.rect_animation
