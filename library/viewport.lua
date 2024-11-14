---@meta

---The light user data of a viewport object
---@class viewportObj: lightuserdata

---Viewport types
---@enum ncine.viewport_type
ncine.viewport_type = {
	WITH_TEXTURE = 0,
	NO_TEXTURE = 1,
	SCREEN = 2,
}

---Clear modes
---@enum ncine.clear_mode
ncine.clear_mode = {
	EVERY_DRAW = 0,
	EVERY_FRAME = 1,
	THIS_FRAME_ONLY = 2,
	NEXT_FRAME_ONLY = 3,
	NEVER = 4,
}

---Depth and stencil formats
---@enum ncine.depth_stencil_format
ncine.depth_stencil_format = {
	NONE = 0,
	DEPTH16 = 1,
	DEPTH24 = 2,
	DEPTH24_STENCIL8 = 3,
}

---The table containing viewport related functions
---@class ncine.viewport
ncine.viewport = {}

---Constructs a viewport object
---
---Don't forget to call [delete](lua://ncine.viewport.delete) when you are done with it!
---@return viewportObj # A new viewport object
---@nodiscard
function ncine.viewport.new() end

---Destroys a viewport object and releases its memory
---@param viewport viewportObj # The viewport object to be destroyed
function ncine.viewport.delete(viewport) end

---Returns the viewport type
---@param viewport viewportObj
---@return ncine.viewport_type
function ncine.viewport.get_type(viewport) end

---Returns the texture at the specified viewport's FBO color attachment index, if any
---@param viewport viewportObj
---@param index integer
---@return textureObj?
function ncine.viewport.get_texture(viewport, index) end

---Adds or removes a texture at the specified viewport's FBO color attachment index
---@param viewport viewportObj
---@param index integer
---@param texture textureObj?
---@return boolean # True if a texture has been added or removed successfully
function ncine.viewport.set_texture(viewport, index, texture) end

---Returns the depth and stencil format of the viewport's FBO renderbuffer
---@param viewport viewportObj
---@return ncine.depth_stencil_format
function ncine.viewport.get_depth_stencil_format(viewport) end

---Sets the depth and stencil format of the viewport's FBO renderbuffer
---@param viewport viewportObj
---@param depth_stencil_format ncine.depth_stencil_format
---@return boolean # True if a new depth and stencil format has been successfully set
function ncine.viewport.set_depth_stencil_format(viewport, depth_stencil_format) end

---Removes all textures and the depth stencil renderbuffer from the viewport's FBO
---@param viewport viewportObj
---@return boolean # True if the viewport is not the screen and all textures have been removed
function ncine.viewport.remove_all_textures(viewport) end

---Returns viewport's FBO width or zero if no texture is present
---@param viewport viewportObj
---@return integer
function ncine.viewport.get_width(viewport) end

---Returns viewport's FBO height or zero if no texture is present
---@param viewport viewportObj
---@return integer
function ncine.viewport.get_height(viewport) end

---Returns the number of color attachments of the viewport's FBO
---@param viewport viewportObj
---@return integer
function ncine.viewport.get_num_color_attachments(viewport) end

---Returns the OpenGL viewport rectangle
---@param viewport viewportObj
---@return ncine.rect
function ncine.viewport.get_viewport_rect(viewport) end

---Sets the OpenGL viewport rectangle through a `ncine.rect` table
---@param viewport viewportObj
---@param rect ncine.rect
function ncine.viewport.set_viewport_rect(viewport, rect) end

---Sets the OpenGL viewport rectangle through rectangle components
---@param viewport viewportObj
---@param x integer
---@param y integer
---@param w integer
---@param h integer
function ncine.viewport.set_viewport_rect(viewport, x, y, w, h) end

---Returns the OpenGL scissor test rectangle
---@param viewport viewportObj
---@return ncine.rect
function ncine.viewport.get_scissor_rect(viewport) end

---Sets the OpenGL scissor test rectangle through a `ncine.rect` table
---@param viewport viewportObj
---@param rect ncine.rect
function ncine.viewport.set_scissor_rect(viewport, rect) end

---Sets the OpenGL scissor test rectangle through rectangle components
---@param viewport viewportObj
---@param x integer
---@param y integer
---@param w integer
---@param h integer
function ncine.viewport.set_scissor_rect(viewport, x, y, w, h) end

---Returns the rectangle for screen culling
---@param viewport viewportObj
---@return ncine.rect
function ncine.viewport.get_culling_rect(viewport) end

---Returns the last frame this viewport was cleared
---@param viewport viewportObj
---@return integer
function ncine.viewport.get_last_frame_cleared(viewport) end

---Returns the viewport clear mode
---@param viewport viewportObj
---@return ncine.clear_mode
function ncine.viewport.get_clear_mode(viewport) end

---Sets the viewport clear mode
---@param viewport viewportObj
---@param clear_mode ncine.clear_mode
function ncine.viewport.set_clear_mode(viewport, clear_mode) end

---Returns the viewport clear color as a `ncine.color` table
---@param viewport viewportObj
---@return ncine.color
function ncine.viewport.get_clear_color(viewport) end

---Sets the viewport clear color through a `ncine.color` table
---@param viewport viewportObj
---@param clear_color ncine.color
function ncine.viewport.set_clear_color(viewport, clear_color) end

---Sets the viewport clear color through color components
---@param viewport viewportObj
---@param r number
---@param g number
---@param b number
---@param a number
function ncine.viewport.set_clear_color(viewport, r, g, b, a) end

---Returns the root node
---@param viewport viewportObj
---@return scenenodeObj?
function ncine.viewport.get_rootnode(viewport) end

---Sets or removes the root node
---@param viewport viewportObj
---@param rootnode? scenenodeObj
function ncine.viewport.set_rootnode(viewport, rootnode) end

---Clears the array of viewports to be drawn before the screen
function ncine.viewport.clear_chain() end

---Pushes a viewport to the back of the array of viewports to be drawn before the screen
---@param viewport viewportObj
function ncine.viewport.push_back_chain(viewport) end

---Pushes a viewport to the front of the array of viewports to be drawn before the screen
---@param viewport viewportObj
function ncine.viewport.push_front_chain(viewport) end

---Returns the camera used for rendering
---@param viewport viewportObj
---@return cameraObj?
function ncine.viewport.get_camera(viewport) end

---Sets the camera to be used for rendering
---@param viewport viewportObj
---@param camera? cameraObj # Can be `nil` to use the default one
function ncine.viewport.set_camera(viewport, camera) end

---Sets the OpenGL object label for the viewport framebuffer object
---@param viewport viewportObj
---@param label string
function ncine.viewport.set_glframebuffer_label(viewport, label) end
