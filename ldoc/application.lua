---The table containing application related functions
---@module ncine.application

---The rendering settings table
---@bool batching True if sprite batching is enabled
---@bool batching_with_indices True if using indices for vertex batching
---@bool culling True if node culling is enabled
---@int min_batch_size Minimum size for a batch to be collected
---@int max_batch_size Maximum size for a batch before a forced split
---@table rendering_settings

---The debug overlay settings table
---@bool profiler_graphs True if showing the profiler graphs
---@bool info_text True if showing the information text
---@bool interface True if showing the debug interface
---@table debug_overlay_settings

---The gui settings table
---@int imgui_layer ImGui drawable node layer
---@int nuklearLayer Nuklear drawable node layer
---@field imgui_viewport (ncine.viewport.viewportObj) ImGui viewport
---@field nuklear_viewport (ncine.viewport.viewportObj) Nuklear viewport
---@table gui_settings

---Returns the configuration used to initialize the application
---@treturn ncine.app_configuration
function ncine.application.get_app_configuration() end

---Returns the run-time rendering settings
---@treturn rendering_settings
function ncine.application.get_rendering_settings() end

---Sets the run-time rendering settings
---@tparam rendering_settings settings
function ncine.application.set_rendering_settings(settings) end

---Returns the run-time GUI settings
---@treturn gui_settings
function ncine.application.get_gui_settings() end

---Sets the run-time GUI settings
---@tparam gui_settings settings
function ncine.application.set_gui_settings(settings) end

---Returns the run-time debug overlay settings, if debug overlay is available
---@treturn debug_overlay_settings
function ncine.application.get_debugoverlay_settings() end

---Sets the run-time debug overlay settings
---@tparam debug_overlay_settings settings
function ncine.application.set_debugoverlay_settings(settings) end

---Returns the root node of the transformation graph
---@treturn ncine.scenenode.scenenodeObj
function ncine.application.get_rootnode() end

---Returns the screen viewport
---@treturn ncine.viewport.viewportObj
function ncine.application.get_screen_viewport() end

---Returns the total number of frames already rendered
---@treturn integer
function ncine.application.get_num_frames() end

---Returns the time in seconds that last frame took to complete
---
---Also called delta time.
---@treturn number
function ncine.application.get_frame_time() end

---Returns the drawable screen width
---@treturn number
function ncine.application.get_width() end

---Returns the drawable screen height
---@treturn number
function ncine.application.get_height() end

---Returns the drawable screen resolution vector
---@treturn ncine.vec2
function ncine.application.get_resolution() end

---Returns `true` if the application is suspended.
---
---A suspended application will not update nor receive events.
---@treturn boolean
function ncine.application.is_suspended() end

---Sets a new value for the suspension flag
---@tparam boolean flag
function ncine.application.set_suspended(flag) end

---Returns `true` if the application should auto-suspend when it loses focus
---@treturn boolean
function ncine.application.get_auto_suspension() end

---Sets a new value for the auto-suspension flag
---@tparam boolean flag
function ncine.application.set_auto_suspension(flag) end

---Asks the application to quit as soon as possible
function ncine.application.quit() end
