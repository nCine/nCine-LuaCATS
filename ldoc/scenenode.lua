---The table containing scenenode related functions.
---
--- A scene node is the base class for many other classes that can be organized in a scene graph.
---@module ncine.scenenode

---The light user data of a scenenode object
---@table scenenodeObj

---Visit order states (enumeration)
ncine.visit_order_state = {
	ENABLED = 0,
	DISABLED = 1,
	SAME_AS_PARENT = 2,
}

---Returns the parent node, if there is any
---@tparam scenenodeObj node
---@treturn scenenodeObj|nil
function ncine.scenenode.get_parent(node) end

---Sets the parent node
---@tparam scenenodeObj node
---@tparam scenenodeObj|nil parent
---@treturn boolean `true` if the parent has been set
function ncine.scenenode.set_parent(node, parent) end

---Returns the number of children
---@tparam scenenodeObj node
---@treturn integer
function ncine.scenenode.num_children(node) end

---Returns the n-th child
---@tparam scenenodeObj node
---@tparam integer index
---@treturn scenenodeObj|nil
function ncine.scenenode.get_child(node, index) end

---Returns the array of children
---@tparam scenenodeObj node
---@treturn scenenodeObj[]
function ncine.scenenode.get_children(node) end

---Adds a child node to the specified parent
---@tparam scenenodeObj parent
---@tparam scenenodeObj node
---@treturn boolean `true` if the node has been added
function ncine.scenenode.add_child(parent, node) end

---Removes a child node from the specified parent
---@tparam scenenodeObj parent
---@tparam scenenodeObj node
---@treturn boolean `true` if the node has been removed
function ncine.scenenode.remove_child(parent, node) end

---Removes a child node at the specified index from the specified parent
---@tparam scenenodeObj parent
---@tparam integer index
---@treturn boolean `true` if the node has been removed
function ncine.scenenode.remove_child_at(parent, index) end

---Removes all children from the specified parent
---@tparam scenenodeObj parent
---@treturn boolean `true` if there were at least one node to remove
function ncine.scenenode.remove_all_children(parent) end

---Unlinks a child node from the specified parent.
---
---The children of the unlinked node will be reparented with the grandparent node.
---@tparam scenenodeObj parent
---@tparam scenenodeObj node
---@treturn boolean `true` if the node has been unlinked
function ncine.scenenode.unlink_child(parent, node) end

---Returns the order index of this node among its siblings
---@tparam scenenodeObj node
---@treturn integer The order index or zero if the node has no parent
function ncine.scenenode.get_child_order_index(node) end

---Swaps two children at the specified indices
---@tparam scenenodeObj parent
---@tparam integer firstIndex
---@tparam integer secondIndex
---@treturn boolean `true` if the two nodes have been swapped
function ncine.scenenode.swap_children(parent, firstIndex, secondIndex) end

---Brings this node one node forward in the parent's list of children
---@tparam scenenodeObj node
---@treturn boolean `true` if the node has been brought one position forward
function ncine.scenenode.swap_node_forward(node) end

---Brings this node one node back in the parent's list of children
---@tparam scenenodeObj node
---@treturn boolean `true` if the node has been brought one position back
function ncine.scenenode.swap_node_back(node) end

---Returns the visit order state for the specified node
---@tparam scenenodeObj node
---@treturn ncine.visit_order_state
function ncine.scenenode.get_visit_order_state(node) end

---Sets the visit order state for the specified node
---@tparam scenenodeObj node
---@tparam ncine.visit_order_state state
function ncine.scenenode.set_visit_order_state(node, state) end

---Returns the visit drawing order of the node
---@tparam scenenodeObj node
---@treturn integer
function ncine.scenenode.get_visit_order_index(node) end

---Returns `true` if the node is both updating and drawing
---@tparam scenenodeObj node
---@treturn boolean
function ncine.scenenode.is_enabled(node) end

---Enables or disables both node updating and drawing
---@tparam scenenodeObj node
---@tparam boolean enabled
function ncine.scenenode.set_enabled(node, enabled) end

---Returns the node position relative to its parent
---@tparam scenenodeObj node
---@treturn ncine.vec2
function ncine.scenenode.get_position(node) end

---Sets a new position for the node
---@tparam scenenodeObj node
---@tparam ncine.vec2 pos
function ncine.scenenode.set_position(node, pos) end

---Sets a new position for the node
---@tparam scenenodeObj node
---@tparam number x
---@tparam number y
function ncine.scenenode.set_position(node, x, y) end

---Returns the absolute transformation anchor point in pixels
---@tparam scenenodeObj node
---@treturn ncine.vec2
function ncine.scenenode.get_abs_anchor_point(node) end

---Sets the absolute transformation anchor point in pixels
---@tparam scenenodeObj node
---@tparam ncine.vec2 pos
function ncine.scenenode.set_abs_anchor_point(node, pos) end

---Sets the absolute transformation anchor point in pixels
---@tparam scenenodeObj node
---@tparam number x
---@tparam number y
function ncine.scenenode.set_abs_anchor_point(node, x, y) end

---Returns the node scale factors
---@tparam scenenodeObj node
---@treturn ncine.vec2
function ncine.scenenode.get_scale(node) end

---Sets the node scale X factor
---@tparam scenenodeObj node
---@tparam number factor
function ncine.scenenode.set_scale_x(node, factor) end

---Sets the node scale Y factor
---@tparam scenenodeObj node
---@tparam number factor
function ncine.scenenode.set_scale_y(node, factor) end

---Sets both node scale factors to the specified value
---@tparam scenenodeObj node
---@tparam number factor
function ncine.scenenode.set_scale(node, factor) end

---Returns the node rotation in degress
---@tparam scenenodeObj node
---@treturn number
function ncine.scenenode.get_rotation(node) end

---Sets the node rotation in degrees
---@tparam scenenodeObj node
---@tparam number rot The amount of degrees
function ncine.scenenode.set_rotation(node, rot) end

---Returns the node color
---@tparam scenenodeObj node
---@treturn ncine.color
function ncine.scenenode.get_color(node) end

---Sets the node color
---@tparam scenenodeObj node
---@tparam ncine.color color
function ncine.scenenode.set_color(node, color) end

---Sets the node color through its components
---@tparam scenenodeObj node
---@tparam number red
---@tparam number green
---@tparam number blue
---@tparam number alpha
function ncine.scenenode.set_color(node, red, green, blue, alpha) end

---Returns the node alpha color component
---@tparam scenenodeObj node
---@treturn number
function ncine.scenenode.get_alpha(node) end

---Sets the node alpha color component
---@tparam scenenodeObj node
---@tparam number alpha
function ncine.scenenode.set_alpha(node, alpha) end

---Returns the node rendering layer
---@tparam scenenodeObj node
---@treturn integer
function ncine.scenenode.get_layer(node) end

---Sets the node rendering layer.
---
---The lowest value (bottom) is 0 and the highest one (top) is 65535.
---
---When the value is 0, the final layer value is inherited from the parent.
---@tparam scenenodeObj node
---@tparam integer layer
function ncine.scenenode.set_layer(node, layer) end

---Returns the last frame in which any of the viewports have updated this node
---@tparam scenenodeObj node
---@treturn integer
function ncine.scenenode.get_last_frame_updated(node) end
