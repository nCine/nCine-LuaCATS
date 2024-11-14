---@meta

---The entry point for the Lua API of the nCine.
---
---Don't forget to call [`ncine.start()`](lua://ncine.start) if needed.
---
---[Website](https://ncine.github.io)
---@class ncine
---@field _VERSION string # The version string
---@field _GITREVCOUNT string # The git revision count
---@field _GITSHORTHASH string # The git short hash
---@field _GITLATCOMMITDATE string # The git last commit date
---@field _GITBRANCH string # The git branch
---@field _GITTAG string # The git tag
---@field MINGW boolean # True if running on MinGW
---@field WINDOWS boolean # True if running on Windows
---@field MACOS boolean # True if running on macOS
---@field ANDROID boolean # True if running on Android
---@field EMSCRIPTEN boolean # True if running on the web via Emscripten
---@field LINUX boolean # True if running on Linux
---@field DEBUG boolean # True if linked with a debug build of the nCine library
ncine = {}

---A callback that is called once, before the nCine is initialized.
---
---It can be used to change the initialization settings.
---@param cfg ncine.app_configuration # The configuration table
function ncine.on_pre_init(cfg) end

---A callback that is called once, after the nCine has been initialized.
---
---It can be used to construct the object required by the scene.
function ncine.on_init() end

---A callback that is called every time a new frame starts
function ncine.on_frame_start() end

---A callback that is called every time the scenegraph has been traversed and all nodes have been transformed
function ncine.on_post_update() end

---A callback that is called every time a viewport is going to be drawn
---@param viewport viewportObj # The viewport currently being drawn
function ncine.on_draw_viewport(viewport) end

---A callback that is called at the end of each frame, just before swapping drawing buffers
function ncine.on_frame_end() end

---A callback that is called every time the window is resized (by the system or the user)
---@param width integer # The new width of the window
---@param height integer # The new height of the window
function ncine.on_resize_window(width, height) end

---A callback that is called every time the window scaling factor changes
---@param factor number # The new scaling factor
function ncine.on_change_scaling_factor(factor) end

---A callback that is called once, before the nCine shuts down
---
---It can be used to destroy objects constructed in `ncine.on_init()`
function ncine.on_shutdown() end

---A callback that is called every time the application needs to be suspended
function ncine.on_suspend() end

---A callback that is called every time the application resumes from suspension
function ncine.on_resume() end

---Starts the application game loop
---
---This function should be called after defining the required callback functions, and only if launching the script from the stand-alone `lua` interpreter.
---
---For example:
---```lua
---if ncine == nil then
---	local names = { "ncine", "ncine_d", "libncine", "libncine_d" }
---	for i, name in ipairs(names) do
---		local ok, mod = pcall(require, name)
---		if ok then
---			break
---		end
---	end
---	needs_start = true
---end
---
---function nc.on_init()
---	[...]
---end
---
---function nc.on_frame_start()
---	[...]
---end
---
---if needs_start then
---	nc.start()
---end
---```
function ncine.start() end
