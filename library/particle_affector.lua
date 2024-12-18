---@meta

---The light user data of a particle affector object
---@class affectorObj: lightuserdata

---Particle affector types
---@enum ncine.affector_type
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
---@class (exact) affector_color_step
---@field [1] number # Age
---@field [2] ncine.color # Color
affector_color_step = {}

---A step of a `SIZE` particle affector.
---
---It is an array of two elements, an age value and a uniform scale factor.
---@class (exact) affector_size_step
---@field [1] number # Age
---@field [2] number # Scale
affector_size_step_factor = {}

---A step of a `SIZE` particle affector.
---
---It is an array of two elements, an age value and a scale vector for the two dimensions.
---@class (exact) affector_size_step
---@field [1] number # Age
---@field [2] ncine.vec2 # Scale
affector_size_step_vector = {}

---A step of a `ROTATION` particle affector.
---
---It is an array of two elements, an age value and an angle in degrees.
---@class (exact) affector_rotation_step
---@field [1] number # Age
---@field [2] number # Angle
affector_rotation_step = {}

---A step of a `POSITION` particle affector.
---
---It is an array of two elements, an age value and a position vector.
---@class (exact) affector_position_step
---@field [1] number # Age
---@field [2] ncine.vec2 # Position
affector_position_step = {}

---A step of a `VELOCITY` particle affector.
---
---It is an array of two elements, an age value and a velocity vector.
---@class (exact) affector_velocity_step
---@field [1] number # Age
---@field [2] ncine.vec2 # Velocity
affector_velocity_step = {}

---The table containing particle affectors related functions
---@class ncine.particle_affector
ncine.particle_affector = {}

---Returns the affector type
---@param affector affectorObj
---@return ncine.affector_type
function ncine.particle_affector.get_type(affector) end

---Returns `true` if the affector is enabled
---@param affector affectorObj
---@return boolean
function ncine.particle_affector.is_enabled(affector) end

---Enables or disables the affector
---@param affector affectorObj
---@param enabled boolean
function ncine.particle_affector.set_enabled(affector, enabled) end

---Returns the number of steps
---@param affector affectorObj
---@return integer
function ncine.particle_affector.num_steps(affector) end

---Removes the step at the specified position index
---@param affector affectorObj
---@param index integer
function ncine.particle_affector.remove_steps(affector, index) end

---Removes all steps
---@param affector affectorObj
function ncine.particle_affector.clear_steps(affector) end

---Returns the color steps as a table (or `nil` if the affector type is not `COLOR`)
---@param affector affectorObj
---@return affector_color_step[]?
function ncine.particle_affector.get_color_steps(affector) end

---Returns the size steps as a table (or `nil` if the affector type is not `SIZE`)
---@param affector affectorObj
---@return affector_size_step_vector[]?
function ncine.particle_affector.get_size_steps(affector) end

---Returns the rotation steps as a table (or `nil` if the affector type is not `ROTATION`)
---@param affector affectorObj
---@return affector_rotation_step[]?
function ncine.particle_affector.get_rotation_steps(affector) end

---Returns the position steps as a table (or `nil` if the affector type is not `POSITION`)
---@param affector affectorObj
---@return affector_position_step[]?
function ncine.particle_affector.get_position_steps(affector) end

---Returns the velocity steps as a table (or `nil` if the affector type is not `VELOCITY`)
---@param affector affectorObj
---@return affector_velocity_step[]?
function ncine.particle_affector.get_velocity_steps(affector) end

---Adds a color step (if the affector type is `COLOR`)
---@param affector affectorObj
---@param age number
---@param color ncine.color
function ncine.particle_affector.add_color_step(affector, age, color) end

---Adds a color step (if the affector type is `COLOR`)
---@param affector affectorObj
---@param age number
---@param red number
---@param green number
---@param blue number
---@param alpha number
function ncine.particle_affector.add_color_step(affector, age, red, green, blue, alpha) end

---Returns a base scale factor that will be multiplied by all size steps.
---
---The affector type should be `SIZE` or the function will return `nil`.
---@param affector affectorObj
---@return ncine.vec2?
function ncine.particle_affector.get_base_scale(affector) end

---Sets a base scale factor that will be multiplied by all size steps.
---
---The affector type should be `SIZE` or the function will do nothing.
---@param affector affectorObj
---@param base_scale ncine.vec2
function ncine.particle_affector.set_base_scale(affector, base_scale) end

---Adds a size step (if the affector type is `SIZE`)
---@param affector affectorObj
---@param age number
---@param scale ncine.vec2
function ncine.particle_affector.add_size_step(affector, age, scale) end

---Adds a size step (if the affector type is `SIZE`)
---@param affector affectorObj
---@param age number
---@param scale_x number
---@param scale_y number
function ncine.particle_affector.add_size_step(affector, age, scale_x, scale_y) end

---Adds a rotation step (if the affector type is `ROTATION`)
---@param affector affectorObj
---@param age number
---@param angle number
function ncine.particle_affector.add_rotation_step(affector, age, angle) end

---Adds a position step (if the affector type is `POSITION`)
---@param affector affectorObj
---@param age number
---@param position ncine.vec2
function ncine.particle_affector.add_position_step(affector, age, position) end

---Adds a position step (if the affector type is `POSITION`)
---@param affector affectorObj
---@param age number
---@param position_x number
---@param position_y number
function ncine.particle_affector.add_position_step(affector, age, position_x, position_y) end

---Adds a velocity step (if the affector type is `VELOCITY`)
---@param affector affectorObj
---@param age number
---@param velocity ncine.vec2
function ncine.particle_affector.add_velocity_step(affector, age, velocity) end

---Adds a velocity step (if the affector type is `VELOCITY`)
---@param affector affectorObj
---@param age number
---@param velocity_x number
---@param velocity_y number
function ncine.particle_affector.add_velocity_step(affector, age, velocity_x, velocity_y) end
