---@submodule ncine.input

---Table with information about a keyboard event
---@int scancode
---@int sym
---@int mod
---@table keyboard_event

---Table with information about a text input event
---@string text
---@table text_input_event

---Table with information about a single pointer touching the screen
---@int id
---@number x
---@number y
---@table pointer

---Table with information about a screen touch event.
---
---To access a pointer table use the subscript operator:
---    local pointer0 = event[0]
---@int count
---@int action_index
---@field pointers (pointer[])
---@table touch_event

---Table with information about an accelerometer event
---@number x
---@number y
---@number z
---@table accelerometer_event

---Mouse buttons (enumeration)
ncine.mouse_button = {
	LEFT = 0,
	MIDDLE = 1,
	RIGHT = 3,
	FOURTH = 4,
	FIFTH = 5,
}

---Table with information about a mouse event
---@number x
---@number y
---@field button (ncine.mouse_button)
---@table mouse_event

---Table with information about a scroll event (mouse wheel, touchpad gesture, etc.)
---@number x
---@number y
---@table scroll_event

---Table with information about a joystick button event
---@int joy_id
---@int button_id
---@table joy_button_event

---Joystick hat states (enumeration)
ncine.joy_hat_state = {
	CENTERED = 0,
	UP = 1,
	RIGHT = 3,
	DOWN = 4,
	LEFT = 5,
	RIGHT_UP = 6,
	RIGHT_DOWN = 7,
	LEFT_UP = 8,
	LEFT_DOWN = 9,
}

---Table with information about a joystick hat event
---@int joy_id
---@int hat_id
---@field hat_state (ncine.joy_hat_state)
---@table joy_hat_event

---Table with information about a joystick axis event
---@int joy_id
---@int axis_id
---@number value
---@number norm_value
---@table joy_axis_event

---Joystick button names (enumeration)
ncine.joy_button = {
	UNKNOWN = 0,
	A = 1,
	B = 3,
	X = 4,
	Y = 5,
	BACK = 6,
	GUIDE = 7,
	START = 8,
	LSTICK = 9,
	RSTICK = 10,
	LBUMPER = 11,
	RBUMPER = 12,
	DPAD_UP = 13,
	DPAD_DOWN = 14,
	DPAD_LEFT = 15,
	DPAD_RIGHT = 16,
	MISC1 = 17,
	PADDLE1 = 18,
	PADDLE2 = 19,
	PADDLE3 = 20,
	PADDLE4 = 21,
}

---Table with information about a joystick mapped button event
---@int joy_id
---@field button (ncine.joy_button)
---@table joy_mapped_button_event

---Joystick axis names (enumeration)
ncine.joy_axis = {
	LX = 0,
	LY = 1,
	RX = 3,
	RY = 4,
	LTRIGGER = 5,
	RTRIGGER = 6,
}

---Table with information about a joystick mapped axis event
---@int joy_id
---@field axis (ncine.joy_axis)
---@number value
---@table joy_mapped_axis_event

---Table with information about a joystick connection event
---@int joy_id
---@table joy_connection_event
