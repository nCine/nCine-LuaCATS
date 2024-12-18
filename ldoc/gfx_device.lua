---The table containing the graphics device related functions
---@module ncine.gfx_device

---A table representing a video mode supported by a monitor
---@int width The video width
---@int height The video height
---@number refresh_rate The refresh rate in Hz
---@int red_bits The number of bits for the red channel
---@int green_bits The number of bits for the green channel
---@int blue_bits  The number of bits for the blue channel
---@table video_mode

---A table representing a connected monitor
---@string name The monitor name
---@field position (ncine.vec2) The position of the monitor's viewport on the virtual screen
---@field dpi (ncine.vec2) The horizontal and vertical dots per inch
---@field scale (ncine.vec2) The content scale factor
---@int num_video_modes The number of video modes in the array
---@field video_modes (video_mode[]) The array of supported video modes
---@table monitor

---Sets the number of vertical blanks to occur before a buffer swap.
---
---An interval of `-1` will enable adaptive v-sync if available.
---@tparam integer interval
function ncine.gfx_device.set_swap_interval(interval) end

---Returns `true` if the device renders in full screen
---@treturn boolean
function ncine.gfx_device.is_fullscreen() end

---Sets the full screen flag of the window
---@tparam boolean in_fullscreen
function ncine.gfx_device.set_fullscreen(in_fullscreen) end

---Returns `true` if the window is resizable
---@treturn boolean
function ncine.gfx_device.is_resizable() end

---Returns the window horizontal position
---@treturn integer
function ncine.gfx_device.get_window_position_x() end

---Returns the window vertical position
---@treturn integer
function ncine.gfx_device.get_window_position_y() end

---Returns the window position as a `ncine.vec2`
---@treturn ncine.vec2
function ncine.gfx_device.get_window_position() end

---Sets the position of the application window with a `ncine.vec2`
---@tparam ncine.vec2 position
function ncine.gfx_device.set_window_position(position) end

---Sets the position of the application window with two integers
---@tparam integer position_x
---@tparam integer position_y
function ncine.gfx_device.set_window_position(position_x, position_y) end

---Returns the window or video mode width in screen coordinates
---@treturn integer
function ncine.gfx_device.get_width() end

---Returns the window or video mode height in screen coordinates
---@treturn integer
function ncine.gfx_device.get_height() end

---Returns the window or video mode resolution in screen coordinates as a `ncine.vec2`
---@treturn ncine.vec2
function ncine.gfx_device.get_resolution() end

---Returns the window or video mode resolution aspect ratio
---@treturn number
function ncine.gfx_device.get_aspect_ratio() end

---Sets the window size with a `ncine.vec2`.
---
---If the application is in full screen this method will have no effect.
---@tparam ncine.vec2 size
function ncine.gfx_device.set_window_size(size) end

---Sets the window size with two integers.
---
---If the application is in full screen this method will have no effect.
---@tparam integer width
---@tparam integer height
function ncine.gfx_device.set_window_size(width, height) end

---Returns the window width in pixels.
---
---It may differs from `width()` on HiDPI screens.
---@treturn integer
function ncine.gfx_device.get_drawable_width() end

---Returns the window height in pixels.
---
---It may differs from `width()` on HiDPI screens.
---@treturn integer
function ncine.gfx_device.get_drawable_height() end

---Returns the window resolution in pixels as a `ncine.vec2`.
---
---It may differs from `width()` on HiDPI screens.
---@treturn ncine.vec2
function ncine.gfx_device.get_drawable_resolution() end

---Sets the application window title
---@tparam string title
function ncine.gfx_device.set_window_title(title) end

---Sets the application window icon
---@tparam string icon_filename
function ncine.gfx_device.set_window_icon(icon_filename) end

---Highlights the application window to notify the user
function ncine.gfx_device.flash_window() end

---Returns the number of connected monitors
---@treturn integer
function ncine.gfx_device.num_monitors() end

---Returns the array index of the primary monitor.
---
---This is usually the monitor where elements like the task bar or global menu bar are located.
---@treturn integer
function ncine.gfx_device.get_primary_monitor_index() end

---Returns the array index of the monitor associated with the window
---@treturn integer
function ncine.gfx_device.get_window_monitor_index() end

---Returns the specified monitor
---@tparam integer index
---@treturn monitor
function ncine.gfx_device.get_monitor(index) end

---Returns the current video mode for the specified monitor`
---@treturn video_mode
function ncine.gfx_device.get_current_video_mode() end

---Sets the video mode that will be used in full screen by the monitor that hosts the window.
---
---Call this method **before** enabling full screen.
---@tparam integer mode_index
function ncine.gfx_device.set_video_mode(mode_index) end

---Returns the scaling factor for application window
---@treturn number
function ncine.gfx_device.get_window_scaling_factor() end
