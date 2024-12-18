---The table containing particle affectors related functions
---@module ncine.particle_affector

---The light user data of a particle affector object
---@table affectorObj

---Particle affector types (enumeration)
ncine.affector_type = {
	COLOR = 0,
	SIZE = 1,
	ROTATION = 3,
	POSITION = 4,
	VELOCITY = 5,
}

---A step of a `COLOR` particle affector.
---
---It is an array of two elements, an age value and a color.
---@number age Element at position [1]
---@field color (ncine.color) Element at position [2]
---@table affector_color_step

---A step of a `SIZE` particle affector.
---
---It is an array of two elements, an age value and a uniform scale factor.
---@number age Element at position [1]
---@number scale Element at position [2]
---@table affector_size_step_factor

---A step of a `SIZE` particle affector.
---
---It is an array of two elements, an age value and a scale vector for the two dimensions.
---@number age Element at position [1]
---@field scale (ncine.vec2) Element at position [2]
---@table affector_size_step_vector

---A step of a `ROTATION` particle affector.
---
---It is an array of two elements, an age value and an angle in degrees.
---@number age Element at position [1]
---@number angle Element at position [2]
---@table affector_rotation_step

---A step of a `POSITION` particle affector.
---
---It is an array of two elements, an age value and a position vector.
---@number age Element at position [1]
---@field position (ncine.vec2) Element at position [2]
---@table affector_position_step

---A step of a `VELOCITY` particle affector.
---
---It is an array of two elements, an age value and a velocity vector.
---@number age Element at position [1]
---@field velocity (ncine.vec2) Element at position [2]
---@table affector_velocity_step

---Returns the affector type
---@tparam affectorObj affector
---@treturn ncine.affector_type
function ncine.particle_affector.get_type(affector) end

---Returns `true` if the affector is enabled
---@tparam affectorObj affector
---@treturn boolean
function ncine.particle_affector.is_enabled(affector) end

---Enables or disables the affector
---@tparam affectorObj affector
---@tparam boolean enabled
function ncine.particle_affector.set_enabled(affector, enabled) end

---Returns the number of steps
---@tparam affectorObj affector
---@treturn integer
function ncine.particle_affector.num_steps(affector) end

---Removes the step at the specified position index
---@tparam affectorObj affector
---@tparam integer index
function ncine.particle_affector.remove_steps(affector, index) end

---Removes all steps
---@tparam affectorObj affector
function ncine.particle_affector.clear_steps(affector) end

---Returns the color steps as a table (or `nil` if the affector type is not `COLOR`)
---@tparam affectorObj affector
---@treturn affector_color_step[]|nil
function ncine.particle_affector.get_color_steps(affector) end

---Returns the size steps as a table (or `nil` if the affector type is not `SIZE`)
---@tparam affectorObj affector
---@treturn affector_size_step_vector[]|nil
function ncine.particle_affector.get_size_steps(affector) end

---Returns the rotation steps as a table (or `nil` if the affector type is not `ROTATION`)
---@tparam affectorObj affector
---@treturn affector_rotation_step[]|nil
function ncine.particle_affector.get_rotation_steps(affector) end

---Returns the position steps as a table (or `nil` if the affector type is not `POSITION`)
---@tparam affectorObj affector
---@treturn affector_position_step[]|nil
function ncine.particle_affector.get_position_steps(affector) end

---Returns the velocity steps as a table (or `nil` if the affector type is not `VELOCITY`)
---@tparam affectorObj affector
---@treturn affector_velocity_step[]|nil
function ncine.particle_affector.get_velocity_steps(affector) end

---Adds a color step (if the affector type is `COLOR`)
---@tparam affectorObj affector
---@tparam number age
---@tparam ncine.color color
function ncine.particle_affector.add_color_step(affector, age, color) end

---Adds a color step (if the affector type is `COLOR`)
---@tparam affectorObj affector
---@tparam number age
---@tparam number red
---@tparam number green
---@tparam number blue
---@tparam number alpha
function ncine.particle_affector.add_color_step(affector, age, red, green, blue, alpha) end

---Returns a base scale factor that will be multiplied by all size steps.
---
---The affector type should be `SIZE` or the function will return `nil`.
---@tparam affectorObj affector
---@treturn ncine.vec2|nil
function ncine.particle_affector.get_base_scale(affector) end

---Sets a base scale factor that will be multiplied by all size steps.
---
---The affector type should be `SIZE` or the function will do nothing.
---@tparam affectorObj affector
---@tparam ncine.vec2 base_scale
function ncine.particle_affector.set_base_scale(affector, base_scale) end

---Adds a size step (if the affector type is `SIZE`)
---@tparam affectorObj affector
---@tparam number age
---@tparam ncine.vec2 scale
function ncine.particle_affector.add_size_step(affector, age, scale) end

---Adds a size step (if the affector type is `SIZE`)
---@tparam affectorObj affector
---@tparam number age
---@tparam number scale_x
---@tparam number scale_y
function ncine.particle_affector.add_size_step(affector, age, scale_x, scale_y) end

---Adds a rotation step (if the affector type is `ROTATION`)
---@tparam affectorObj affector
---@tparam number age
---@tparam number angle
function ncine.particle_affector.add_rotation_step(affector, age, angle) end

---Adds a position step (if the affector type is `POSITION`)
---@tparam affectorObj affector
---@tparam number age
---@tparam ncine.vec2 position
function ncine.particle_affector.add_position_step(affector, age, position) end

---Adds a position step (if the affector type is `POSITION`)
---@tparam affectorObj affector
---@tparam number age
---@tparam number position_x
---@tparam number position_y
function ncine.particle_affector.add_position_step(affector, age, position_x, position_y) end

---Adds a velocity step (if the affector type is `VELOCITY`)
---@tparam affectorObj affector
---@tparam number age
---@tparam ncine.vec2 velocity
function ncine.particle_affector.add_velocity_step(affector, age, velocity) end

---Adds a velocity step (if the affector type is `VELOCITY`)
---@tparam affectorObj affector
---@tparam number age
---@tparam number velocity_x
---@tparam number velocity_y
function ncine.particle_affector.add_velocity_step(affector, age, velocity_x, velocity_y) end
