---The table containing animated sprite related functions.
---
---Inherits from @{ncine.sprite}.
---@module ncine.animated_sprite

---The light user data of an animated sprite object.
---
---Inherits from @{ncine.sprite.spriteObj}.
---@table animatedspriteObj

---Constructs an animated sprite object with a parent scene node, a texture, and position components.
---
---Don't forget to call @{delete} when you are done with it!
---@tparam ncine.scenenode.scenenodeObj|nil parent The parent scenenode
---@tparam ncine.texture.textureObj|nil texture The texture object
---@tparam number x The X component of the position
---@tparam number y The Y component of the position
---@treturn animatedspriteObj A new animated sprite object
function ncine.animated_sprite.new(parent, texture, x, y) end

---Constructs an animated sprite object with a parent scene node, a texture, and a position vector.
---
---Don't forget to call @{delete} when you are done with it!
---@tparam ncine.scenenode.scenenodeObj|nil parent The parent scenenode
---@tparam ncine.texture.textureObj|nil texture The texture object
---@tparam ncine.vec2 pos The position vector
---@treturn animatedspriteObj A new animated sprite object
function ncine.animated_sprite.new(parent, texture, pos) end

---Constructs a new animated sprite object as a clone of the specified one.
---
---Don't forget to call @{delete} when you are done with it!
---@tparam animatedspriteObj sprite The sprite object to be cloned
---@treturn animatedspriteObj The cloned animated sprite object
function ncine.animated_sprite.clone(sprite) end

---Destroys an animated sprite object and releases its memory
---@tparam animatedspriteObj sprite The animated sprite object to be destroyed
function ncine.animated_sprite.delete(sprite) end

---Returns `true` if the current animation is paused
---@tparam animatedspriteObj sprite
---@treturn boolean
function ncine.animated_sprite.is_paused(sprite) end

---Sets the pause state for the animation
---@tparam animatedspriteObj sprite
---@tparam boolean paused
function ncine.animated_sprite.set_paused(sprite, paused) end

---Adds a new animation
---
---An example of a valid animation table is the following:
---    local animation = {
---        frame_duration = 0.5, -- half a second
---        loop_mode = nc.loop_mode.ENABLED,
---        rewind_mode = nc.rewind_mode.FROM_START,
---        rect_size = { x = 32, y = 32 },
---        source_rect = { x = 0, y = 0, w = 96, h = 48 },
---        num_rectangles_to_skip = 0, -- default is 0 if the field is not specified
---        padding = { x = 0, y = 0 }, -- default is {x = 0, y = 0} if the field is not specified
---    }
---@tparam animatedspriteObj sprite
---@tparam ncine.rect_animation anim
function ncine.animated_sprite.add_animation(sprite, anim) end

---Deletes all animations
---@tparam animatedspriteObj sprite
function ncine.animated_sprite.clear_animations(sprite) end

---Returns the number of animations
---@tparam animatedspriteObj sprite
---@treturn integer
function ncine.animated_sprite.num_animations(sprite) end

---Returns the current animation index
---@tparam animatedspriteObj sprite
---@treturn integer
function ncine.animated_sprite.get_animation_index(sprite) end

---Sets the current animation index
---@tparam animatedspriteObj sprite
---@tparam integer index
function ncine.animated_sprite.set_animation_index(sprite, index) end

---Returns the number of frames in current animation
---@tparam animatedspriteObj sprite
---@treturn integer
function ncine.animated_sprite.num_frames(sprite) end

---Returns the frame number in current animation
---@tparam animatedspriteObj sprite
---@treturn integer
function ncine.animated_sprite.get_frame(sprite) end

---Sets current animation to a specified frame number
---@tparam animatedspriteObj sprite
---@tparam integer frame
function ncine.animated_sprite.set_frame(sprite, frame) end
