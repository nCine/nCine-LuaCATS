---The table containing sprite related functions.
---
---Inherits from @{ncine.base_sprite}.
---@module ncine.sprite

---The light user data of a sprite object.
---
---Inherits from @{ncine.base_sprite.basespriteObj}.
---@table spriteObj

---Constructs a sprite object with a parent scene node, a texture, and position components.
---
---Don't forget to call @{delete} when you are done with it!
---@tparam ncine.scenenode.scenenodeObj parent|nil The parent scenenode
---@tparam ncine.texture.textureObj|nil texture The texture object
---@tparam number x The X component of the position
---@tparam number y The Y component of the position
---@treturn spriteObj A new sprite object
function ncine.sprite.new(parent, texture, x, y) end

---Constructs a sprite object with a parent scene node, a texture, and a position vector.
---
---Don't forget to call @{delete} when you are done with it!
---@tparam ncine.scenenode.scenenodeObj parent|nil The parent scenenode
---@tparam ncine.texture.textureObj|nil texture The texture object
---@tparam ncine.vec2 pos The position vector
---@treturn spriteObj A new sprite object
function ncine.sprite.new(parent, texture, pos) end

---Constructs a new sprite object as a clone of the specified one.
---
---Don't forget to call @{delete} when you are done with it!
---@tparam spriteObj sprite The sprite object to be cloned
---@treturn spriteObj The cloned sprite object
function ncine.sprite.clone(sprite) end

---Destroys a sprite object and releases its memory
---@tparam spriteObj sprite The sprite object to be destroyed
function ncine.sprite.delete(sprite) end
