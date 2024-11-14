---@meta

---A four component vector
---@class ncine.vec4
---@field x number # The X component
---@field y number # The Y component
---@field z number # The Z component
---@field w number # The W component
ncine.vec4 = {}

---Creates a vec4 table from its components
---@param x number # The X component
---@param y number # The Y component
---@param z number # The Z component
---@param w number # The W component
---@return ncine.vec4
function ncine.vec4.create(x, y, z, w) end

---Adds two vectors together, component-wise
---@param vec0 ncine.vec4
---@param vec1 ncine.vec4
---@return ncine.vec4
function ncine.vec4.add(vec0, vec1) end

---Adds a scalar to the vector components
---@param vec0 ncine.vec4
---@param scalar number
---@return ncine.vec4
function ncine.vec4.add(vec0, scalar) end

---Subtracts the second vector from the first one, component-wise
---@param vec0 ncine.vec4
---@param vec1 ncine.vec4
---@return ncine.vec4
function ncine.vec4.sub(vec0, vec1) end

---Subtracts the scalar from the vector components
---@param vec ncine.vec4
---@param scalar number
---@return ncine.vec4
function ncine.vec4.sub(vec, scalar) end

---Multiplies two vectors together, component-wise
---@param vec0 ncine.vec4
---@param vec1 ncine.vec4
---@return ncine.vec4
function ncine.vec4.mul(vec0, vec1) end

---Multiplies the vector components by the scalar
---@param vec ncine.vec4
---@param scalar number
---@return ncine.vec4
function ncine.vec4.mul(vec, scalar) end

---Divides the first vector by the second one, component-wise
---@param vec0 ncine.vec4
---@param vec1 ncine.vec4
---@return ncine.vec4
function ncine.vec4.div(vec0, vec1) end

---Divides the vector components by the scalar
---@param vec ncine.vec4
---@param scalar number
---@return ncine.vec4
function ncine.vec4.div(vec, scalar) end

---Returns the length of the vector
---@param vec ncine.vec4
---@return number
function ncine.vec4.length(vec) end

---Returns the squared length of the vector
---@param vec ncine.vec4
---@return number
function ncine.vec4.sqrlength(vec) end

---Returns a normalized version of the vector
---@param vec ncine.vec4
---@return ncine.vec4
function ncine.vec4.normalized(vec) end

---Returns the dot product between the two vectors
---@param vec0 ncine.vec4
---@param vec1 ncine.vec4
---@return number
function ncine.vec4.dot(vec0, vec1) end
