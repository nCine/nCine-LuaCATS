---@meta

---The light user data of a shaderstate object
---@class shaderstateObj: lightuserdata

---The table containing shader state related functions
---@class ncine.shaderstate
ncine.shaderstate = {}

---Constructs a shaderstate object and assigns to it a node and a shader
---
---Don't forget to call [delete](lua://ncine.shaderstate.delete) when you are done with it!
---@param node drawablenodeObj
---@param shader shaderObj
---@return shaderstateObj # A new shader object
---@nodiscard
function ncine.shaderstate.new(node, shader) end

---Destroys a shaderstate object and releases its memory
---@param shaderstate shaderstateObj # The shaderstate object to be destroyed
function ncine.shaderstate.delete(shaderstate) end

---Returns the drawable node affected by the shader state
---@param shaderstate shaderstateObj
---@return drawablenodeObj?
function ncine.shaderstate.get_node(shaderstate) end

---Sets the drawable node affected by the shader state
---@param shaderstate shaderstateObj
---@param node drawablenodeObj?
---@---@return boolean # True if the node has been changed
function ncine.shaderstate.set_node(shaderstate, node) end

---Return the associated custom shader
---@param shaderstate shaderstateObj
---@return shaderObj?
function ncine.shaderstate.get_shader(shaderstate) end

---Sets the associated custom shader
---@param shaderstate shaderstateObj
---@param shader shaderObj?
---@return boolean # True if the shader has been changed
function ncine.shaderstate.set_shader(shaderstate, shader) end

---Triggers a shader update without setting a new shader
---@param shaderstate shaderstateObj
function ncine.shaderstate.reset_shader(shaderstate) end

---Assigns a texture to the specified texture unit
---@param shaderstate shaderstateObj
---@param unit integer
---@param texture textureObj?
---@return boolean # True if the texture has been assigned
function ncine.shaderstate.set_texture(shaderstate, unit, texture) end

---Sets an integer uniform with an array of values
---@param shaderstate shaderstateObj
---@param block_name string # It can be an empty string
---@param name string # Uniform name
---@param vector integer[] # An array of 1 to 4 integer elements
---@return boolean # True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_int_vector(shaderstate, block_name, name, vector) end

---Sets an integer uniform with one value
---@param shaderstate shaderstateObj
---@param block_name string # It can be an empty string
---@param name string # Uniform name
---@param value0 integer
---@return boolean # True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_int_value1(shaderstate, block_name, name, value0) end

---Sets an integer uniform with two values
---@param shaderstate shaderstateObj
---@param block_name string # It can be an empty string
---@param name string # Uniform name
---@param value0 integer
---@param value1 integer
---@return boolean # True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_int_value2(shaderstate, block_name, name, value0, value1) end

---Sets an integer uniform with three values
---@param shaderstate shaderstateObj
---@param block_name string # It can be an empty string
---@param name string # Uniform name
---@param value0 integer
---@param value1 integer
---@param value2 integer
---@return boolean # True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_int_value3(shaderstate, block_name, name, value0, value1, value2) end

---Sets an integer uniform with four values
---@param shaderstate shaderstateObj
---@param block_name string # It can be an empty string
---@param name string # Uniform name
---@param value0 integer
---@param value1 integer
---@param value2 integer
---@param value3 integer
---@return boolean # True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_int_value4(shaderstate, block_name, name, value0, value1, value2, value3) end

---Sets an integer uniform with a `ncine.vec2`
---@param shaderstate shaderstateObj
---@param block_name string # It can be an empty string
---@param name string # Uniform name
---@param vector ncine.vec2
---@return boolean # True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_int_vector2(shaderstate, block_name, name, vector) end

---Sets an integer uniform with a `ncine.vec3`
---@param shaderstate shaderstateObj
---@param block_name string # It can be an empty string
---@param name string # Uniform name
---@param vector ncine.vec3
---@return boolean # True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_int_vector3(shaderstate, block_name, name, vector) end

---Sets an integer uniform with a `ncine.vec4`
---@param shaderstate shaderstateObj
---@param block_name string # It can be an empty string
---@param name string # Uniform name
---@param vector ncine.vec4
---@return boolean # True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_int_vector4(shaderstate, block_name, name, vector) end

---Sets a float uniform with an array of values
---@param shaderstate shaderstateObj
---@param block_name string # It can be an empty string
---@param name string # Uniform name
---@param vector number[] # An array of 1 to 4 float elements
---@return boolean # True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_float_vector(shaderstate, block_name, name, vector) end

---Sets a float uniform with one value
---@param shaderstate shaderstateObj
---@param block_name string # It can be an empty string
---@param name string # Uniform name
---@param value0 number
---@return boolean # True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_float_value1(shaderstate, block_name, name, value0) end

---Sets a float uniform with two values
---@param shaderstate shaderstateObj
---@param block_name string # It can be an empty string
---@param name string # Uniform name
---@param value0 number
---@param value1 number
---@return boolean # True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_float_value2(shaderstate, block_name, name, value0, value1) end

---Sets a float uniform with three values
---@param shaderstate shaderstateObj
---@param block_name string # It can be an empty string
---@param name string # Uniform name
---@param value0 number
---@param value1 number
---@param value2 number
---@return boolean # True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_float_value3(shaderstate, block_name, name, value0, value1, value2) end

---Sets a float uniform with four values
---@param shaderstate shaderstateObj
---@param block_name string # It can be an empty string
---@param name string # Uniform name
---@param value0 number
---@param value1 number
---@param value2 number
---@param value3 number
---@return boolean # True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_float_value4(shaderstate, block_name, name, value0, value1, value2, value3) end

---Sets a float uniform with a `ncine.vec2`
---@param shaderstate shaderstateObj
---@param block_name string # It can be an empty string
---@param name string # Uniform name
---@param vector ncine.vec2
---@return boolean # True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_float_vector2(shaderstate, block_name, name, vector) end

---Sets a float uniform with a `ncine.vec3`
---@param shaderstate shaderstateObj
---@param block_name string # It can be an empty string
---@param name string # Uniform name
---@param vector ncine.vec3
---@return boolean # True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_float_vector3(shaderstate, block_name, name, vector) end

---Sets a float uniform with a `ncine.vec4`
---@param shaderstate shaderstateObj
---@param block_name string # It can be an empty string
---@param name string # Uniform name
---@param vector ncine.vec4
---@return boolean # True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_float_vector4(shaderstate, block_name, name, vector) end

---Sets a float uniform with a `ncine.color`
---@param shaderstate shaderstateObj
---@param block_name string # It can be an empty string
---@param name string # Uniform name
---@param color ncine.color
---@return boolean # True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_float_color(shaderstate, block_name, name, color) end
