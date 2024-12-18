---The table containing viewport related functions
---@module ncine.viewport

---The light user data of a viewport object
---@table viewportObj

---Viewport types (enumeration)
ncine.viewport_type = {
	WITH_TEXTURE = 0,
	NO_TEXTURE = 1,
	SCREEN = 2,
}

---Clear modes (enumeration)
ncine.clear_mode = {
	EVERY_DRAW = 0,
	EVERY_FRAME = 1,
	THIS_FRAME_ONLY = 2,
	NEXT_FRAME_ONLY = 3,
	NEVER = 4,
}

---Depth and stencil formats (enumeration)
ncine.depth_stencil_format = {
	NONE = 0,
	DEPTH16 = 1,
	DEPTH24 = 2,
	DEPTH24_STENCIL8 = 3,
}

---Constructs a viewport object.
---
---Don't forget to call @{delete} when you are done with it!
---@treturn viewportObj A new viewport object
function ncine.viewport.new() end

---Destroys a viewport object and releases its memory
---@tparam viewportObj viewport The viewport object to be destroyed
function ncine.viewport.delete(viewport) end

---Returns the viewport type
---@tparam viewportObj viewport
---@treturn ncine.viewport_type
function ncine.viewport.get_type(viewport) end

---Returns the texture at the specified viewport's FBO color attachment index, if any
---@tparam viewportObj viewport
---@tparam integer index
---@treturn ncine.texture.textureObj|nil
function ncine.viewport.get_texture(viewport, index) end

---Adds or removes a texture at the specified viewport's FBO color attachment index
---@tparam viewportObj viewport
---@tparam integer index
---@tparam ncine.texture.textureObj|nil texture
---@treturn boolean True if a texture has been added or removed successfully
function ncine.viewport.set_texture(viewport, index, texture) end

---Returns the depth and stencil format of the viewport's FBO renderbuffer
---@tparam viewportObj viewport
---@treturn ncine.depth_stencil_format
function ncine.viewport.get_depth_stencil_format(viewport) end

---Sets the depth and stencil format of the viewport's FBO renderbuffer
---@tparam viewportObj viewport
---@tparam ncine.depth_stencil_format depth_stencil_format
---@treturn boolean True if a new depth and stencil format has been successfully set
function ncine.viewport.set_depth_stencil_format(viewport, depth_stencil_format) end

---Removes all textures and the depth stencil renderbuffer from the viewport's FBO
---@tparam viewportObj viewport
---@treturn boolean True if the viewport is not the screen and all textures have been removed
function ncine.viewport.remove_all_textures(viewport) end

---Returns viewport's FBO width or zero if no texture is present
---@tparam viewportObj viewport
---@treturn integer
function ncine.viewport.get_width(viewport) end

---Returns viewport's FBO height or zero if no texture is present
---@tparam viewportObj viewport
---@treturn integer
function ncine.viewport.get_height(viewport) end

---Returns the number of color attachments of the viewport's FBO
---@tparam viewportObj viewport
---@treturn integer
function ncine.viewport.get_num_color_attachments(viewport) end

---Returns the OpenGL viewport rectangle
---@tparam viewportObj viewport
---@treturn ncine.rect
function ncine.viewport.get_viewport_rect(viewport) end

---Sets the OpenGL viewport rectangle through a `ncine.rect` table
---@tparam viewportObj viewport
---@tparam ncine.rect rect
function ncine.viewport.set_viewport_rect(viewport, rect) end

---Sets the OpenGL viewport rectangle through rectangle components
---@tparam viewportObj viewport
---@tparam integer x
---@tparam integer y
---@tparam integer w
---@tparam integer h
function ncine.viewport.set_viewport_rect(viewport, x, y, w, h) end

---Returns the OpenGL scissor test rectangle
---@tparam viewportObj viewport
---@treturn ncine.rect
function ncine.viewport.get_scissor_rect(viewport) end

---Sets the OpenGL scissor test rectangle through a `ncine.rect` table
---@tparam viewportObj viewport
---@tparam ncine.rect rect
function ncine.viewport.set_scissor_rect(viewport, rect) end

---Sets the OpenGL scissor test rectangle through rectangle components
---@tparam viewportObj viewport
---@tparam integer x
---@tparam integer y
---@tparam integer w
---@tparam integer h
function ncine.viewport.set_scissor_rect(viewport, x, y, w, h) end

---Returns the rectangle for screen culling
---@tparam viewportObj viewport
---@treturn ncine.rect
function ncine.viewport.get_culling_rect(viewport) end

---Returns the last frame this viewport was cleared
---@tparam viewportObj viewport
---@treturn integer
function ncine.viewport.get_last_frame_cleared(viewport) end

---Returns the viewport clear mode
---@tparam viewportObj viewport
---@treturn ncine.clear_mode
function ncine.viewport.get_clear_mode(viewport) end

---Sets the viewport clear mode
---@tparam viewportObj viewport
---@tparam ncine.clear_mode clear_mode
function ncine.viewport.set_clear_mode(viewport, clear_mode) end

---Returns the viewport clear color as a `ncine.color` table
---@tparam viewportObj viewport
---@treturn ncine.color
function ncine.viewport.get_clear_color(viewport) end

---Sets the viewport clear color through a `ncine.color` table
---@tparam viewportObj viewport
---@tparam ncine.color clear_color
function ncine.viewport.set_clear_color(viewport, clear_color) end

---Sets the viewport clear color through color components
---@tparam viewportObj viewport
---@tparam number r
---@tparam number g
---@tparam number b
---@tparam number a
function ncine.viewport.set_clear_color(viewport, r, g, b, a) end

---Returns the root node
---@tparam viewportObj viewport
---@treturn ncine.scenenode.scenenodeObj|nil
function ncine.viewport.get_rootnode(viewport) end

---Sets or removes the root node
---@tparam viewportObj viewport
---@tparam ncine.scenenode.scenenodeObj|nil rootnode
function ncine.viewport.set_rootnode(viewport, rootnode) end

---Clears the array of viewports to be drawn before the screen
function ncine.viewport.clear_chain() end

---Pushes a viewport to the back of the array of viewports to be drawn before the screen
---@tparam viewportObj viewport
function ncine.viewport.push_back_chain(viewport) end

---Pushes a viewport to the front of the array of viewports to be drawn before the screen
---@tparam viewportObj viewport
function ncine.viewport.push_front_chain(viewport) end

---Returns the camera used for rendering
---@tparam viewportObj viewport
---@treturn ncine.camera.cameraObj|nil
function ncine.viewport.get_camera(viewport) end

---Sets the camera to be used for rendering
---@tparam viewportObj viewport
---@tparam ncine.camera.cameraObj|nil camera Can be `nil` to use the default one
function ncine.viewport.set_camera(viewport, camera) end

---Sets the OpenGL object label for the viewport framebuffer object
---@tparam viewportObj viewport
---@tparam string label
function ncine.viewport.set_glframebuffer_label(viewport, label) end
