---The table containing drawable node related functions.
---
---Inherits from @{ncine.scenenode}.
---@module ncine.drawable_node

---The light user data of a drawable node object.
---
---Inherits from @{ncine.scenenode.scenenodeObj}.
---@table drawablenodeObj

---Blending presets (enumeration)
ncine.blending_preset = {
	DISABLED = 0,
	ALPHA = 1,
	PREMULTIPLIED_ALPHA = 2,
	ADDITIVE = 3,
	MULTIPLY = 4,
}

---Blending factors (enumeration)
ncine.blending_factor = {
	ZERO = 0,
	ONE = 1,
	SRC_COLOR = 2,
	ONE_MINUS_SRC_COLOR = 3,
	DST_COLOR = 4,
	ONE_MINUS_DST_COLOR = 5,
	SRC_ALPHA = 6,
	ONE_MINUS_SRC_ALPHA = 7,
	DST_ALPHA = 8,
	ONE_MINUS_DST_ALPHA = 9,
	CONSTANT_COLOR = 10,
	ONE_MINUS_CONSTANT_COLOR = 11,
	CONSTANT_ALPHA = 12,
	ONE_MINUS_CONSTANT_ALPHA = 13,
	SRC_ALPHA_SATURATE = 14,
}

---Returns the width of the node area
---@tparam drawablenodeObj node
---@treturn number
function ncine.drawable_node.get_width(node) end

---Returns the height of the node area
---@tparam drawablenodeObj node
---@treturn number
function ncine.drawable_node.get_height(node) end

---Returns the size of the node area
---@tparam drawablenodeObj node
---@treturn ncine.vec2
function ncine.drawable_node.get_size(node) end

---Returns the transformation anchor point
---@tparam drawablenodeObj node
---@treturn ncine.vec2
function ncine.drawable_node.get_anchor_point(node) end

---Sets the transformation anchor point
---@tparam drawablenodeObj node
---@tparam ncine.vec2 anchor_point
function ncine.drawable_node.set_anchor_point(node, anchor_point) end

---Sets the transformation anchor point
---@tparam drawablenodeObj node
---@tparam number x
---@tparam number y
function ncine.drawable_node.set_anchor_point(node, x, y) end

---Returns `true` if the node renders with blending enabled
---@tparam drawablenodeObj node
---@treturn boolean
function ncine.drawable_node.is_blending_enabled(node) end

---Sets the blending state for node rendering
---@tparam drawablenodeObj node
---@tparam boolean enabled
function ncine.drawable_node.set_blending_enabled(node, enabled) end

---eturns the source blending factor
---@tparam drawablenodeObj node
---@treturn ncine.blending_factor
function ncine.drawable_node.get_src_blending_factor(node) end

---Returns the destination blending factor
---@tparam drawablenodeObj node
---@treturn ncine.blending_factor
function ncine.drawable_node.get_dest_blending_factor(node) end

---Sets a blending preset for source and destination blending factors
---@tparam drawablenodeObj node
---@tparam ncine.blending_preset preset
function ncine.drawable_node.set_blending_preset(node, preset) end

---Sets a specific source and destination blending factors
---@tparam drawablenodeObj node
---@tparam ncine.blending_factor src_factor
---@tparam ncine.blending_factor dest_factor
function ncine.drawable_node.set_blending_factors(node, src_factor, dest_factor) end

---Returns the last frame in which any of the viewports have rendered this node (node was not culled)
---@tparam drawablenodeObj node
---@treturn integer
function ncine.drawable_node.get_last_frame_rendered(node) end

---Returns the axis-aligned bounding box of the node area in the last frame
---@tparam drawablenodeObj node
---@treturn ncine.rect
function ncine.drawable_node.get_aabb(node) end
