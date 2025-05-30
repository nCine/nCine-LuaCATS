---@meta

---The light user data of a mouse state object
---@class mousestateObj: lightuserdata

---The light user data of a keyboard state object
---@class keystateObj: lightuserdata

---The light user data of a joystick state object
---@class joystickstateObj: lightuserdata

---The light user data of a mapped joystick state object
---@class joymappedstateObj: lightuserdata

---Table with information about the mouse state
---
---Only used in the `on_mouse_moved()` callback event.
---@class mouse_state
---@field x integer # Pointer position on the X axis
---@field y integer # Pointer position on the Y axis
---@field is_left_down boolean # It is `true` if the left mouse button is down
---@field is_middle_down boolean # It is `true` if the middle mouse button is down
---@field is_right_down boolean # It is `true` if the right mouse button is down
---@field is_fourth_down boolean # It is `true` if the fourth mouse button is down
---@field is_fifth_down boolean # It is `true` if the fifth mouse button is down
mouse_state = {}

---Mouse cursor modes
---@enum ncine.mouse_cursor_mode
ncine.mouse_cursor_mode = {
	NORMAL = 0,
	HIDDEN = 1,
	DISABLED = 2,
}

---Joystick dead zone values for various axes
---
---From `XInput.h` in DirectX SDK
ncine.joy_dead_zone = {
	LEFT_STICK = 7849 / 32767.0,
	RIGHT_STICK = 8689 / 32767.0,
	TRIGGER = 30 / 32767.0,
}

---The maximum vibration value supported by the backend (65535 on SDL2 and 255 on Android)
---
---The reciprocal of this number can be used as the vibration resolution value.
ncine.joy_max_vibration_value = 65535;

---The table containing the input manager related functions
---@class ncine.input
ncine.input = {}

---Returns current mouse state
---@return mousestateObj
function ncine.input.mouse_state() end

---Returns current keyboard state
---@return keystateObj
function ncine.input.key_state() end

---Returns `true` if the specified joystick is connected
---@param joy_id integer
---@return boolean
function ncine.input.is_joy_present(joy_id) end

---Returns the name of the specified joystick
---@param joy_id integer
---@return string
function ncine.input.joy_name(joy_id) end

---Returns the GUID of the specified joystick
---@param joy_id integer
---@return string
function ncine.input.joy_guid(joy_id) end

---Returns the number of available buttons for the specified joystick
---@param joy_id integer
---@return integer
function ncine.input.joy_num_buttons(joy_id) end

---Returns the number of available hats for the specified joystick
---@param joy_id integer
---@return integer
function ncine.input.joy_num_hats(joy_id) end

---Returns the number of available axes for the specified joystick
---@param joy_id integer
---@return integer
function ncine.input.joy_num_axes(joy_id) end

---Returns the state of the joystick
---@return joystickstateObj
function ncine.input.joy_state() end

---Returns `true` if the joystick has a valid mapping configuration
---@param joy_id integer
---@return boolean
function ncine.input.is_joy_mapped(joy_id) end

---Returns the state of the mapped joystick
---@return joymappedstateObj
function ncine.input.joy_mapped_state() end

---Modifies the joystick axis vector to account for a dead zone
---@param joy_vector ncine.vec2
---@param deadzone_value number
function ncine.input.deadzone_normalize(joy_vector, deadzone_value) end

---Adds joystick mapping configurations from a text file
---@param filename string
function ncine.input.add_joymappings_from_file(filename) end

---Adds joystick mapping configurations from a strings array
---@param strings string[]
function ncine.input.add_joymappings_from_strings(strings) end

---Returns the current number of valid joystick mappings
---@return integer
function ncine.input.num_joymappings(strings) end

---Returns `true` if the specified joystick supports vibration
---@param joy_id integer
---@return boolean
function ncine.input.has_joy_vibration(joy_id) end

---Vibrates the low (left) and high (right) frequency motors for the specified number of milliseconds.
---
---Intensity goes from 0 to 1. Each call to this function cancels any previous vibration effect, and calling it with zero intensity stops any vibrations.
---@param joy_id integer
---@param low_freq_intensity number An intensity value from 0 to 1 for the low frequency motor (left)
---@param high_freq_intensity number An intensity value from 0 to 1 for the high frequency motor (right)
---@param duration integer A time duration in milliseconds
function ncine.input.joy_vibrate(joy_id, low_freq_intensity, high_freq_intensity, duration) end

---Returns current mouse cursor mode
---@return ncine.mouse_cursor_mode
function ncine.input.get_mouse_cursor_mode(joy_id) end

---Sets the mouse cursor mode
---@param mouse_cursor_mode ncine.mouse_cursor_mode
function ncine.input.set_mouse_cursor_mode(mouse_cursor_mode) end

-- Defined in `LuaMouseEvents.cpp`

---Returns `true` if the specified mouse button is down this frame
---@param mouse_state mousestateObj
---@param button ncine.mouse_button
---@return boolean
function ncine.input.is_mouse_button_down(mouse_state, button) end

---Returns `true` if the specified mouse button went from not down to down this frame
---@param mouse_state mousestateObj
---@param button ncine.mouse_button
---@return boolean
function ncine.input.is_mouse_button_pressed(mouse_state, button) end

---Returns `true` if the specified mouse button went from down to not down this frame
---@param mouse_state mousestateObj
---@param button ncine.mouse_button
---@return boolean
function ncine.input.is_mouse_button_released(mouse_state, button) end

-- Defined in `LuaKeyboardEvents.cpp`

---Returns `true` if the specified key is down this frame
---@param key_state keystateObj
---@param keysym integer
---@return boolean
function ncine.input.is_key_down(key_state, keysym) end

---Returns `true` if the specified key went from not down to down this frame
---@param key_state keystateObj
---@param keysym integer
---@return boolean
function ncine.input.is_key_pressed(key_state, keysym) end

---Returns `true` if the specified key went from down to not down this frame
---@param key_state keystateObj
---@param keysym integer
---@return boolean
function ncine.input.is_key_released(key_state, keysym) end

-- Defined in `LuaJoystickEvents.cpp`

---Returns `true` if the specified joystick button is down this frame
---@param joystick_state joystickstateObj
---@param button_id integer
---@return boolean
function ncine.input.is_joy_button_down(joystick_state, button_id) end

---Returns `true` if the specified joystick button went from not down to down this frame
---@param joystick_state joystickstateObj
---@param button_id integer
---@return boolean
function ncine.input.is_joy_button_pressed(joystick_state, button_id) end

---Returns `true` if the specified joystick button went from down to not down this frame
---@param joystick_state joystickstateObj
---@param button_id integer
---@return boolean
function ncine.input.is_joy_button_released(joystick_state, button_id) end

---Returns `true` if the specified mapped joystick button is down this frame
---@param joystick_state joymappedstateObj
---@param button_name ncine.joy_button
---@return boolean
function ncine.input.is_joy_button_down(joystick_state, button_name) end

---Returns `true` if the specified mapped joystick button went from not down to down this frame
---@param joystick_state joymappedstateObj
---@param button_name ncine.joy_button
---@return boolean
function ncine.input.is_joy_button_pressed(joystick_state, button_name) end

---Returns `true` if the specified mapped joystick button went from down to not down this frame
---@param joystick_state joymappedstateObj
---@param button_name ncine.joy_button
---@return boolean
function ncine.input.is_joy_button_released(joystick_state, button_name) end

---Returns the state of the specified hat
---@param joystick_state joystickstateObj
---@param hat_id integer
---@return ncine.joy_hat_state
function ncine.input.joy_hat_state(joystick_state, hat_id) end

---Returns a value between `-32768` and `32767` for a joystick axis
---@param joystick_state joystickstateObj
---@param axis_id integer
---@return integer
function ncine.input.joy_axis_value(joystick_state, axis_id) end

---Returns the value of the specified mapped joystick axis
---@param joystick_state joymappedstateObj
---@param axis_name ncine.joy_axis
---@return number
function ncine.input.joy_axis_value(joystick_state, axis_name) end

---Returns a normalized value between `-1.0` and `1.0` for a joystick axis
---@param joystick_state joystickstateObj
---@param axis_id integer
---@return number
function ncine.input.joy_axis_normvalue(joystick_state, axis_id) end
