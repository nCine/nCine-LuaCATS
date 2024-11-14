---@meta

--The light user data of a drawable node object
---@class drawablenodeObj: scenenodeObj

---Blending presets
---@enum ncine.blending_preset
ncine.blending_preset = {
	DISABLED = 0,
	ALPHA = 1,
	PREMULTIPLIED_ALPHA = 2,
	ADDITIVE = 3,
	MULTIPLY = 4,
}

---Blending factors
---@enum ncine.blending_factor
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

---The table containing drawable node related functions
---@class ncine.drawable_node: ncine.scenenode
ncine.drawable_node = {}

---Returns the width of the node area
---@param node drawablenodeObj
---@return number
function ncine.drawable_node.get_width(node) end

---Returns the height of the node area
---@param node drawablenodeObj
---@return number
function ncine.drawable_node.get_height(node) end

---Returns the size of the node area
---@param node drawablenodeObj
---@return ncine.vec2
function ncine.drawable_node.get_size(node) end

---Returns the transformation anchor point
---@param node drawablenodeObj
---@return ncine.vec2
function ncine.drawable_node.get_anchor_point(node) end

---Sets the transformation anchor point
---@param node drawablenodeObj
---@param anchor_point ncine.vec2
function ncine.drawable_node.set_anchor_point(node, anchor_point) end

---Sets the transformation anchor point
---@param node drawablenodeObj
---@param x number
---@param y number
function ncine.drawable_node.set_anchor_point(node, x, y) end

---Returns `true` if the node renders with blending enabled
---@param node drawablenodeObj
---@return boolean
function ncine.drawable_node.is_blending_enabled(node) end

---Sets the blending state for node rendering
---@param node drawablenodeObj
---@param enabled boolean
function ncine.drawable_node.set_blending_enabled(node, enabled) end

---eturns the source blending factor
---@param node drawablenodeObj
---@return ncine.blending_factor
function ncine.drawable_node.get_src_blending_factor(node) end

---Returns the destination blending factor
---@param node drawablenodeObj
---@return ncine.blending_factor
function ncine.drawable_node.get_dest_blending_factor(node) end

---Sets a blending preset for source and destination blending factors
---@param node drawablenodeObj
---@param preset ncine.blending_preset
function ncine.drawable_node.set_blending_preset(node, preset) end

---Sets a specific source and destination blending factors
---@param node drawablenodeObj
---@param src_factor ncine.blending_factor
---@param dest_factor ncine.blending_factor
function ncine.drawable_node.set_blending_factors(node, src_factor, dest_factor) end

---Returns the last frame in which any of the viewports have rendered this node (node was not culled)
---@param node drawablenodeObj
---@return integer
function ncine.drawable_node.get_last_frame_rendered(node) end

---Returns the axis-aligned bounding box of the node area in the last frame
---@param node drawablenodeObj
---@return ncine.rect
function ncine.drawable_node.get_aabb(node) end
