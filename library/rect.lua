---@meta

---A rectangle in 2D
---@class ncine.rect
---@field x number # The top-left X coordinate (left with positive width)
---@field y number # The top-left Y coordinate (top with positive height)
---@field w number # The width
---@field h number # The height
ncine.rect = {}

---Creates a rect table from top-left point and size
---@param x number # The top-left X coordinate (left with positive width)
---@param y number # The top-left Y coordinate (top with positive height)
---@param w number # The width
---@param h number # The height
---@return ncine.rect
function ncine.rect.create(x, y, w, h) end

---Creates a vec2 table from center and size
---@param x number # The center X coordinate
---@param y number # The center Y coordinate
---@param w number # The width
---@param h number # The height
---@return ncine.rect
function ncine.rect.create_center_size(x, y, w, h) end

---Creates a vec2 table from its components
---@param min_x number # The minimum X coordinate
---@param min_y number # The minimum Y coordinate
---@param max_x number # The maximum X coordinate
---@param max_y number # The maximum Y coordinate
---@return ncine.rect
function ncine.rect.create_min_max(min_x, min_y, max_x, max_y) end

---Calculates the center of the rectangle
---@param rect ncine.rect
---@return ncine.vec2 # The center coordinates
function ncine.vec2.get_center(rect) end

---Calculates the minimum coordinates of the rectangle
---@param rect ncine.rect
---@return ncine.vec2 # The minimum coordinates
function ncine.vec2.get_min(rect) end

---Calculates the maximum coordinates of the rectangle
---@param rect ncine.rect
---@return ncine.vec2 # The maximum coordinates
function ncine.vec2.get_max(rect) end

---Retains rectangle size but moves its center to another position
---@param rect ncine.rect
---@param x number
---@param y number
---@return ncine.rect
function ncine.vec2.set_center(rect, x, y) end

---Sets rectangle minimum and maximum coordinates
---@param min_x number
---@param min_y number
---@param max_x number
---@param max_y number
---@return ncine.rect
function ncine.rect.set_min_max(min_x, min_y, max_x, max_y) end

---Inverts rectangle size and moves (x, y) to a different angle
---@param rect ncine.rect
---@return ncine.rect
function ncine.vec2.invert_size(rect) end

---Returns `true` if the point is inside this rectangle
---@param rect ncine.rect
---@param x number
---@param y number
---@return boolean
function ncine.vec2.contains_point(rect, x, y) end

---Returns `true` if the other rectangle is contained inside this one
---@param rect0 ncine.rect
---@param rect1 ncine.rect
---@return boolean
function ncine.vec2.contains(rect0, rect1) end

---Returns `true` if this rect does overlap the other rectangle in any way
---@param rect0 ncine.rect
---@param rect1 ncine.rect
---@return boolean
function ncine.vec2.overlaps(rect0, rect1) end

---Intersects this rectangle with the other rectangle
---@param rect0 ncine.rect
---@param rect1 ncine.rect
---@return ncine.rect
function ncine.vec2.intersect(rect0, rect1) end
