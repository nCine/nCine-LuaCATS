---@meta

---The rendering settings table
---@class rendering_settings
---@field batching boolean # True if sprite batching is enabled
---@field batching_with_indices boolean # True if using indices for vertex batching
---@field culling boolean # True if node culling is enabled
---@field min_batch_size integer # Minimum size for a batch to be collected
---@field max_batch_size integer # Maximum size for a batch before a forced split
rendering_settings = {}

---The debug overlay settings table
---@class debug_overlay_settings
---@field profiler_graphs boolean # True if showing the profiler graphs
---@field info_text boolean # True if showing the information text
---@field interface boolean # True if showing the debug interface
debug_overlay_settings = {}

---The gui settings table
---@class gui_settings
---@field imgui_layer integer # ImGui drawable node layer
---@field nuklearLayer integer # Nuklear drawable node layer
---@field imgui_viewport viewportObj # ImGui viewport
---@field nuklear_viewport viewportObj # Nuklear viewport
gui_settings = {}

---The table containing application related functions
---@class ncine.application
ncine.application = {}

---Returns the configuration used to initialize the application
---@return ncine.app_configuration
function ncine.application.get_app_configuration() end

---Returns the run-time rendering settings
---@return rendering_settings
function ncine.application.get_rendering_settings() end

---Sets the run-time rendering settings
---@param settings rendering_settings
function ncine.application.set_rendering_settings(settings) end

---Returns the run-time GUI settings
---@return gui_settings
function ncine.application.get_gui_settings() end

---Sets the run-time GUI settings
---@param settings gui_settings
function ncine.application.set_gui_settings(settings) end

---Returns the run-time debug overlay settings, if debug overlay is available
---@return debug_overlay_settings
function ncine.application.get_debugoverlay_settings() end

---Sets the run-time debug overlay settings
---@param settings debug_overlay_settings
function ncine.application.set_debugoverlay_settings(settings) end

---Returns the root node of the transformation graph
---@return scenenodeObj
function ncine.application.get_rootnode() end

---Returns the screen viewport
---@return viewportObj
function ncine.application.get_screen_viewport() end

---Returns the total number of frames already rendered
---@return integer
function ncine.application.get_num_frames() end

---Returns the time in seconds that last frame took to complete
---
---Also called delta time.
---@return number
function ncine.application.get_frame_time() end

---Returns the drawable screen width
---@return number
function ncine.application.get_width() end

---Returns the drawable screen height
---@return number
function ncine.application.get_height() end

---Returns the drawable screen resolution vector
---@return ncine.vec2
function ncine.application.get_resolution() end

---Returns `true` if the application is suspended.
---
---A suspended application will not update nor receive events.
---@return boolean
function ncine.application.is_suspended() end

---Sets a new value for the suspension flag
---@param flag boolean
function ncine.application.set_suspended(flag) end

---Returns `true` if the application should auto-suspend when it loses focus
---@return boolean
function ncine.application.get_auto_suspension() end

---Sets a new value for the auto-suspension flag
---@param flag boolean
function ncine.application.set_auto_suspension(flag) end

---Asks the application to quit as soon as possible
function ncine.application.quit() end
