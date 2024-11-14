---@meta

---The light user data of a particle system object
---@class particlesystemObj: scenenodeObj

---An initializer table with random ranges used to emit particles
---
---Each field can be thje precise value, or an array of two elements, to define a minimum and a maximum.
---@class particle_initializer
---@field amount number|number[]
---@field life number|number[]
---@field position ncine.vec2|ncine.vec2[]
---@field velocity ncine.vec2|ncine.vec2[]
---@field rotation number|number[]
particle_initializer = {}

---The table containing particle system related functions
---@class ncine.particle_system: ncine.scenenode
ncine.particle_system = {}

---Constructs a particle system
---
---Don't forget to call [delete](lua://ncine.particle_system.delete) when you are done with it!
---@param parent? scenenodeObj # The parent scenenode
---@param count integer # Maximum amount of particles
---@param texture? textureObj
---@param tex_rect ncine.rect
---@return particlesystemObj # A new particle system object
---@nodiscard
function ncine.particle_system.new(parent, count, texture, tex_rect) end

---Constructs a new particle system object as a clone of the specified one
---
---Don't forget to call [delete](lua://ncine.particle_system.delete) when you are done with it!
---@param particle_system particlesystemObj # The particle system object to be cloned
---@return particlesystemObj # The cloned particle system object
---@nodiscard
function ncine.particle_system.clone(particle_system) end

---Destroys a particle system object and releases its memory
---@param particle_system particlesystemObj # The particle system object to be destroyed
function ncine.particle_system.delete(particle_system) end

---Adds a color particle affector
---@param particle_system particlesystemObj
---@param color_steps affector_color_step[]
function ncine.particle_system.add_color_affector(particle_system, color_steps) end

---Adds a size particle affector
---@param particle_system particlesystemObj
---@param base_scale number
---@param size_steps affector_size_step_factor[]
function ncine.particle_system.add_size_affector(particle_system, base_scale, size_steps) end

---Adds a size particle affector
---@param particle_system particlesystemObj
---@param base_scale number
---@param size_steps affector_size_step_vector[]
function ncine.particle_system.add_size_affector(particle_system, base_scale, size_steps) end

---Adds a rotation particle affector
---@param particle_system particlesystemObj
---@param rotation_steps affector_rotation_step[]
function ncine.particle_system.add_rotation_affector(particle_system, rotation_steps) end

---Adds a position particle affector
---@param particle_system particlesystemObj
---@param position_steps affector_position_step[]
function ncine.particle_system.add_position_affector(particle_system, position_steps) end

---Adds a velocity particle affector
---@param particle_system particlesystemObj
---@param velocity_steps affector_velocity_step[]
function ncine.particle_system.add_velocity_affector(particle_system, velocity_steps) end

---Returns the number of affectors
---@param particle_system particlesystemObj
---@return integer
function ncine.particle_system.num_affectors(particle_system) end

---Returns the affector at the specified index
---@param particle_system particlesystemObj
---@param index integer
---@return affectorObj?
function ncine.particle_system.get_affector(particle_system, index) end

---Removes the affector at the specified index
---@param particle_system particlesystemObj
---@param index integer
function ncine.particle_system.remove_affector(particle_system, index) end

---Deletes all particle affectors
---@param particle_system particlesystemObj
function ncine.particle_system.clear_affectors(particle_system) end

---Emits particles with the specified initialization parameters
---@param particle_system particlesystemObj
---@param initializer particle_initializer
function ncine.particle_system.emit_particles(particle_system, initializer) end

---Kills all alive particles
---@param particle_system particlesystemObj
function ncine.particle_system.kill_particles(particle_system) end

---Returns `true` if particles are positioned using the particle system as their origin
---@param particle_system particlesystemObj
---@return boolean
function ncine.particle_system.get_in_local_space(particle_system) end

---Sets or clears the local space flag, to move particles around the particle system or freely
---@param particle_system particlesystemObj
---@param local_space boolean
function ncine.particle_system.set_in_local_space(particle_system, local_space) end

---Returns `true` if particles are updating
---@param particle_system particlesystemObj
---@return boolean
function ncine.particle_system.get_particles_update_enabled(particle_system) end

---Enables or disables particles updating
---@param particle_system particlesystemObj
---@param enabled boolean
function ncine.particle_system.set_particles_update_enabled(particle_system, enabled) end

---Returns `true` if affectors are modifying particles properties
---@param particle_system particlesystemObj
---@return boolean
function ncine.particle_system.get_affectors_enabled(particle_system) end

---Enables or disables affectors modifying particles properties
---@param particle_system particlesystemObj
---@param enabled boolean
function ncine.particle_system.set_affectors_enabled(particle_system, enabled) end

---Returns the total number of particles in the system
---@param particle_system particlesystemObj
---@return integer
function ncine.particle_system.num_particles(particle_system) end

---Returns the number of particles currently alive
---@param particle_system particlesystemObj
---@return integer
function ncine.particle_system.num_alive_particles(particle_system) end

---Sets the texture object for every particle in the system
---@param particle_system particlesystemObj
---@param texture textureObj
function ncine.particle_system.set_texture(particle_system, texture) end

---Sets the texture source rectangle for every particle in the system
---@param particle_system particlesystemObj
---@param tex_rect ncine.rect
function ncine.particle_system.set_texture_rect(particle_system, tex_rect) end

---Sets the transformation anchor point for every particle in the system with a `ncine.vec2`
---@param particle_system particlesystemObj
---@param point ncine.vec2
function ncine.particle_system.set_anchor_point(particle_system, point) end

---Sets the transformation anchor point for every particle in the system
---@param particle_system particlesystemObj
---@param point_x number
---@param point_y number
function ncine.particle_system.set_anchor_point(particle_system, point_x, point_y) end

---Flips the texture rect horizontally for every particle in the system
---@param particle_system particlesystemObj
---@param flipped_x boolean
function ncine.particle_system.set_flipped_x(particle_system, flipped_x) end

---Flips the texture rect vertically for every particle in the system
---@param particle_system particlesystemObj
---@param flipped_y boolean
function ncine.particle_system.set_flipped_y(particle_system, flipped_y) end

---Sets the blending factors preset for every particle in the system
---@param particle_system particlesystemObj
---@param blending_preset ncine.blending_preset
function ncine.particle_system.set_blending_preset(particle_system, blending_preset) end

---Sets the source and destination blending factors for every particle in the system
---@param particle_system particlesystemObj
---@param src_factor ncine.blending_factor
---@param dest_factor ncine.blending_factor
function ncine.particle_system.set_blending_factors(particle_system, src_factor, dest_factor) end

---Sets the rendering layer for every particle in the system
---@param particle_system particlesystemObj
---@param layer integer
function ncine.particle_system.set_layer(particle_system, layer) end
