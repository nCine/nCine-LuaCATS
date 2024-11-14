---@meta

---The light user data of a mesh sprite object
---@class meshspriteObj: basespriteObj

---Texture cut modes
---@enum ncine.texture_cut_mode
ncine.texture_cut_mode = {
	RESIZE = 0,
	CROP = 1,
}

---A mesh sprite vertex with UV texture coordinates
---@class mesh_sprite_vertex
---@field x number
---@field y number
---@field u number
---@field v number
mesh_sprite_vertex = {}

---A mesh sprite vertex
---@class mesh_sprite_vertex_notexture
---@field x number
---@field y number
mesh_sprite_vertex_notexture = {}

---The table containing mesh sprite related functions
---@class ncine.mesh_sprite: ncine.base_sprite
ncine.mesh_sprite = {}

---Constructs a mesh sprite object with a parent scene node, a texture, and position components
---
---Don't forget to call [delete](lua://ncine.mesh_sprite.delete) when you are done with it!
---@param parent? scenenodeObj # The parent scenenode
---@param texture? textureObj # The texture object
---@param x number # The X component of the position
---@param y number # The Y component of the position
---@return meshspriteObj # A new mesh sprite object
---@nodiscard
function ncine.mesh_sprite.new(parent, texture, x, y) end

---Constructs a mesh sprite object with a parent scene node, a texture, and a position vector
---
---Don't forget to call [delete](lua://ncine.mesh_sprite.delete) when you are done with it!
---@param parent? scenenodeObj # The parent scenenode
---@param texture? textureObj # The texture object
---@param pos ncine.vec2 # The position vector
---@return meshspriteObj # A new mesh sprite object
---@nodiscard
function ncine.mesh_sprite.new(parent, texture, pos) end

---Constructs a new mesh sprite object as a clone of the specified one
---
---Don't forget to call [delete](lua://ncine.mesh_sprite.delete) when you are done with it!
---@param sprite meshspriteObj # The sprite object to be cloned
---@return meshspriteObj # The cloned mesh sprite object
---@nodiscard
function ncine.mesh_sprite.clone(sprite) end

---Destroys a mesh sprite object and releases its memory
---@param sprite meshspriteObj # The mesh sprite object to be destroyed
function ncine.mesh_sprite.delete(sprite) end

---Returns the number of bytes used by each vertex
---@param sprite meshspriteObj
---@return integer
function ncine.mesh_sprite.get_bytes_per_vertex(sprite) end

---Returns the number of vertices of the sprite mesh
---@param sprite meshspriteObj
---@return integer
function ncine.mesh_sprite.num_vertices(sprite) end

---Returns the total number of bytes used by all sprite's vertices
---@param sprite meshspriteObj
---@return integer
function ncine.mesh_sprite.num_bytes(sprite) end

---Returns the vertices data of the sprite mesh
---@param sprite meshspriteObj
---@return number[]
function ncine.mesh_sprite.get_vertices(sprite) end

---Returns `true` if the vertices belong to the sprite and are not stored externally
---@param sprite meshspriteObj
---@return boolean
function ncine.mesh_sprite.are_unique_vertices(sprite) end

---Copies the vertices data from a table into the sprite
---@param sprite meshspriteObj
---@param vertices mesh_sprite_vertex[]
function ncine.mesh_sprite.copy_vertices(sprite, vertices) end

---Copies the vertices data from a table into the sprite (no texture version)
---@param sprite meshspriteObj
---@param vertices mesh_sprite_vertex_notexture[]
function ncine.mesh_sprite.copy_vertices(sprite, vertices) end

---Sets the vertices data to the data used by another sprite
---@param sprite meshspriteObj
---@param source_sprite meshspriteObj
function ncine.mesh_sprite.set_vertices(sprite, source_sprite) end

---Creates an internal set of vertices from an external table of points in texture space, with optional texture cut mode
---@param sprite meshspriteObj
---@param texels ncine.vec2[]
---@param texture_cut_mode ncine.texture_cut_mode
function ncine.mesh_sprite.create_vertices_from_texels(sprite, texels, texture_cut_mode) end

---Emplaces the vertices data from an array of numbers into the sprite
---@param sprite meshspriteObj
---@param vertices number[]
function ncine.mesh_sprite.emplace_vertices(sprite, vertices) end

---Returns the number of indices used to draw the sprite mesh
---@param sprite meshspriteObj
---@return integer
function ncine.mesh_sprite.num_indices(sprite) end

---Returns the indices used to draw the sprite mesh
---@param sprite meshspriteObj
---@return integer[]
function ncine.mesh_sprite.get_indices(sprite) end

---Returns `true` if the indices belong to the sprite and are not stored externally
---@param sprite meshspriteObj
---@return boolean
function ncine.mesh_sprite.are_unique_indices(sprite) end

---Copies the indices data from a table into the sprite (no texture version)
---@param sprite meshspriteObj
---@param indices integer[]
function ncine.mesh_sprite.copy_indices(sprite, indices) end

---Sets the indices data to the data used by another sprite
---@param sprite meshspriteObj
---@param source_sprite meshspriteObj
function ncine.mesh_sprite.set_indices(sprite, source_sprite) end

---Emplaces the indices data from an array of integers into the sprite
---@param sprite meshspriteObj
---@param indices integer[]
function ncine.mesh_sprite.emplace_indices(sprite, indices) end
