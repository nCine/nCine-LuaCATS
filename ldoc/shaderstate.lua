---The table containing shader state related functions
---@module ncine.shaderstate

---The light user data of a shaderstate object
---@table shaderstateObj

---Constructs a shaderstate object and assigns to it a node and a shader.
---
---Don't forget to call [delete](lua://ncine.shaderstate.delete) when you are done with it!
---@tparam ncine.drawable_node.drawablenodeObj node
---@tparam ncine.shader.shaderObj shader
---@treturn shaderstateObj A new shader object
function ncine.shaderstate.new(node, shader) end

---Destroys a shaderstate object and releases its memory
---@tparam shaderstateObj shaderstate The shaderstate object to be destroyed
function ncine.shaderstate.delete(shaderstate) end

---Returns the drawable node affected by the shader state
---@tparam shaderstateObj shaderstate
---@treturn ncine.drawable_node.drawablenodeObj|nil
function ncine.shaderstate.get_node(shaderstate) end

---Sets the drawable node affected by the shader state
---@tparam shaderstateObj shaderstate
---@tparam ncine.drawable_node.drawablenodeObj|nil node
---@treturn boolean True if the node has been changed
function ncine.shaderstate.set_node(shaderstate, node) end

---Return the associated custom shader
---@tparam shaderstateObj shaderstate
---@treturn ncine.shader.shaderObj|nil
function ncine.shaderstate.get_shader(shaderstate) end

---Sets the associated custom shader
---@tparam shaderstateObj shaderstate
---@tparam ncine.shader.shaderObj|nil shader
---@treturn boolean True if the shader has been changed
function ncine.shaderstate.set_shader(shaderstate, shader) end

---Triggers a shader update without setting a new shader
---@tparam shaderstateObj shaderstate
function ncine.shaderstate.reset_shader(shaderstate) end

---Assigns a texture to the specified texture unit
---@tparam shaderstateObj shaderstate
---@tparam integer unit
---@tparam ncine.texture.textureObj|nil texture
---@treturn boolean True if the texture has been assigned
function ncine.shaderstate.set_texture(shaderstate, unit, texture) end

---Sets an integer uniform with an array of values
---@tparam shaderstateObj shaderstate
---@tparam string block_name It can be an empty string
---@tparam string name Uniform name
---@tparam integer[] vector An array of 1 to 4 integer elements
---@treturn boolean True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_int_vector(shaderstate, block_name, name, vector) end

---Sets an integer uniform with one value
---@tparam shaderstateObj shaderstate
---@tparam string block_name It can be an empty string
---@tparam string name Uniform name
---@tparam integer value0
---@treturn boolean True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_int_value1(shaderstate, block_name, name, value0) end

---Sets an integer uniform with two values
---@tparam shaderstateObj shaderstate
---@tparam string block_name It can be an empty string
---@tparam string name Uniform name
---@tparam integer value0
---@tparam integer value1
---@treturn boolean True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_int_value2(shaderstate, block_name, name, value0, value1) end

---Sets an integer uniform with three values
---@tparam shaderstateObj shaderstate
---@tparam string block_name It can be an empty string
---@tparam string name Uniform name
---@tparam integer value0
---@tparam integer value1
---@tparam integer value2
---@treturn boolean True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_int_value3(shaderstate, block_name, name, value0, value1, value2) end

---Sets an integer uniform with four values
---@tparam shaderstateObj shaderstate
---@tparam string block_name It can be an empty string
---@tparam string name Uniform name
---@tparam integer value0
---@tparam integer value1
---@tparam integer value2
---@tparam integer value3
---@treturn boolean True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_int_value4(shaderstate, block_name, name, value0, value1, value2, value3) end

---Sets an integer uniform with a `ncine.vec2`
---@tparam shaderstateObj shaderstate
---@tparam string block_name It can be an empty string
---@tparam string name Uniform name
---@tparam ncine.vec2 vector
---@treturn boolean True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_int_vector2(shaderstate, block_name, name, vector) end

---Sets an integer uniform with a `ncine.vec3`
---@tparam shaderstateObj shaderstate
---@tparam string block_name It can be an empty string
---@tparam string name Uniform name
---@tparam ncine.vec3 vector
---@treturn boolean True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_int_vector3(shaderstate, block_name, name, vector) end

---Sets an integer uniform with a `ncine.vec4`
---@tparam shaderstateObj shaderstate
---@tparam string block_name It can be an empty string
---@tparam string name Uniform name
---@tparam ncine.vec4 vector
---@treturn boolean True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_int_vector4(shaderstate, block_name, name, vector) end

---Sets a float uniform with an array of values
---@tparam shaderstateObj shaderstate
---@tparam string block_name It can be an empty string
---@tparam string name Uniform name
---@tparam number[] vector An array of 1 to 4 float elements
---@treturn boolean True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_float_vector(shaderstate, block_name, name, vector) end

---Sets a float uniform with one value
---@tparam shaderstateObj shaderstate
---@tparam string block_name It can be an empty string
---@tparam string name Uniform name
---@tparam number value0
---@treturn boolean True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_float_value1(shaderstate, block_name, name, value0) end

---Sets a float uniform with two values
---@tparam shaderstateObj shaderstate
---@tparam string block_name It can be an empty string
---@tparam string name Uniform name
---@tparam number value0
---@tparam number value1
---@treturn boolean True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_float_value2(shaderstate, block_name, name, value0, value1) end

---Sets a float uniform with three values
---@tparam shaderstateObj shaderstate
---@tparam string block_name It can be an empty string
---@tparam string name Uniform name
---@tparam number value0
---@tparam number value1
---@tparam number value2
---@treturn boolean True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_float_value3(shaderstate, block_name, name, value0, value1, value2) end

---Sets a float uniform with four values
---@tparam shaderstateObj shaderstate
---@tparam string block_name It can be an empty string
---@tparam string name Uniform name
---@tparam number value0
---@tparam number value1
---@tparam number value2
---@tparam number value3
---@treturn boolean True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_float_value4(shaderstate, block_name, name, value0, value1, value2, value3) end

---Sets a float uniform with a `ncine.vec2`
---@tparam shaderstateObj shaderstate
---@tparam string block_name It can be an empty string
---@tparam string name Uniform name
---@tparam ncine.vec2 vector
---@treturn boolean True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_float_vector2(shaderstate, block_name, name, vector) end

---Sets a float uniform with a `ncine.vec3`
---@tparam shaderstateObj shaderstate
---@tparam string block_name It can be an empty string
---@tparam string name Uniform name
---@tparam ncine.vec3 vector
---@treturn boolean True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_float_vector3(shaderstate, block_name, name, vector) end

---Sets a float uniform with a `ncine.vec4`
---@tparam shaderstateObj shaderstate
---@tparam string block_name It can be an empty string
---@tparam string name Uniform name
---@tparam ncine.vec4 vector
---@treturn boolean True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_float_vector4(shaderstate, block_name, name, vector) end

---Sets a float uniform with a `ncine.color`
---@tparam shaderstateObj shaderstate
---@tparam string block_name It can be an empty string
---@tparam string name Uniform name
---@tparam ncine.color color
---@treturn boolean True if the uniform has been found and updated
function ncine.shaderstate.set_uniform_float_color(shaderstate, block_name, name, color) end
