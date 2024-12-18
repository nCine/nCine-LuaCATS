---The entry point for the Lua API of the nCine.
---
---Don't forget to call @{start} if needed.
---@module ncine

---A table of useful run-time constants
---@string _VERSION The version string
---@string _GITREVCOUNT The git revision count
---@string _GITSHORTHASH The git short hash
---@string _GITLATCOMMITDATE The git last commit date
---@string _GITBRANCH The git branch
---@string _GITTAG The git tag
---@bool MINGW True if running on MinGW
---@bool WINDOWS True if running on Windows
---@bool MACOS True if running on macOS
---@bool ANDROID True if running on Android
---@bool EMSCRIPTEN True if running on the web via Emscripten
---@bool LINUX True if running on Linux
---@bool DEBUG True if linked with a debug build of the nCine library
---@table ncine

---A callback that is called once, before the nCine is initialized.
---
---It can be used to change the initialization settings.
---@tparam ncine.app_configuration cfg The configuration table
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
---@tparam viewportObj viewport The viewport currently being drawn
function ncine.on_draw_viewport(viewport) end

---A callback that is called at the end of each frame, just before swapping drawing buffers
function ncine.on_frame_end() end

---A callback that is called every time the window is resized (by the system or the user)
---@tparam integer width The new width of the window
---@tparam integer height The new height of the window
function ncine.on_resize_window(width, height) end

---A callback that is called every time the window scaling factor changes
---@tparam number factor The new scaling factor
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
---    if ncine == nil then
---      local names = { "ncine", "ncine_d", "libncine", "libncine_d" }
---      for i, name in ipairs(names) do
---        local ok, mod = pcall(require, name)
---        if ok then
---          break
---        end
---      end
---      needs_start = true
---    end
---
---    function nc.on_init()
---      [...]
---    end
---
---    function nc.on_frame_start()
---      [...]
---    end
---
---    if needs_start then
---      nc.start()
---    end
function ncine.start() end
