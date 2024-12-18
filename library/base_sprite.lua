---@meta

--The light user data of a base sprite object
---@class basespriteObj: drawablenodeObj

---The table containing base sprite related functions
---@class ncine.base_sprite: ncine.drawable_node
ncine.base_sprite = {}

---Sets the sprite size
---@param sprite basespriteObj
---@param width number
---@param height number
function ncine.base_sprite.set_size(sprite, width, height) end

---Returns the texture object
---@param sprite basespriteObj
---@return textureObj?
function ncine.base_sprite.get_texture(sprite) end

---Sets the texture object
---@param sprite basespriteObj
---@param texture? textureObj
function ncine.base_sprite.set_texture(sprite, texture) end

---Triggers a texture update without setting a new texture
---@param sprite basespriteObj
function ncine.base_sprite.reset_texture(sprite) end

---Returns the texture source rectangle for blitting
---@param sprite basespriteObj
---@return ncine.rect
function ncine.base_sprite.get_texrect(sprite) end

---Sets the texture source rectangle for blitting
---@param sprite basespriteObj
---@param rect ncine.rect
function ncine.base_sprite.set_texrect(sprite, rect) end

---Returns `true` if the sprite texture is horizontally flipped
---@param sprite basespriteObj
---@return boolean
function ncine.base_sprite.is_flipped_x(sprite) end

---Flips the texture rect horizontally
---@param sprite basespriteObj
---@param flipped_x boolean
function ncine.base_sprite.set_flipped_x(sprite, flipped_x) end

---Returns `true` if the sprite texture is vertically flipped
---@param sprite basespriteObj
---@return boolean
function ncine.base_sprite.is_flipped_y(sprite) end

---Flips the texture rect vertically
---@param sprite basespriteObj
---@param flipped_y boolean
function ncine.base_sprite.set_flipped_y(sprite, flipped_y) end
