---The table containing mesh sprite related functions.
---
---Inherits from @{ncine.base_sprite}.
---@module ncine.mesh_sprite

---The light user data of a mesh sprite object.
---
---Inherits from @{ncine.base_sprite.basespriteObj}.
---@table meshspriteObj

---Texture cut modes (enumeration)
ncine.texture_cut_mode = {
	RESIZE = 0,
	CROP = 1,
}

---A mesh sprite vertex with UV texture coordinates
---@number x
---@number y
---@number u
---@number v
---@table mesh_sprite_vertex

---A mesh sprite vertex
---@number x
---@number y
---@table mesh_sprite_vertex_notexture

---Constructs a mesh sprite object with a parent scene node, a texture, and position components.
---
---Don't forget to call @{delete} when you are done with it!
---@tparam ncine.scenenode.scenenodeObj|nil parent The parent scenenode
---@tparam ncine.texture.textureObj|nil texture The texture object
---@tparam number x  The X component of the position
---@tparam number y The Y component of the position
---@treturn meshspriteObj A new mesh sprite object
function ncine.mesh_sprite.new(parent, texture, x, y) end

---Constructs a mesh sprite object with a parent scene node, a texture, and a position vector.
---
---Don't forget to call @{delete} when you are done with it!
---@tparam ncine.scenenode.scenenodeObj|nil parent The parent scenenode
---@tparam ncine.texture.textureObj|nil texture The texture object
---@tparam ncine.vec2 pos The position vector
---@treturn meshspriteObj A new mesh sprite object
function ncine.mesh_sprite.new(parent, texture, pos) end

---Constructs a new mesh sprite object as a clone of the specified one.
---
---Don't forget to call @{delete} when you are done with it!
---@tparam meshspriteObj sprite The sprite object to be cloned
---@treturn meshspriteObj The cloned mesh sprite object
function ncine.mesh_sprite.clone(sprite) end

---Destroys a mesh sprite object and releases its memory
---@tparam meshspriteObj sprite The mesh sprite object to be destroyed
function ncine.mesh_sprite.delete(sprite) end

---Returns the number of bytes used by each vertex
---@tparam meshspriteObj sprite
---@treturn integer
function ncine.mesh_sprite.get_bytes_per_vertex(sprite) end

---Returns the number of vertices of the sprite mesh
---@tparam meshspriteObj sprite
---@treturn integer
function ncine.mesh_sprite.num_vertices(sprite) end

---Returns the total number of bytes used by all sprite's vertices
---@tparam meshspriteObj sprite
---@treturn integer
function ncine.mesh_sprite.num_bytes(sprite) end

---Returns the vertices data of the sprite mesh
---@tparam meshspriteObj sprite
---@treturn number[]
function ncine.mesh_sprite.get_vertices(sprite) end

---Returns `true` if the vertices belong to the sprite and are not stored externally
---@tparam meshspriteObj sprite
---@treturn boolean
function ncine.mesh_sprite.are_unique_vertices(sprite) end

---Copies the vertices data from a table into the sprite
---@tparam meshspriteObj sprite
---@tparam mesh_sprite_vertex[] vertices
function ncine.mesh_sprite.copy_vertices(sprite, vertices) end

---Copies the vertices data from a table into the sprite (no texture version)
---@tparam meshspriteObj sprite
---@tparam mesh_sprite_vertex_notexture[] vertices
function ncine.mesh_sprite.copy_vertices(sprite, vertices) end

---Sets the vertices data to the data used by another sprite
---@tparam meshspriteObj sprite
---@tparam meshspriteObj source_sprite
function ncine.mesh_sprite.set_vertices(sprite, source_sprite) end

---Creates an internal set of vertices from an external table of points in texture space, with optional texture cut mode
---@tparam meshspriteObj sprite
---@tparam ncine.vec2[] texels
---@tparam ncine.texture_cut_mode texture_cut_mode
function ncine.mesh_sprite.create_vertices_from_texels(sprite, texels, texture_cut_mode) end

---Emplaces the vertices data from an array of numbers into the sprite
---@tparam meshspriteObj sprite
---@tparam number[] vertices
function ncine.mesh_sprite.emplace_vertices(sprite, vertices) end

---Returns the number of indices used to draw the sprite mesh
---@tparam meshspriteObj sprite
---@treturn integer
function ncine.mesh_sprite.num_indices(sprite) end

---Returns the indices used to draw the sprite mesh
---@tparam meshspriteObj sprite
---@treturn integer[]
function ncine.mesh_sprite.get_indices(sprite) end

---Returns `true` if the indices belong to the sprite and are not stored externally
---@tparam meshspriteObj sprite
---@treturn boolean
function ncine.mesh_sprite.are_unique_indices(sprite) end

---Copies the indices data from a table into the sprite (no texture version)
---@tparam meshspriteObj sprite
---@tparam integer[] indices
function ncine.mesh_sprite.copy_indices(sprite, indices) end

---Sets the indices data to the data used by another sprite
---@tparam meshspriteObj sprite
---@tparam meshspriteObj source_sprite
function ncine.mesh_sprite.set_indices(sprite, source_sprite) end

---Emplaces the indices data from an array of integers into the sprite
---@tparam meshspriteObj sprite
---@tparam integer[] indices
function ncine.mesh_sprite.emplace_indices(sprite, indices) end
