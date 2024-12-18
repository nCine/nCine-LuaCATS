---@submodule ncine

---Callback function called every time a key is pressed
---@tparam keyboard_event event
function ncine.on_key_pressed(event) end

---Callback function called every time a key is released
---@tparam keyboard_event event
function ncine.on_key_released(event) end

---Callback function called every time a text input is generated
---@tparam text_input_event event
function ncine.on_text_input(event) end

---Callback function called every time the first screen touch is made
---@tparam touch_event event
function ncine.on_touch_down(event) end

---Callback function called every time the last screen touch is released
---@tparam touch_event event
function ncine.on_touch_up(event) end

---Callback function called every time a screen touch is moved
---@tparam touch_event event
function ncine.on_touch_move(event) end

---Callback function called every time a screen touch different than the first one is made
---@tparam touch_event event
function ncine.on_pointer_down(event) end

---Callback function called every time a screen touch different than the last one is released
---@tparam touch_event event
function ncine.on_pointer_up(event) end

---Callback function called at fixed time with the updated reading from the accelerometer sensor
---@tparam accelerometer_event event
function ncine.on_acceleration(event) end

---Callback function called every time a mouse button is pressed
---@tparam mouse_event event
function ncine.on_mouse_button_pressed(event) end

---Callback function called every time a mouse button is released
---@tparam mouse_event event
function ncine.on_mouse_button_released(event) end

---Callback function called every time the mouse is moved
---@tparam mouse_state event
function ncine.on_mouse_moved(event) end

---Callback function called every time a scroll input occurs (mouse wheel, touchpad gesture, etc.)
---@tparam scroll_event event
function ncine.on_scroll_input(event) end

---Callback function called every time a joystick button is pressed
---@tparam joy_button_event event
function ncine.on_joy_button_pressed(event) end

---Callback function called every time a joystick button is released
---@tparam joy_button_event event
function ncine.on_joy_button_released(event) end

---Callback function called every time a joystick hat is moved
---@tparam joy_hat_event event
function ncine.on_joy_hat_moved(event) end

---Callback function called every time a joystick axis is moved
---@tparam joy_axis_event event
function ncine.on_joy_axis_moved(event) end

---Callback function called every time a button of a joystick with mapping is pressed
---@tparam joymapped_button_event event
function ncine.on_joymapped_button_pressed(event) end

---Callback function called every time a button of a joystick with mapping is released
---@tparam joymapped_button_event event
function ncine.on_joymapped_button_released(event) end

---Callback function called every time an axis of a joystick with mapping is moved
---@tparam joymapped_axis_event event
function ncine.on_joymapped_axis_moved(event) end

---Callback function called every time a joystick is connected
---@tparam joy_connection_event event
function ncine.on_joy_connected(event) end

---Callback function called every time a joystick is disconnected
---@tparam joy_connection_event event
function ncine.on_joy_disconnected(event) end

---Callback function called when the system sends a quit event, for example when the user clicks the window close button.
---
---Returns `true` if the application should quit.
---@treturn boolean
function ncine.on_quit_request() end
