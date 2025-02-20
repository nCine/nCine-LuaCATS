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
	RIGHT = 2,
	FOURTH = 3,
	FIFTH = 4,
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
	UNKNOWN = -1,
	A = 0,
	B = 1,
	X = 2,
	Y = 3,
	BACK = 4,
	GUIDE = 5,
	START = 6,
	LSTICK = 7,
	RSTICK = 8,
	LBUMPER = 9,
	RBUMPER = 10,
	DPAD_UP = 11,
	DPAD_DOWN = 12,
	DPAD_LEFT = 13,
	DPAD_RIGHT = 14,
	MISC1 = 15,
	PADDLE1 = 16,
	PADDLE2 = 17,
	PADDLE3 = 18,
	PADDLE4 = 19,
}

---Table with information about a joystick mapped button event
---@int joy_id
---@field button (ncine.joy_button)
---@table joy_mapped_button_event

---Joystick axis names (enumeration)
ncine.joy_axis = {
	UNKNOWN = -1,
	LX = 0,
	LY = 1,
	RX = 2,
	RY = 3,
	LTRIGGER = 4,
	RTRIGGER = 5,
}

---Table with information about a joystick mapped axis event
---@int joy_id
---@field axis (ncine.joy_axis)
---@number value
---@table joy_mapped_axis_event

---Table with information about a joystick connection event
---@int joy_id
---@table joy_connection_event
