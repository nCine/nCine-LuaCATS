---The application configuration table
---@module ncine.app_configuration

---@string data_path The data path
---@string log_file The file used when logging to file is enabled
---@field console_log_level (ncine.log_level) The minimum level that a log message needs to have to be printed in the console
---@field file_log_level (ncine.log_level) The minimum level that a log message needs to have to be written to the log file
---@number log_interval The interval for frame timer accumulation average and log
---@field resolution (ncine.vec2) The window size or the resolution of the closest video mode if going full screen.<br>If either `x` or `y` are zero or negative, the application will go in full screen at the current screen resolution.
---@number refresh_rate The refresh rate of the screen mode used to go in full screen.<br>If it is zero or negative, when requesting a full screen mode the current refresh rate will not be changed.
---@field window_position (ncine.vec2) The window position coordinates in the virtual screen made of all the connected monitors
---@bool full_screen The flag is `true` if the application is going to be in full screen mode
---@bool resizable The flag is `true` if the window is going to be resizable
---@bool window_scaling The flag is `true` if the window size is automatically scaled according to the display factor
---@int frame_limit The maximum number of frames to render per second or 0 for no limit
---@string window_title The window title
---@string window_icon The window icon filename
---@bool buffer_mapping The flag is `true` if mapping is used to update OpenGL buffers
---@bool defer_shader_queries The flag is `true` when error checking and introspection of shader programs are deferred to first use
---@int fixed_batch_size Fixed size of render commands to be collected for batching on Emscripten and ANGLE
---@bool binary_shader_cache The flag is `true` if the shader cache is enabled to load and save binary shader programs
---@string shader_cache_dirname The directory name (not the complete path) for the binary shaders cache
---@bool compile_batched_shaders_twice The flag is `true` if, on devices with UBOs smaller than 64 KB, batched shaders will be compiled twice to identify their maximum batch size
---@int vbo_size The maximum size in bytes for each VBO collecting geometry data
---@int ibo_size The maximum size in bytes for each IBO collecting index data
---@int vao_pool_size The maximum size for the pool of VAOs
---@int rendercommand_pool_size The initial size for the pool of render commands
---@int output_audio_frequency The output frequency of the audio system
---@int mono_audio_sources The number of mono audio sources
---@int stereo_audio_sources The number of stereo audio sources
---@bool debug_overlay The flag is `true` if the debug overlay is enabled
---@bool audio The flag is `true` if the audio subsystem is enabled
---@bool threads The flag is `true` if the threading subsystem is enabled
---@bool scenegraph The flag is `true` if the scenegraph based rendering is enabled
---@bool vsync The flag is `true` if the vertical synchronization is enabled
---@bool gl_debug_context The flag is `true` if the OpenGL debug context is enabled
---@bool console_colors The flag is `true` if console log messages should use colors
---@bool opengl_core_profile True if the OpenGL profile is going to be core (read-only)
---@bool opengl_forward_compatible True if the OpenGL context is going to be forward compatible (read-only)
---@int opengl_major_version The major version number of the OpenGL context (read-only)
---@int opengl_minor_version The minor version number of the OpenGL context (read-only)
---@number profile_text_update_time The update time in seconds for the profile text nodes (read-only)
---@int argc The number of arguments passed on the command line
---@field argv (string[]) The array of arguments passed on the command line
---@table ncine.app_onfiguration