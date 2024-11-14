---@meta

---The light user data of a camera object
---@class cameraObj: lightuserdata

---A camera projection values table
---@class camera_projection_values
---@field left number
---@field right number
---@field top number
---@field bottom number

---A camera view values table
---@class camera_view_values
---@field x number
---@field y number
---@field rotation number
---@field scale number

---The table containing camera related functions
---@class ncine.camera
ncine.camera = {}

---Constructs a camera object
---
---Don't forget to call [delete](lua://ncine.camera.delete) when you are done with it!
---@return cameraObj # A new camera object
---@nodiscard
function ncine.camera.new() end

---Destroys a camera object and releases its memory
---@param camera cameraObj # The camera object to be destroyed
function ncine.camera.delete(camera) end

---Returns the projection values that are used to create the projection matrix
---@param camera cameraObj
---@return camera_projection_values
function ncine.camera.get_projection_values(camera) end

---Returns the view values that are used to create the model matrix
---@param camera cameraObj
---@return camera_view_values
function ncine.camera.get_view_values(camera) end

---Updates the projection matrix using the projection values from the table
---@param camera cameraObj
---@param projection_values camera_projection_values
function ncine.camera.set_ortho_projection(camera, projection_values) end

---Updates the model matrix using the view values from the table
---@param camera cameraObj
---@param view_values camera_view_values
function ncine.camera.set_view(camera, view_values) end
