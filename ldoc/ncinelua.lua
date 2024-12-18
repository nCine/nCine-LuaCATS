---Additional functions available in the Lua distribution of the nCine
---@module ncinelua

---Reloads the current script if it the source file was modified.<br>
---For a fast reload to work correctly, every object should be set to `nil` after deletion.
---
---This function is only available when running a script with the `ncinelua` executable from a nCine Lua distribution or with `apptest_lua`.
function reload_script() end

---Returns `true` if the ImGui debug interface is currently not visible.
---
---This function is only available when running a script with the `ncinelua` executable from a nCine Lua distribution or with `apptest_lua`.
---@treturn boolean
function is_gui_hidden() end

---Shows or hides the ImGui debug interface.
---
---This function is only available when running a script with the `ncinelua` executable from a nCine Lua distribution or with `apptest_lua`.
---@tparam boolean show
function show_gui(show) end
