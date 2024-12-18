---The table containing 3-components vector related functions
---@module ncine.vec3

---A three component vector
---@number x The X component
---@number y The Y component
---@number z The Z component
---@table ncine.vec3

---Creates a vec3 table from its components
---@tparam number x The X component
---@tparam number y The Y component
---@tparam number z The Z component
---@treturn ncine.vec3
function ncine.vec3.create(x, y, z) end

---Adds two vectors together, component-wise
---@tparam ncine.vec3 vec0
---@tparam ncine.vec3 vec1
---@treturn ncine.vec3
function ncine.vec3.add(vec0, vec1) end

---Adds a scalar to the vector components
---@tparam ncine.vec3 vec0
---@tparam number scalar
---@treturn ncine.vec3
function ncine.vec3.add(vec0, scalar) end

---Subtracts the second vector from the first one, component-wise
---@tparam ncine.vec3 vec0
---@tparam ncine.vec3 vec1
---@treturn ncine.vec3
function ncine.vec3.sub(vec0, vec1) end

---Subtracts the scalar from the vector components
---@tparam ncine.vec3 vec
---@tparam number scalar
---@treturn ncine.vec3
function ncine.vec3.sub(vec, scalar) end

---Multiplies two vectors together, component-wise
---@tparam ncine.vec3 vec0
---@tparam ncine.vec3 vec1
---@treturn ncine.vec3
function ncine.vec3.mul(vec0, vec1) end

---Multiplies the vector components by the scalar
---@tparam ncine.vec3 vec
---@tparam number scalar
---@treturn ncine.vec3
function ncine.vec3.mul(vec, scalar) end

---Divides the first vector by the second one, component-wise
---@tparam ncine.vec3 vec0
---@tparam ncine.vec3 vec1
---@treturn ncine.vec3
function ncine.vec3.div(vec0, vec1) end

---Divides the vector components by the scalar
---@tparam ncine.vec3 vec
---@tparam number scalar
---@treturn ncine.vec3
function ncine.vec3.div(vec, scalar) end

---Returns the length of the vector
---@tparam ncine.vec3 vec
---@treturn number
function ncine.vec3.length(vec) end

---Returns the squared length of the vector
---@tparam ncine.vec3 vec
---@treturn number
function ncine.vec3.sqrlength(vec) end

---Returns a normalized version of the vector
---@tparam ncine.vec3 vec
---@treturn ncine.vec3
function ncine.vec3.normalized(vec) end

---Returns the dot product between the two vectors
---@tparam ncine.vec3 vec0
---@tparam ncine.vec3 vec1
---@treturn number
function ncine.vec3.dot(vec0, vec1) end
