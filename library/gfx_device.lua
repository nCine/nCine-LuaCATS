---@meta

---A table representing a video mode supported by a monitor
---@class video_mode
---@field width integer # The video width
---@field height integer # The video height
---@field refresh_rate number # The refresh rate in Hz
---@field red_bits integer # The number of bits for the red channel
---@field green_bits integer # The number of bits for the green channel
---@field blue_bits integer # The number of bits for the blue channel
video_mode = {}

---A table representing a connected monitor
---@class monitor
---@field name string # The monitor name
---@field position ncine.vec2 # The position of the monitor's viewport on the virtual screen
---@field dpi ncine.vec2 # The horizontal and vertical dots per inch
---@field scale ncine.vec2 #The content scale factor
---@field num_video_modes integer # The number of video modes in the array
---@field video_modes video_mode[] # The array of supported video modes
monitor = {}

---The table containing the graphics device related functions
---@class ncine.gfx_device
ncine.gfx_device = {}

---Sets the number of vertical blanks to occur before a buffer swap
---
---An interval of `-1` will enable adaptive v-sync if available.
---@param interval integer
function ncine.gfx_device.set_swap_interval(interval) end

---Returns `true` if the device renders in full screen
---@return boolean
function ncine.gfx_device.is_fullscreen() end

---Sets the full screen flag of the window
---@param in_fullscreen boolean
function ncine.gfx_device.set_fullscreen(in_fullscreen) end

---Returns `true` if the window is resizable
---@return boolean
function ncine.gfx_device.is_resizable() end

---Returns the window horizontal position
---@return integer
function ncine.gfx_device.get_window_position_x() end

---Returns the window vertical position
---@return integer
function ncine.gfx_device.get_window_position_y() end

---Returns the window position as a `ncine.vec2`
---@return ncine.vec2
function ncine.gfx_device.get_window_position() end

---Sets the position of the application window with a `ncine.vec2`
---@param position ncine.vec2
function ncine.gfx_device.set_window_position(position) end

---Sets the position of the application window with two integers
---@param position_x integer
---@param position_y integer
function ncine.gfx_device.set_window_position(position_x, position_y) end

---Returns the window or video mode width in screen coordinates
---@return integer
function ncine.gfx_device.get_width() end

---Returns the window or video mode height in screen coordinates
---@return integer
function ncine.gfx_device.get_height() end

---Returns the window or video mode resolution in screen coordinates as a `ncine.vec2`
---@return ncine.vec2
function ncine.gfx_device.get_resolution() end

---Returns the window or video mode resolution aspect ratio
---@return number
function ncine.gfx_device.get_aspect_ratio() end

---Sets the window size with a `ncine.vec2`
---
---If the application is in full screen this method will have no effect.
---@param size ncine.vec2
function ncine.gfx_device.set_window_size(size) end

---Sets the window size with two integers
---
---If the application is in full screen this method will have no effect.
---@param width integer
---@param height integer
function ncine.gfx_device.set_window_size(width, height) end

---Returns the window width in pixels
---
---It may differs from `width()` on HiDPI screens
---@return integer
function ncine.gfx_device.get_drawable_width() end

---Returns the window height in pixels
---
---It may differs from `width()` on HiDPI screens
---@return integer
function ncine.gfx_device.get_hdrawable_eight() end

---Returns the window resolution in pixels as a `ncine.vec2`
---
---It may differs from `width()` on HiDPI screens
---@return ncine.vec2
function ncine.gfx_device.get_drawable_resolution() end

---Sets the application window title
---@param title string
function ncine.gfx_device.set_window_title(title) end

---Sets the application window icon
---@param icon_filename string
function ncine.gfx_device.set_window_icon(icon_filename) end

---Highlights the application window to notify the user
function ncine.gfx_device.flash_window() end

---Returns the number of connected monitors
---@return integer
function ncine.gfx_device.num_monitors() end

---Returns the array index of the primary monitor
---
---This is usually the monitor where elements like the task bar or global menu bar are located
---@return integer
function ncine.gfx_device.get_primary_monitor_index() end

---Returns the array index of the monitor associated with the window
---@return integer
function ncine.gfx_device.get_window_monitor_index() end

---Returns the specified monitor
---@param index integer
---@return monitor
function ncine.gfx_device.get_monitor(index) end

---Returns the current video mode for the specified monitor`
---@return video_mode
function ncine.gfx_device.get_current_video_mode() end

---Sets the video mode that will be used in full screen by the monitor that hosts the window
---
---Call this method **before** enabling full screen.
---@param mode_index integer
function ncine.gfx_device.set_video_mode(mode_index) end

---Returns the scaling factor for application window
---@return number
function ncine.gfx_device.get_window_scaling_factor() end
