---The table containing base sprite related functions.
---
---Inherits from @{ncine.drawable_node}.
---@module ncine.base_sprite

---The light user data of a base sprite object.
---
---Inherits from @{ncine.drawable_node.drawablenodeObj}.
---@table basespriteObj

---Sets the sprite size
---@tparam basespriteObj sprite
---@tparam number width
---@tparam number height
function ncine.base_sprite.set_size(sprite, width, height) end

---Returns the texture object
---@tparam basespriteObj sprite
---@treturn ncine.texture.textureObj|nil
function ncine.base_sprite.get_texture(sprite) end

---Sets the texture object
---@tparam basespriteObj sprite
---@tparam ncine.texture.textureObj|nil texture
function ncine.base_sprite.set_texture(sprite, texture) end

---Triggers a texture update without setting a new texture
---@tparam basespriteObj sprite
function ncine.base_sprite.reset_texture(sprite) end

---Returns the texture source rectangle for blitting
---@tparam basespriteObj sprite
---@treturn ncine.rect
function ncine.base_sprite.get_texrect(sprite) end

---Sets the texture source rectangle for blitting
---@tparam basespriteObj sprite
---@tparam ncine.rect rect
function ncine.base_sprite.set_texrect(sprite, rect) end

---Returns `true` if the sprite texture is horizontally flipped
---@tparam basespriteObj sprite
---@treturn boolean
function ncine.base_sprite.is_flipped_x(sprite) end

---Flips the texture rect horizontally
---@tparam basespriteObj sprite
---@tparam boolean flipped_x
function ncine.base_sprite.set_flipped_x(sprite, flipped_x) end

---Returns `true` if the sprite texture is vertically flipped
---@tparam basespriteObj sprite
---@treturn boolean
function ncine.base_sprite.is_flipped_y(sprite) end

---Flips the texture rect vertically
---@tparam basespriteObj sprite
---@tparam boolean flipped_y
function ncine.base_sprite.set_flipped_y(sprite, flipped_y) end
