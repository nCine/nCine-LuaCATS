---@meta

---Special value for window position to ignore a coordinate.<br>
---Used in `ncine.app_configuration.window.position`.<br>
---When assigned to the `x` or `y` coordinate, the current position for that axis is preserved.
---@type integer
ncine.window_ignore_position = 2147483647

---The application configuration table
---@class ncine.app_configuration
---@field logging ncine.app_configuration.logging
---@field window ncine.app_configuration.window
---@field graphics ncine.app_configuration.graphics
---@field audio ncine.app_configuration.audio
---@field job_system ncine.app_configuration.job_system
---@field features ncine.app_configuration.features
---@field profile_text_update_time number @readonly # The update time in seconds for the profile text nodes
---@field data_path string # The data path
---@field argc integer @readonly # The number of arguments passed on the command line
---@field argv string[] @readonly # The array of arguments passed on the command line
ncine.app_configuration = {}

---Logging related configuration
---@class ncine.app_configuration.logging
---@field file string # The file used when logging to file is enabled
---@field console_level ncine.log_level # The minimum level that a log message needs to have to be printed in the console
---@field file_level ncine.log_level # The minimum level that a log message needs to have to be written to the log file
---@field frame_timer_interval number # The interval for frame timer accumulation average and log
---@field console_colors boolean # Enables the use of colors for console log messages
ncine.app_configuration.logging = {}

---Window related configuration
---@class ncine.app_configuration.window
---@field resolution ncine.vec2 # The window size or the resolution of the closest video mode if going full screen.<br>If either `x` or `y` are zero or negative, the application will go in full screen at the current screen resolution.
---@field refresh_rate number # The refresh rate of the screen mode used to go in full screen.<br>If it is zero or negative, when requesting a full screen mode the current refresh rate will not be changed.
---@field position ncine.vec2 # The window position coordinates in the virtual screen made of all the connected monitors.<br>You can also use `ncine.window_ignore_position` for one or both coordinates.
---@field fullscreen boolean # Enables fullscreen mode for the application window
---@field resizable boolean # Allows the window to be resized by the user
---@field scaling boolean # Enables automatic window size scaling according to the display factor
---@field title string # The window title
---@field icon string # The window icon filename
ncine.app_configuration.window = {}

---Graphics related configuration
---@class ncine.app_configuration.graphics
---@field vsync boolean # Enables vertical synchronization
---@field frame_limit integer # The maximum number of frames to render per second or 0 for no limit
---@field opengl_caps ncine.app_configuration.graphics.opengl_caps
---@field opengl ncine.app_configuration.graphics.opengl
ncine.app_configuration.graphics = {}

---OpenGL context capabilities
---@class ncine.app_configuration.graphics.opengl_caps
---@field core_profile boolean @readonly # Whether the OpenGL context uses a core profile
---@field forward_compatible boolean @readonly # Whether the OpenGL context is forward-compatible
---@field major_version integer @readonly # The major version number of the OpenGL context
---@field minor_version integer @readonly # The minor version number of the OpenGL context
ncine.app_configuration.graphics.opengl_caps = {}

---OpenGL related configuration
---@class ncine.app_configuration.graphics.opengl
---@field debug_context boolean # Enables the OpenGL debug context for additional validation and diagnostics
---@field buffer_mapping boolean # Enables buffer mapping for updating OpenGL buffers
---@field vbo_size integer # The maximum size in bytes for each VBO collecting geometry data
---@field ibo_size integer # The maximum size in bytes for each IBO collecting index data
---@field vao_pool_size integer # The maximum size for the pool of VAOs
---@field rendercommand_pool_size integer # The initial size for the pool of render commands
---@field defer_shader_queries boolean # Defers shader program validation and introspection until first use
---@field fixed_batch_size integer # Fixed size of render commands to be collected for batching on Emscripten and ANGLE
---@field binary_shader_cache boolean # Enables the cache for loading and saving binary shader programs
---@field shader_cache_dirname string # The directory name (not the complete path) for the binary shaders cache
---@field compile_batched_shaders_twice boolean # Compiles batched shaders twice on devices with small UBO limits to determine maximum batch size
ncine.app_configuration.graphics.opengl = {}

---Audio related configuration
---@class ncine.app_configuration.audio
---@field enabled boolean # Enables the audio subsystem
---@field frequency integer # The output frequency of the audio system
---@field mono_sources integer # The number of mono audio sources
---@field stereo_sources integer # The number of stereo audio sources
ncine.app_configuration.audio = {}

---Job system related configuration
---@class ncine.app_configuration.job_system
---@field enabled boolean # Enables the job system
---@field num_threads integer # The number of threads in the job system pool, or 0 for an automatic value
ncine.app_configuration.job_system = {}

---Features switches
---@class ncine.app_configuration.features
---@field scenegraph boolean # Enables scenegraph-based rendering
---@field debug_overlay boolean # Enables the debug overlay
ncine.app_configuration.features = {}
