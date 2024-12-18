---The table containing rectangle related functions
---@module ncine.rect

---A rectangle in 2D
---@number x The top-left X coordinate (left with positive width)
---@number y The top-left Y coordinate (top with positive height)
---@number w The width
---@number h The height
---@table ncine.rect

---Creates a rect table from top-left point and size
---@tparam number x The top-left X coordinate (left with positive width)
---@tparam number y The top-left Y coordinate (top with positive height)
---@tparam number w The width
---@tparam number h The height
---@treturn ncine.rect
function ncine.rect.create(x, y, w, h) end

---Creates a vec2 table from center and size
---@tparam number x The center X coordinate
---@tparam number y The center Y coordinate
---@tparam number w The width
---@tparam number h The height
---@treturn ncine.rect
function ncine.rect.create_center_size(x, y, w, h) end

---Creates a vec2 table from its components
---@tparam number min_x The minimum X coordinate
---@tparam number min_y The minimum Y coordinate
---@tparam number max_x The maximum X coordinate
---@tparam number max_y The maximum Y coordinate
---@treturn ncine.rect
function ncine.rect.create_min_max(min_x, min_y, max_x, max_y) end

---Calculates the center of the rectangle
---@tparam ncine.rect rect
---@treturn ncine.vec2 The center coordinates
function ncine.vec2.get_center(rect) end

---Calculates the minimum coordinates of the rectangle
---@tparam ncine.rect rect
---@treturn ncine.vec2 The minimum coordinates
function ncine.vec2.get_min(rect) end

---Calculates the maximum coordinates of the rectangle
---@tparam ncine.rect rect
---@treturn ncine.vec2 The maximum coordinates
function ncine.vec2.get_max(rect) end

---Retains rectangle size but moves its center to another position
---@tparam ncine.rect rect
---@tparam number x
---@tparam number y
---@treturn ncine.rect
function ncine.vec2.set_center(rect, x, y) end

---Sets rectangle minimum and maximum coordinates
---@tparam number min_x
---@tparam number min_y
---@tparam number max_x
---@tparam number max_y
---@treturn ncine.rect
function ncine.rect.set_min_max(min_x, min_y, max_x, max_y) end

---Inverts rectangle size and moves (x, y) to a different angle
---@tparam ncine.rect rect
---@treturn ncine.rect
function ncine.vec2.invert_size(rect) end

---Returns `true` if the point is inside this rectangle
---@tparam ncine.rect rect
---@tparam number x
---@tparam number y
---@treturn boolean
function ncine.vec2.contains_point(rect, x, y) end

---Returns `true` if the other rectangle is contained inside this one
---@tparam ncine.rect rect0
---@tparam ncine.rect rect1
---@treturn boolean
function ncine.vec2.contains(rect0, rect1) end

---Returns `true` if this rect does overlap the other rectangle in any way
---@tparam ncine.rect rect0
---@tparam ncine.rect rect1
---@treturn boolean
function ncine.vec2.overlaps(rect0, rect1) end

---Intersects this rectangle with the other rectangle
---@tparam ncine.rect rect0
---@tparam ncine.rect rect1
---@treturn ncine.rect
function ncine.vec2.intersect(rect0, rect1) end
