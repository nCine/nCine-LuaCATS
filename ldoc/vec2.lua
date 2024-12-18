---The table containing 2-components vector related functions
---@module ncine.vec2

---A two component vector
---@number x The X component
---@number y The Y component
---@table ncine.vec2

---Creates a vec2 table from its components
---@tparam number x The X component
---@tparam number y The Y component
---@treturn ncine.vec2
function ncine.vec2.create(x, y) end

---Adds two vectors together, component-wise
---@tparam ncine.vec2 vec0
---@tparam ncine.vec2 vec1
---@treturn ncine.vec2
function ncine.vec2.add(vec0, vec1) end

---Adds a scalar to the vector components
---@tparam ncine.vec2 vec0
---@tparam number scalar
---@treturn ncine.vec2
function ncine.vec2.add(vec0, scalar) end

---Subtracts the second vector from the first one, component-wise
---@tparam ncine.vec2 vec0
---@tparam ncine.vec2 vec1
---@treturn ncine.vec2
function ncine.vec2.sub(vec0, vec1) end

---Subtracts the scalar from the vector components
---@tparam ncine.vec2 vec
---@tparam number scalar
---@treturn ncine.vec2
function ncine.vec2.sub(vec, scalar) end

---Multiplies two vectors together, component-wise
---@tparam ncine.vec2 vec0
---@tparam ncine.vec2 vec1
---@treturn ncine.vec2
function ncine.vec2.mul(vec0, vec1) end

---Multiplies the vector components by the scalar
---@tparam ncine.vec2 vec
---@tparam number scalar
---@treturn ncine.vec2
function ncine.vec2.mul(vec, scalar) end

---Divides the first vector by the second one, component-wise
---@tparam ncine.vec2 vec0
---@tparam ncine.vec2 vec1
---@treturn ncine.vec2
function ncine.vec2.div(vec0, vec1) end

---Divides the vector components by the scalar
---@tparam ncine.vec2 vec
---@tparam number scalar
---@treturn ncine.vec2
function ncine.vec2.div(vec, scalar) end

---Returns the length of the vector
---@tparam ncine.vec2 vec
---@treturn number
function ncine.vec2.length(vec) end

---Returns the squared length of the vector
---@tparam ncine.vec2 vec
---@treturn number
function ncine.vec2.sqrlength(vec) end

---Returns a normalized version of the vector
---@tparam ncine.vec2 vec
---@treturn ncine.vec2
function ncine.vec2.normalized(vec) end

---Returns the dot product between the two vectors
---@tparam ncine.vec2 vec0
---@tparam ncine.vec2 vec1
---@treturn number
function ncine.vec2.dot(vec0, vec1) end

