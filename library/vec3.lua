---@meta

---A three component vector
---@class ncine.vec3
---@field x number # The X component
---@field y number # The Y component
---@field z number # The Z component
ncine.vec3 = {}

---Creates a vec3 table from its components
---@param x number # The X component
---@param y number # The Y component
---@param z number # The Z component
---@return ncine.vec3
function ncine.vec3.create(x, y, z) end

---Adds two vectors together, component-wise
---@param vec0 ncine.vec3
---@param vec1 ncine.vec3
---@return ncine.vec3
function ncine.vec3.add(vec0, vec1) end

---Adds a scalar to the vector components
---@param vec0 ncine.vec3
---@param scalar number
---@return ncine.vec3
function ncine.vec3.add(vec0, scalar) end

---Subtracts the second vector from the first one, component-wise
---@param vec0 ncine.vec3
---@param vec1 ncine.vec3
---@return ncine.vec3
function ncine.vec3.sub(vec0, vec1) end

---Subtracts the scalar from the vector components
---@param vec ncine.vec3
---@param scalar number
---@return ncine.vec3
function ncine.vec3.sub(vec, scalar) end

---Multiplies two vectors together, component-wise
---@param vec0 ncine.vec3
---@param vec1 ncine.vec3
---@return ncine.vec3
function ncine.vec3.mul(vec0, vec1) end

---Multiplies the vector components by the scalar
---@param vec ncine.vec3
---@param scalar number
---@return ncine.vec3
function ncine.vec3.mul(vec, scalar) end

---Divides the first vector by the second one, component-wise
---@param vec0 ncine.vec3
---@param vec1 ncine.vec3
---@return ncine.vec3
function ncine.vec3.div(vec0, vec1) end

---Divides the vector components by the scalar
---@param vec ncine.vec3
---@param scalar number
---@return ncine.vec3
function ncine.vec3.div(vec, scalar) end

---Returns the length of the vector
---@param vec ncine.vec3
---@return number
function ncine.vec3.length(vec) end

---Returns the squared length of the vector
---@param vec ncine.vec3
---@return number
function ncine.vec3.sqrlength(vec) end

---Returns a normalized version of the vector
---@param vec ncine.vec3
---@return ncine.vec3
function ncine.vec3.normalized(vec) end

---Returns the dot product between the two vectors
---@param vec0 ncine.vec3
---@param vec1 ncine.vec3
---@return number
function ncine.vec3.dot(vec0, vec1) end
