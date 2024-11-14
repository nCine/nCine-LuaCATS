---@meta

---A two component vector
---@class ncine.vec2
---@field x number # The X component
---@field y number # The Y component
ncine.vec2 = {}

---Creates a vec2 table from its components
---@param x number # The X component
---@param y number # The Y component
---@return ncine.vec2
function ncine.vec2.create(x, y) end

---Adds two vectors together, component-wise
---@param vec0 ncine.vec2
---@param vec1 ncine.vec2
---@return ncine.vec2
function ncine.vec2.add(vec0, vec1) end

---Adds a scalar to the vector components
---@param vec0 ncine.vec2
---@param scalar number
---@return ncine.vec2
function ncine.vec2.add(vec0, scalar) end

---Subtracts the second vector from the first one, component-wise
---@param vec0 ncine.vec2
---@param vec1 ncine.vec2
---@return ncine.vec2
function ncine.vec2.sub(vec0, vec1) end

---Subtracts the scalar from the vector components
---@param vec ncine.vec2
---@param scalar number
---@return ncine.vec2
function ncine.vec2.sub(vec, scalar) end

---Multiplies two vectors together, component-wise
---@param vec0 ncine.vec2
---@param vec1 ncine.vec2
---@return ncine.vec2
function ncine.vec2.mul(vec0, vec1) end

---Multiplies the vector components by the scalar
---@param vec ncine.vec2
---@param scalar number
---@return ncine.vec2
function ncine.vec2.mul(vec, scalar) end

---Divides the first vector by the second one, component-wise
---@param vec0 ncine.vec2
---@param vec1 ncine.vec2
---@return ncine.vec2
function ncine.vec2.div(vec0, vec1) end

---Divides the vector components by the scalar
---@param vec ncine.vec2
---@param scalar number
---@return ncine.vec2
function ncine.vec2.div(vec, scalar) end

---Returns the length of the vector
---@param vec ncine.vec2
---@return number
function ncine.vec2.length(vec) end

---Returns the squared length of the vector
---@param vec ncine.vec2
---@return number
function ncine.vec2.sqrlength(vec) end

---Returns a normalized version of the vector
---@param vec ncine.vec2
---@return ncine.vec2
function ncine.vec2.normalized(vec) end

---Returns the dot product between the two vectors
---@param vec0 ncine.vec2
---@param vec1 ncine.vec2
---@return number
function ncine.vec2.dot(vec0, vec1) end
