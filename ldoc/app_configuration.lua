---The application configuration table
---@module ncine.app_configuration

---Special value for window position to ignore a coordinate.<br>
---Used in `ncine.app_configuration.window.position`.<br>
---When assigned to the `x` or `y` coordinate, the current position for that axis is preserved.
---@field ncine.window_ignore_position int

---@string file The file used when logging to file is enabled
---@field console_level (ncine.log_level) The minimum level that a log message needs to have to be printed in the console
---@field file_level (ncine.log_level) The minimum level that a log message needs to have to be written to the log file
---@number frame_timer_interval The interval for frame timer accumulation average and log
---@bool console_colors Enables the use of colors for console log messages
---@table ncine.app_configuration.logging Logging related configuration

---@field resolution (ncine.vec2) The window size or the resolution of the closest video mode if going full screen.<br>If either `x` or `y` are zero or negative, the application will go in full screen at the current screen resolution.
---@number refresh_rate The refresh rate of the screen mode used to go in full screen.<br>If it is zero or negative, when requesting a full screen mode the current refresh rate will not be changed.
---@field position (ncine.vec2) The window position coordinates in the virtual screen made of all the connected monitors.<br>You can also use `ncine.window_ignore_position` for one or both coordinates.
---@bool fullscreen Enables fullscreen mode for the application window
---@bool resizable Allows the window to be resized by the user
---@bool scaling Enables automatic window size scaling according to the display factor
---@string title The window title
---@string icon The window icon filename
---@table ncine.app_configuration.window Window related configuration

---@bool vsync Enables vertical synchronization
---@int frame_limit The maximum number of frames to render per second or 0 for no limit
---@field opengl_caps ncine.app_configuration.graphics.opengl_caps @subtable
---@field opengl ncine.app_configuration.graphics.opengl @subtable
---@table ncine.app_configuration.graphics Graphics related configuration

---@bool core_profile Whether the OpenGL context uses a core profile (read-only)
---@bool forward_compatible Whether the OpenGL context is forward-compatible (read-only)
---@int major_version The major version number of the OpenGL context (read-only)
---@int minor_version The minor version number of the OpenGL context (read-only)
---@table ncine.app_configuration.graphics.opengl_caps OpenGL context capabilities

---@bool debug_context Enables the OpenGL debug context for additional validation and diagnostics
---@bool buffer_mapping Enables buffer mapping for updating OpenGL buffers
---@int vbo_size The maximum size in bytes for each VBO collecting geometry data
---@int ibo_size The maximum size in bytes for each IBO collecting index data
---@int vao_pool_size The maximum size for the pool of VAOs
---@int rendercommand_pool_size The initial size for the pool of render commands
---@bool defer_shader_queries Defers shader program validation and introspection until first use
---@int fixed_batch_size Fixed size of render commands to be collected for batching on Emscripten and ANGLE
---@bool binary_shader_cache Enables the cache for loading and saving binary shader programs
---@string shader_cache_dirname The directory name (not the complete path) for the binary shaders cache
---@bool compile_batched_shaders_twice Compiles batched shaders twice on devices with small UBO limits to determine maximum batch size
---@table ncine.app_configuration.graphics.opengl OpenGL related configuration

---@bool enabled Enables the audio subsystem
---@int frequency The output frequency of the audio system
---@int mono_sources The number of mono audio sources
---@int stereo_sources The number of stereo audio sources
---@table ncine.app_configuration.audio Audio related configuration

---@bool enabled Enables the job system
---@int num_threads The number of threads in the job system pool, or 0 for an automatic value
---@table ncine.app_configuration.job_system Job system related configuration

---@bool scenegraph Enables scenegraph-based rendering
---@bool debug_overlay Enables the debug overlay
---@table ncine.app_configuration.features Features switches

---@field logging ncine.app_configuration.logging @subtable
---@field window ncine.app_configuration.window @subtable
---@field graphics ncine.app_configuration.graphics @subtable
---@field audio ncine.app_configuration.audio @subtable
---@field job_system ncine.app_configuration.job_system @subtable
---@field features ncine.app_configuration.features @subtable
---@number profile_text_update_time The update time in seconds for the profile text nodes (read-only)
---@string data_path The data path
---@int argc The number of arguments passed on the command line (read-only)
---@field argv (string[]) The array of arguments passed on the command line (read-only)
---@table ncine.app_configuration
