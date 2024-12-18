---The table containing 4-components vector related functions
---@module ncine.vec4

---A three component vector
---@number x The X component
---@number y The Y component
---@number z The Z component
---@number w The W component
---@table ncine.vec4

---Creates a vec4 table from its components
---@tparam number x The X component
---@tparam number y The Y component
---@tparam number z The Z component
---@tparam number w The W component
---@treturn ncine.vec4
function ncine.vec4.create(x, y, z, w) end

---Adds two vectors together, component-wise
---@tparam ncine.vec4 vec0
---@tparam ncine.vec4 vec1
---@treturn ncine.vec4
function ncine.vec4.add(vec0, vec1) end

---Adds a scalar to the vector components
---@tparam ncine.vec4 vec0
---@tparam number scalar
---@treturn ncine.vec4
function ncine.vec4.add(vec0, scalar) end

---Subtracts the second vector from the first one, component-wise
---@tparam ncine.vec4 vec0
---@tparam ncine.vec4 vec1
---@treturn ncine.vec4
function ncine.vec4.sub(vec0, vec1) end

---Subtracts the scalar from the vector components
---@tparam ncine.vec4 vec
---@tparam number scalar
---@treturn ncine.vec4
function ncine.vec4.sub(vec, scalar) end

---Multiplies two vectors together, component-wise
---@tparam ncine.vec4 vec0
---@tparam ncine.vec4 vec1
---@treturn ncine.vec4
function ncine.vec4.mul(vec0, vec1) end

---Multiplies the vector components by the scalar
---@tparam ncine.vec4 vec
---@tparam number scalar
---@treturn ncine.vec4
function ncine.vec4.mul(vec, scalar) end

---Divides the first vector by the second one, component-wise
---@tparam ncine.vec4 vec0
---@tparam ncine.vec4 vec1
---@treturn ncine.vec4
function ncine.vec4.div(vec0, vec1) end

---Divides the vector components by the scalar
---@tparam ncine.vec4 vec
---@tparam number scalar
---@treturn ncine.vec4
function ncine.vec4.div(vec, scalar) end

---Returns the length of the vector
---@tparam ncine.vec4 vec
---@treturn number
function ncine.vec4.length(vec) end

---Returns the squared length of the vector
---@tparam ncine.vec4 vec
---@treturn number
function ncine.vec4.sqrlength(vec) end

---Returns a normalized version of the vector
---@tparam ncine.vec4 vec
---@treturn ncine.vec4
function ncine.vec4.normalized(vec) end

---Returns the dot product between the two vectors
---@tparam ncine.vec4 vec0
---@tparam ncine.vec4 vec1
---@treturn number
function ncine.vec4.dot(vec0, vec1) end
