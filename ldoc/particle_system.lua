---The table containing particle system related functions.
---
---Inherits from @{ncine.scenenode}.
---@module ncine.particle_system

---The light user data of a particle system object.
---
---Inherits from @{ncine.scenenode.scenenodeObj}.
---@table particlesystemObj

---An initializer table with random ranges used to emit particles.
---
---Each field can be the precise value, or an array of two elements, to define a minimum and a maximum.
---@field amount (number|number[2])
---@field life (number|number[2])
---@field position (ncine.vec2|ncine.vec2[2])
---@field velocity (ncine.vec2|ncine.vec2[2])
---@field rotation (number|number[2])
---@table particle_initializer

---Constructs a particle system.
---
---Don't forget to call @{delete} when you are done with it!
---@tparam ncine.scenenode.scenenodeObj|nil parent The parent scenenode
---@tparam integer count Maximum amount of particles
---@tparam ncine.texture.textureObj|nil texture
---@tparam ncine.rect tex_rect
---@treturn particlesystemObj A new particle system object
function ncine.particle_system.new(parent, count, texture, tex_rect) end

---Constructs a new particle system object as a clone of the specified one.
---
---Don't forget to call @{delete} when you are done with it!
---@tparam particlesystemObj particle_system The particle system object to be cloned
---@treturn particlesystemObj The cloned particle system object
function ncine.particle_system.clone(particle_system) end

---Destroys a particle system object and releases its memory
---@tparam particlesystemObj particle_system The particle system object to be destroyed
function ncine.particle_system.delete(particle_system) end

---Adds a color particle affector
---@tparam particlesystemObj particle_system
---@tparam ncine.particle_affector.affector_color_step[] color_steps
function ncine.particle_system.add_color_affector(particle_system, color_steps) end

---Adds a size particle affector
---@tparam particlesystemObj particle_system
---@tparam number base_scale
---@tparam ncine.particle_affector.affector_size_step_factor[] size_steps
function ncine.particle_system.add_size_affector(particle_system, base_scale, size_steps) end

---Adds a size particle affector
---@tparam particlesystemObj particle_system
---@tparam number base_scale
---@tparam ncine.particle_affector.affector_size_step_vector[] size_steps
function ncine.particle_system.add_size_affector(particle_system, base_scale, size_steps) end

---Adds a rotation particle affector
---@tparam particlesystemObj particle_system
---@tparam ncine.particle_affector.affector_rotation_step[] rotation_steps
function ncine.particle_system.add_rotation_affector(particle_system, rotation_steps) end

---Adds a position particle affector
---@tparam particlesystemObj particle_system
---@tparam ncine.particle_affector.affector_position_step[] position_steps
function ncine.particle_system.add_position_affector(particle_system, position_steps) end

---Adds a velocity particle affector
---@tparam particlesystemObj particle_system
---@tparam ncine.particle_affector.affector_velocity_step[] velocity_steps
function ncine.particle_system.add_velocity_affector(particle_system, velocity_steps) end

---Returns the number of affectors
---@tparam particlesystemObj particle_system
---@treturn integer
function ncine.particle_system.num_affectors(particle_system) end

---Returns the affector at the specified index
---@tparam particlesystemObj particle_system
---@tparam integer index
---@treturn ncine.particle_affector.affectorObj|nil
function ncine.particle_system.get_affector(particle_system, index) end

---Removes the affector at the specified index
---@tparam particlesystemObj particle_system
---@tparam integer index
function ncine.particle_system.remove_affector(particle_system, index) end

---Deletes all particle affectors
---@tparam particlesystemObj particle_system
function ncine.particle_system.clear_affectors(particle_system) end

---Emits particles with the specified initialization parameters
---@tparam particlesystemObj particle_system
---@tparam particle_initializer initializer
function ncine.particle_system.emit_particles(particle_system, initializer) end

---Kills all alive particles
---@tparam particlesystemObj particle_system
function ncine.particle_system.kill_particles(particle_system) end

---Returns `true` if particles are positioned using the particle system as their origin
---@tparam particlesystemObj particle_system
---@treturn boolean
function ncine.particle_system.get_in_local_space(particle_system) end

---Sets or clears the local space flag, to move particles around the particle system or freely
---@tparam particlesystemObj particle_system
---@tparam boolean local_space
function ncine.particle_system.set_in_local_space(particle_system, local_space) end

---Returns `true` if particles are updating
---@tparam particlesystemObj particle_system
---@treturn boolean
function ncine.particle_system.get_particles_update_enabled(particle_system) end

---Enables or disables particles updating
---@tparam particlesystemObj particle_system
---@tparam boolean enabled
function ncine.particle_system.set_particles_update_enabled(particle_system, enabled) end

---Returns `true` if affectors are modifying particles properties
---@tparam particlesystemObj particle_system
---@treturn boolean
function ncine.particle_system.get_affectors_enabled(particle_system) end

---Enables or disables affectors modifying particles properties
---@tparam particlesystemObj particle_system
---@tparam boolean enabled
function ncine.particle_system.set_affectors_enabled(particle_system, enabled) end

---Returns the total number of particles in the system
---@tparam particlesystemObj particle_system
---@treturn integer
function ncine.particle_system.num_particles(particle_system) end

---Returns the number of particles currently alive
---@tparam particlesystemObj particle_system
---@treturn integer
function ncine.particle_system.num_alive_particles(particle_system) end

---Sets the texture object for every particle in the system
---@tparam particlesystemObj particle_system
---@tparam ncine.texture.textureObj texture
function ncine.particle_system.set_texture(particle_system, texture) end

---Sets the texture source rectangle for every particle in the system
---@tparam particlesystemObj particle_system
---@tparam ncine.rect tex_rect
function ncine.particle_system.set_texture_rect(particle_system, tex_rect) end

---Sets the transformation anchor point for every particle in the system with a `ncine.vec2`
---@tparam particlesystemObj particle_system
---@tparam ncine.vec2 point
function ncine.particle_system.set_anchor_point(particle_system, point) end

---Sets the transformation anchor point for every particle in the system
---@tparam particlesystemObj particle_system
---@tparam number point_x
---@tparam number point_y
function ncine.particle_system.set_anchor_point(particle_system, point_x, point_y) end

---Flips the texture rect horizontally for every particle in the system
---@tparam particlesystemObj particle_system
---@tparam boolean flipped_x
function ncine.particle_system.set_flipped_x(particle_system, flipped_x) end

---Flips the texture rect vertically for every particle in the system
---@tparam particlesystemObj particle_system
---@tparam boolean flipped_y
function ncine.particle_system.set_flipped_y(particle_system, flipped_y) end

---Sets the blending factors preset for every particle in the system
---@tparam particlesystemObj particle_system
---@tparam ncine.blending_preset blending_preset
function ncine.particle_system.set_blending_preset(particle_system, blending_preset) end

---Sets the source and destination blending factors for every particle in the system
---@tparam particlesystemObj particle_system
---@tparam ncine.blending_factor src_factor
---@tparam ncine.blending_factor dest_factor
function ncine.particle_system.set_blending_factors(particle_system, src_factor, dest_factor) end

---Sets the rendering layer for every particle in the system
---@tparam particlesystemObj particle_system
---@tparam integer layer
function ncine.particle_system.set_layer(particle_system, layer) end
