---The table containing camera related functions
---@module ncine.camera

---The light user data of a camera object
---@table cameraObj

---A camera projection values table
---@number left
---@number right
---@number top
---@number bottom
---@table camera_projection_values

---A camera view values table
---@number x
---@number y
---@number rotation
---@number scale
---@table camera_view_values

---Constructs a camera object.
---
---Don't forget to call @{delete} when you are done with it!
---@treturn cameraObj A new camera object
function ncine.camera.new() end

---Destroys a camera object and releases its memory
---@tparam cameraObj camera The camera object to be destroyed
function ncine.camera.delete(camera) end

---Returns the projection values that are used to create the projection matrix
---@tparam cameraObj camera
---@treturn camera_projection_values
function ncine.camera.get_projection_values(camera) end

---Returns the view values that are used to create the model matrix
---@tparam cameraObj camera
---@treturn camera_view_values
function ncine.camera.get_view_values(camera) end

---Updates the projection matrix using the projection values from the table
---@tparam cameraObj camera
---@tparam camera_projection_values projection_values
function ncine.camera.set_ortho_projection(camera, projection_values) end

---Updates the model matrix using the view values from the table
---@tparam cameraObj camera
---@tparam camera_view_values view_values
function ncine.camera.set_view(camera, view_values) end
