---The table containing the input manager related functions
---@module ncine.input

---The light user data of a keyboard state object
---@table keystateObj

---The light user data of a joystick state object
---@table joystickstateObj

---The light user data of a mapped joystick state object
---@table joymappedstateObj

---Table with information about the mouse state
---@int x Pointer position on the X axis
---@int y Pointer position on the Y axis
---@bool left_pressed It is `true` if the left mouse button is pressed
---@bool middle_pressed It is `true` if the middle mouse button is pressed
---@bool right_pressed It is `true` if the right mouse button is pressed
---@bool fourth_pressed It is `true` if the fourth mouse button is pressed
---@bool fifth_pressed It is `true` if the fifth mouse button is pressed
---@table mouse_state

---Mouse cursor modes (enumeration)
ncine.mouse_cursor_mode = {
	NORMAL = 0,
	HIDDEN = 1,
	DISABLED = 2,
}

---Joystick dead zone values for various axes.
---
---From `XInput.h` in DirectX SDK.
ncine.joy_dead_zone = {
	LEFT_STICK = 7849 / 32767.0,
	RIGHT_STICK = 8689 / 32767.0,
	TRIGGER = 30 / 32767.0,
}

---Returns current mouse state
---@treturn mouse_state
function ncine.input.mouse_state() end

---Returns current keyboard state
---@treturn keystateObj
function ncine.input.key_state() end

---Returns `true` if the specified joystick is connected
---@tparam integer joy_id
---@treturn boolean
function ncine.input.joy_present(joy_id) end

---Returns the name of the specified joystick
---@tparam integer joy_id
---@treturn string
function ncine.input.joy_name(joy_id) end

---Returns the GUID of the specified joystick
---@tparam integer joy_id
---@treturn string
function ncine.input.joy_guid(joy_id) end

---Returns the number of available buttons for the specified joystick
---@tparam integer joy_id
---@treturn integer
function ncine.input.joy_num_buttons(joy_id) end

---Returns the number of available hats for the specified joystick
---@tparam integer joy_id
---@treturn integer
function ncine.input.joy_num_hats(joy_id) end

---Returns the number of available axes for the specified joystick
---@tparam integer joy_id
---@treturn integer
function ncine.input.joy_num_axes(joy_id) end

---Returns the state of the joystick
---@treturn joystickstateObj
function ncine.input.joy_state() end

---Returns `true` if the joystick has a valid mapping configuration
---@tparam integer joy_id
---@treturn boolean
function ncine.input.joy_mapped(joy_id) end

---Returns the state of the mapped joystick
---@treturn joymappedstateObj
function ncine.input.joymapped_state() end

---Modifies the joystick axis vector to account for a dead zone
---@tparam ncine.vec2 joy_vector
---@tparam number deadzone_value
function ncine.input.deadzone_normalize(joy_vector, deadzone_value) end

---Adds joystick mapping configurations from a text file
---@tparam string filename
function ncine.input.add_joymappings_from_file(filename) end

---Adds joystick mapping configurations from a strings array
---@tparam string[] strings
function ncine.input.add_joymappings_from_strings(strings) end

---Returns the current number of valid joystick mappings
---@treturn integer
function ncine.input.num_joymappings(strings) end

---Returns current mouse cursor mode
---@treturn ncine.mouse_cursor_mode
function ncine.input.get_mouse_cursor_mode(joy_id) end

---Sets the mouse cursor mode
---@tparam ncine.mouse_cursor_mode mouse_cursor_mode
function ncine.input.set_mouse_cursor_mode(mouse_cursor_mode) end

-- Defined in `LuaKeyboardEvents.cpp`

---Returns `true` if the specified key is down this frame
---@tparam keystateObj key_state
---@tparam integer keysym
---@treturn boolean
function ncine.input.is_key_down(key_state, keysym) end

---Returns `true` if the specified key went from not down to down this frame
---@tparam keystateObj key_state
---@tparam integer keysym
---@treturn boolean
function ncine.input.is_key_pressed(key_state, keysym) end

---Returns `true` if the specified key went from down to not down this frame
---@tparam keystateObj key_state
---@tparam integer keysym
---@treturn boolean
function ncine.input.is_key_released(key_state, keysym) end

-- Defined in `LuaJoystickEvents.cpp`

---Returns `true` if the specified joystick button is pressed
---@tparam joystickstateObj joystick_state
---@tparam integer button_id
---@treturn boolean
function ncine.input.joy_button_pressed(joystick_state, button_id) end

---Returns `true` if the specified mapped joystick button is pressed
---@tparam joymappedstateObj joystick_state
---@tparam ncine.joy_button button_name
---@treturn boolean
function ncine.input.joy_button_pressed(joystick_state, button_name) end

---Returns the state of the specified hat
---@tparam joystickstateObj joystick_state
---@tparam integer hat_id
---@treturn ncine.joy_hat_state
function ncine.input.joy_hat_state(joystick_state, hat_id) end

---Returns a value between `-32768` and `32767` for a joystick axis
---@tparam joystickstateObj joystick_state
---@tparam integer axis_id
---@treturn integer
function ncine.input.joy_axis_value(joystick_state, axis_id) end

---Returns the value of the specified mapped joystick axis
---@tparam joymappedstateObj joystick_state
---@tparam ncine.joy_axis axis_name
---@treturn number
function ncine.input.joy_axis_value(joystick_state, axis_name) end

---Returns a normalized value between `-1.0` and `1.0` for a joystick axis
---@tparam joystickstateObj joystick_state
---@tparam integer axis_id
---@treturn number
function ncine.input.joy_axis_normvalue(joystick_state, axis_id) end
