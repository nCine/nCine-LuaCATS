---The table containing the input manager related functions
---@module ncine.input

---The light user data of a mouse state object
---@table mousestateObj

---The light user data of a keyboard state object
---@table keystateObj

---The light user data of a joystick state object
---@table joystickstateObj

---The light user data of a mapped joystick state object
---@table joymappedstateObj

---Table with information about the mouse state
---
---Only used in the `on_mouse_moved()` callback event.
---@int x Pointer position on the X axis
---@int y Pointer position on the Y axis
---@bool is_left_down It is `true` if the left mouse button is down
---@bool is_middle_down It is `true` if the middle mouse button is down
---@bool is_right_down It is `true` if the right mouse button is down
---@bool is_fourth_down It is `true` if the fourth mouse button is down
---@bool is_fifth_down It is `true` if the fifth mouse button is down
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

---The maximum vibration value supported by the backend (65535 on SDL2 and 255 on Android)
---
---The reciprocal of this number can be used as the vibration resolution value.
ncine.joy_max_vibration_value = 65535;

---Returns current mouse state
---@treturn mousestateObj
function ncine.input.mouse_state() end

---Returns current keyboard state
---@treturn keystateObj
function ncine.input.key_state() end

---Returns `true` if the specified joystick is connected
---@tparam integer joy_id
---@treturn boolean
function ncine.input.is_joy_present(joy_id) end

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
function ncine.input.is_joy_mapped(joy_id) end

---Returns the state of the mapped joystick
---@treturn joymappedstateObj
function ncine.input.joy_mapped_state() end

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

---Returns `true` if the specified joystick supports vibration
---@tparam integer joy_id
---@treturn boolean
function ncine.input.has_joy_vibration(joy_id) end

---Vibrates the low (left) and high (right) frequency motors for the specified number of milliseconds.
---
---Intensity goes from 0 to 1. Each call to this function cancels any previous vibration effect, and calling it with zero intensity stops any vibrations.
---@tparam integer joy_id
---@tparam number low_freq_intensity An intensity value from 0 to 1 for the low frequency motor (left)
---@tparam number high_freq_intensity An intensity value from 0 to 1 for the high frequency motor (right)
---@tparam integer duration A time duration in milliseconds
function ncine.input.joy_vibrate(joy_id, low_freq_intensity, high_freq_intensity, duration) end

---Returns current mouse cursor mode
---@treturn ncine.mouse_cursor_mode
function ncine.input.get_mouse_cursor_mode(joy_id) end

---Sets the mouse cursor mode
---@tparam ncine.mouse_cursor_mode mouse_cursor_mode
function ncine.input.set_mouse_cursor_mode(mouse_cursor_mode) end

-- Defined in `LuaMouseEvents.cpp`

---Returns `true` if the specified mouse button is down this frame
---@tparam mousestateObj mouse_state
---@tparam ncine.mouse_button button
---@treturn boolean
function ncine.input.is_mouse_button_down(mouse_state, button) end

---Returns `true` if the specified mouse button went from not down to down this frame
---@tparam mousestateObj mouse_state
---@tparam ncine.mouse_button button
---@treturn boolean
function ncine.input.is_mouse_button_pressed(mouse_state, button) end

---Returns `true` if the specified mouse button went from down to not down this frame
---@tparam mousestateObj mouse_state
---@tparam ncine.mouse_button button
---@treturn boolean
function ncine.input.is_mouse_button_released(mouse_state, button) end

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

---Returns `true` if the specified joystick button is down this frame
---@tparam joystickstateObj joystick_state
---@tparam integer button_id
---@treturn boolean
function ncine.input.is_joy_button_down(joystick_state, button_id) end

---Returns `true` if the specified joystick button went from not down to down this frame
---@tparam joystickstateObj joystick_state
---@tparam integer button_id
---@treturn boolean
function ncine.input.is_joy_button_pressed(joystick_state, button_id) end

---Returns `true` if the specified joystick button went from down to not down this frame
---@tparam joystickstateObj joystick_state
---@tparam integer button_id
---@treturn boolean
function ncine.input.is_joy_button_released(joystick_state, button_id) end

---Returns `true` if the specified mapped joystick button is down this frame
---@tparam joymappedstateObj joystick_state
---@tparam ncine.joy_button button_name
---@treturn boolean
function ncine.input.is_joy_button_down(joystick_state, button_name) end

---Returns `true` if the specified mapped joystick button went from not down to down this frame
---@tparam joymappedstateObj joystick_state
---@tparam ncine.joy_button button_name
---@treturn boolean
function ncine.input.is_joy_button_pressed(joystick_state, button_name) end

---Returns `true` if the specified mapped joystick button went from down to not down this frame
---@tparam joymappedstateObj joystick_state
---@tparam ncine.joy_button button_name
---@treturn boolean
function ncine.input.is_joy_button_released(joystick_state, button_name) end

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
