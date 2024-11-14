---@meta

---The light user data of an animated sprite object
---@class animatedspriteObj: spriteObj

---The table containing animated sprite related functions
---@class ncine.animated_sprite: ncine.sprite
ncine.animated_sprite = {}

---Constructs an animated sprite object with a parent scene node, a texture, and position components
---
---Don't forget to call [delete](lua://ncine.animated_sprite.delete) when you are done with it!
---@param parent? scenenodeObj # The parent scenenode
---@param texture? textureObj # The texture object
---@param x number # The X component of the position
---@param y number # The Y component of the position
---@return animatedspriteObj # A new animated sprite object
---@nodiscard
function ncine.animated_sprite.new(parent, texture, x, y) end

---Constructs an animated sprite object with a parent scene node, a texture, and a position vector
---
---Don't forget to call [delete](lua://ncine.animated_sprite.delete) when you are done with it!
---@param parent? scenenodeObj # The parent scenenode
---@param texture? textureObj # The texture object
---@param pos ncine.vec2 # The position vector
---@return animatedspriteObj # A new animated sprite object
---@nodiscard
function ncine.animated_sprite.new(parent, texture, pos) end

---Constructs a new animated sprite object as a clone of the specified one
---
---Don't forget to call [delete](lua://ncine.animated_sprite.delete) when you are done with it!
---@param sprite animatedspriteObj # The sprite object to be cloned
---@return animatedspriteObj # The cloned animated sprite object
---@nodiscard
function ncine.animated_sprite.clone(sprite) end

---Destroys an animated sprite object and releases its memory
---@param sprite animatedspriteObj # The animated sprite object to be destroyed
function ncine.animated_sprite.delete(sprite) end

---Returns `true` if the current animation is paused
---@param sprite animatedspriteObj
---@return boolean
function ncine.animated_sprite.is_paused(sprite) end

---Sets the pause state for the animation
---@param sprite animatedspriteObj
---@param paused boolean
function ncine.animated_sprite.set_paused(sprite, paused) end

---Adds a new animation
---
---An example of a valid animation table is the following:
---```lua
---local animation = {
---    frame_duration = 0.5, -- half a second
---    loop_mode = nc.loop_mode.ENABLED,
---    rewind_mode = nc.rewind_mode.FROM_START,
---    rect_size = { x = 32, y = 32 },
---    source_rect = { x = 0, y = 0, w = 96, h = 48 },
---    num_rectangles_to_skip = 0, -- default is 0 if the field is not specified
---    padding = { x = 0, y = 0 }, -- default is {x = 0, y = 0} if the field is not specified
---}
---```
---@param sprite animatedspriteObj
---@param anim ncine.rect_animation
function ncine.animated_sprite.add_animation(sprite, anim) end

---Deletes all animations
---@param sprite animatedspriteObj
function ncine.animated_sprite.clear_animations(sprite) end

---Returns the number of animations
---@param sprite animatedspriteObj
---@return integer
function ncine.animated_sprite.num_animations(sprite) end

---Returns the current animation index
---@param sprite animatedspriteObj
---@return integer
function ncine.animated_sprite.get_animation_index(sprite) end

---Sets the current animation index
---@param sprite animatedspriteObj
---@param index integer
function ncine.animated_sprite.set_animation_index(sprite, index) end

---Returns the number of frames in current animation
---@param sprite animatedspriteObj
---@return integer
function ncine.animated_sprite.num_frames(sprite) end

---Returns the frame number in current animation
---@param sprite animatedspriteObj
---@return integer
function ncine.animated_sprite.get_frame(sprite) end

---Sets current animation to a specified frame number
---@param sprite animatedspriteObj
---@param frame integer
function ncine.animated_sprite.set_frame(sprite, frame) end
