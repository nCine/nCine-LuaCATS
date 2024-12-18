---@meta

---The light user data of a scenenode object
---@class scenenodeObj: lightuserdata

---Visit order states
---@enum ncine.visit_order_state
ncine.visit_order_state = {
	ENABLED = 0,
	DISABLED = 1,
	SAME_AS_PARENT = 2,
}

---The table containing scenenode related functions.
---
--- A scene node is the base class for many other classes that can be organized in a scene graph.
---@class ncine.scenenode
ncine.scenenode = {}

---Returns the parent node, if there is any
---@param node scenenodeObj
---@return scenenodeObj?
function ncine.scenenode.get_parent(node) end

---Sets the parent node
---@param node scenenodeObj
---@param parent? scenenodeObj
---@return boolean # `true` if the parent has been set
function ncine.scenenode.set_parent(node, parent) end

---Returns the number of children
---@param node scenenodeObj
---@return integer
function ncine.scenenode.num_children(node) end

---Returns the n-th child
---@param node scenenodeObj
---@param index integer
---@return scenenodeObj?
function ncine.scenenode.get_child(node, index) end

---Returns the array of children
---@param node scenenodeObj
---@return scenenodeObj[]
function ncine.scenenode.get_children(node) end

---Adds a child node to the specified parent
---@param parent scenenodeObj
---@param node scenenodeObj
---@return boolean # `true` if the node has been added
function ncine.scenenode.add_child(parent, node) end

---Removes a child node from the specified parent
---@param parent scenenodeObj
---@param node scenenodeObj
---@return boolean # `true` if the node has been removed
function ncine.scenenode.remove_child(parent, node) end

---Removes a child node at the specified index from the specified parent
---@param parent scenenodeObj
---@param index integer
---@return boolean # `true` if the node has been removed
function ncine.scenenode.remove_child_at(parent, index) end

---Removes all children from the specified parent
---@param parent scenenodeObj
---@return boolean # `true` if there were at least one node to remove
function ncine.scenenode.remove_all_children(parent) end

---Unlinks a child node from the specified parent
---
---The children of the unlinked node will be reparented with the grandparent node
---@param parent scenenodeObj
---@param node scenenodeObj
---@return boolean # `true` if the node has been unlinked
function ncine.scenenode.unlink_child(parent, node) end

---Returns the order index of this node among its siblings
---@param node scenenodeObj
---@return integer # The order index or zero if the node has no parent
function ncine.scenenode.get_child_order_index(node) end

---Swaps two children at the specified indices
---@param parent scenenodeObj
---@param firstIndex integer
---@param secondIndex integer
---@return boolean # `true` if the two nodes have been swapped
function ncine.scenenode.swap_children(parent, firstIndex, secondIndex) end

---Brings this node one node forward in the parent's list of children
---@param node scenenodeObj
---@return boolean # `true` if the node has been brought one position forward
function ncine.scenenode.swap_node_forward(node) end

---Brings this node one node back in the parent's list of children
---@param node scenenodeObj
---@return boolean # `true` if the node has been brought one position back
function ncine.scenenode.swap_node_back(node) end

---Returns the visit order state for the specified node
---@param node scenenodeObj
---@return ncine.visit_order_state
function ncine.scenenode.get_visit_order_state(node) end

---Sets the visit order state for the specified node
---@param node scenenodeObj
---@param state ncine.visit_order_state
function ncine.scenenode.set_visit_order_state(node, state) end

---Returns the visit drawing order of the node
---@param node scenenodeObj
---@return integer
function ncine.scenenode.get_visit_order_index(node) end

---Returns `true` if the node is both updating and drawing
---@param node scenenodeObj
---@return boolean
function ncine.scenenode.is_enabled(node) end

---Enables or disables both node updating and drawing
---@param node scenenodeObj
---@param enabled boolean
function ncine.scenenode.set_enabled(node, enabled) end

---Returns the node position relative to its parent
---@param node scenenodeObj
---@return ncine.vec2
function ncine.scenenode.get_position(node) end

---Sets a new position for the node
---@param node scenenodeObj
---@param pos ncine.vec2
function ncine.scenenode.set_position(node, pos) end

---Sets a new position for the node
---@param node scenenodeObj
---@param x number
---@param y number
function ncine.scenenode.set_position(node, x, y) end

---Returns the absolute transformation anchor point in pixels
---@param node scenenodeObj
---@return ncine.vec2
function ncine.scenenode.get_abs_anchor_point(node) end

---Sets the absolute transformation anchor point in pixels
---@param node scenenodeObj
---@param pos ncine.vec2
function ncine.scenenode.set_abs_anchor_point(node, pos) end

---Sets the absolute transformation anchor point in pixels
---@param node scenenodeObj
---@param x number
---@param y number
function ncine.scenenode.set_abs_anchor_point(node, x, y) end

---Returns the node scale factors
---@param node scenenodeObj
---@return ncine.vec2
function ncine.scenenode.get_scale(node) end

---Sets the node scale X factor
---@param node scenenodeObj
---@param factor number
function ncine.scenenode.set_scale_x(node, factor) end

---Sets the node scale Y factor
---@param node scenenodeObj
---@param factor number
function ncine.scenenode.set_scale_y(node, factor) end

---Sets both node scale factors to the specified value
---@param node scenenodeObj
---@param factor number
function ncine.scenenode.set_scale(node, factor) end

---Returns the node rotation in degress
---@param node scenenodeObj
---@return number
function ncine.scenenode.get_rotation(node) end

---Sets the node rotation in degrees
---@param node scenenodeObj
---@param rot number # The amount of degrees
function ncine.scenenode.set_rotation(node, rot) end

---Returns the node color
---@param node scenenodeObj
---@return ncine.color
function ncine.scenenode.get_color(node) end

---Sets the node color
---@param node scenenodeObj
---@param color ncine.color
function ncine.scenenode.set_color(node, color) end

---Sets the node color through its components
---@param node scenenodeObj
---@param red number
---@param green number
---@param blue number
---@param alpha number
function ncine.scenenode.set_color(node, red, green, blue, alpha) end

---Returns the node alpha color component
---@param node scenenodeObj
---@return number
function ncine.scenenode.get_alpha(node) end

---Sets the node alpha color component
---@param node scenenodeObj
---@param alpha number
function ncine.scenenode.set_alpha(node, alpha) end

---Returns the node rendering layer
---@param node scenenodeObj
---@return integer
function ncine.scenenode.get_layer(node) end

---Sets the node rendering layer
---
---The lowest value (bottom) is 0 and the highest one (top) is 65535.<br>
---When the value is 0, the final layer value is inherited from the parent.
---@param node scenenodeObj
---@param layer integer
function ncine.scenenode.set_layer(node, layer) end

---Returns the last frame in which any of the viewports have updated this node
---@param node scenenodeObj
---@return integer
function ncine.scenenode.get_last_frame_updated(node) end
