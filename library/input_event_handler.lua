---@meta

---Callback function called every time a key is pressed
---@param event keyboard_event
function ncine.on_key_pressed(event) end

---Callback function called every time a key is released
---@param event keyboard_event
function ncine.on_key_released(event) end

---Callback function called every time a text input is generated
---@param event text_input_event
function ncine.on_text_input(event) end

---Callback function called every time the first screen touch is made
---@param event touch_event
function ncine.on_touch_down(event) end

---Callback function called every time the last screen touch is released
---@param event touch_event
function ncine.on_touch_up(event) end

---Callback function called every time a screen touch is moved
---@param event touch_event
function ncine.on_touch_move(event) end

---Callback function called every time a screen touch different than the first one is made
---@param event touch_event
function ncine.on_pointer_down(event) end

---Callback function called every time a screen touch different than the last one is released
---@param event touch_event
function ncine.on_pointer_up(event) end

---Callback function called at fixed time with the updated reading from the accelerometer sensor
---@param event accelerometer_event
function ncine.on_acceleration(event) end

---Callback function called every time a mouse button is pressed
---@param event mouse_event
function ncine.on_mouse_button_pressed(event) end

---Callback function called every time a mouse button is released
---@param event mouse_event
function ncine.on_mouse_button_released(event) end

---Callback function called every time the mouse is moved
---@param event mouse_state
function ncine.on_mouse_moved(event) end

---Callback function called every time a scroll input occurs (mouse wheel, touchpad gesture, etc.)
---@param event scroll_event
function ncine.on_scroll_input(event) end

---Callback function called every time a joystick button is pressed
---@param event joy_button_event
function ncine.on_joy_button_pressed(event) end

---Callback function called every time a joystick button is released
---@param event joy_button_event
function ncine.on_joy_button_released(event) end

---Callback function called every time a joystick hat is moved
---@param event joy_hat_event
function ncine.on_joy_hat_moved(event) end

---Callback function called every time a joystick axis is moved
---@param event joy_axis_event
function ncine.on_joy_axis_moved(event) end

---Callback function called every time a button of a joystick with mapping is pressed
---@param event joymapped_button_event
function ncine.on_joymapped_button_pressed(event) end

---Callback function called every time a button of a joystick with mapping is released
---@param event joymapped_button_event
function ncine.on_joymapped_button_released(event) end

---Callback function called every time an axis of a joystick with mapping is moved
---@param event joymapped_axis_event
function ncine.on_joymapped_axis_moved(event) end

---Callback function called every time a joystick is connected
---@param event joy_connection_event
function ncine.on_joy_connected(event) end

---Callback function called every time a joystick is disconnected
---@param event joy_connection_event
function ncine.on_joy_disconnected(event) end

---Callback function called when the system sends a quit event, for example when the user clicks the window close button
---
---Returns `true` if the application should quit
---@return boolean
function ncine.on_quit_request() end
