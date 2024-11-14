---@meta

---The light user data of a sprite object
---@class spriteObj: basespriteObj

---The table containing sprite related functions
---@class ncine.sprite: ncine.base_sprite
ncine.sprite = {}

---Constructs a sprite object with a parent scene node, a texture, and position components
---
---Don't forget to call [delete](lua://ncine.sprite.delete) when you are done with it!
---@param parent? scenenodeObj # The parent scenenode
---@param texture? textureObj # The texture object
---@param x number # The X component of the position
---@param y number # The Y component of the position
---@return spriteObj # A new sprite object
---@nodiscard
function ncine.sprite.new(parent, texture, x, y) end

---Constructs a sprite object with a parent scene node, a texture, and a position vector
---
---Don't forget to call [delete](lua://ncine.sprite.delete) when you are done with it!
---@param parent? scenenodeObj # The parent scenenode
---@param texture? textureObj # The texture object
---@param pos ncine.vec2 # The position vector
---@return spriteObj # A new sprite object
---@nodiscard
function ncine.sprite.new(parent, texture, pos) end

---Constructs a new sprite object as a clone of the specified one
---
---Don't forget to call [delete](lua://ncine.sprite.delete) when you are done with it!
---@param sprite spriteObj # The sprite object to be cloned
---@return spriteObj # The cloned sprite object
---@nodiscard
function ncine.sprite.clone(sprite) end

---Destroys a sprite object and releases its memory
---@param sprite spriteObj # The sprite object to be destroyed
function ncine.sprite.delete(sprite) end
