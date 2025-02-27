---@meta

---Table with information about a keyboard event
---@class keyboard_event
---@field scancode integer
---@field sym integer
---@field mod integer
keyboard_event = {}

---Table with information about a text input event
---@class text_input_event
---@field text string
text_input_event = {}

---Table with information about a single pointer touching the screen
---@class pointer
---@field id integer
---@field x number
---@field y number
pointer = {}

-- TODO: Is there a better solution for the pointers array?

---Table with information about a screen touch event
---
---To access a pointer table use the subscript operator:
---```lua
---local pointer0 = event[0]
---```
---@class touch_event
---@field count integer
---@field action_index integer
---@field pointers pointer[]
touch_event = {}

---Table with information about an accelerometer event
---@class accelerometer_event
---@field x number
---@field y number
---@field z number
accelerometer_event = {}

---Mouse buttons
---@enum ncine.mouse_button
ncine.mouse_button = {
	LEFT = 0,
	MIDDLE = 1,
	RIGHT = 2,
	FOURTH = 3,
	FIFTH = 4,
}

---Table with information about a mouse event
---@class mouse_event
---@field x number
---@field y number
---@field button ncine.mouse_button
mouse_event = {}

---Table with information about a scroll event (mouse wheel, touchpad gesture, etc.)
---@class scroll_event
---@field x number
---@field y number
scroll_event = {}

---Table with information about a joystick button event
---@class joy_button_event
---@field joy_id integer
---@field button_id integer
joy_button_event = {}

---Joystick hat states
---@enum ncine.joy_hat_state
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
---@class joy_hat_event
---@field joy_id integer
---@field hat_id integer
---@field hat_state ncine.joy_hat_state
joy_hat_event = {}

---Table with information about a joystick axis event
---@class joy_axis_event
---@field joy_id integer
---@field axis_id integer
---@field value number
---@field norm_value number
joy_axis_event = {}

---Joystick button names
---@enum ncine.joy_button
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
---@class joymapped_button_event
---@field joy_id integer
---@field button ncine.joy_button
joy_mapped_button_event = {}

---Joystick axis names
---@enum ncine.joy_axis
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
---@class joymapped_axis_event
---@field joy_id integer
---@field axis ncine.joy_axis
---@field value number
joy_mapped_axis_event = {}

---Table with information about a joystick connection event
---@class joy_connection_event
---@field joy_id integer
joy_connection_event = {}
