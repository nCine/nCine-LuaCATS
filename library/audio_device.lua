---@meta

---The table containing the audio device related functions
---@class ncine.audio_device
ncine.audio_device = {}

---Returns the name of the audio device
---@return string
function ncine.audio_device.name() end

---Returns `true` if the OpenAL EFX extension is available
---@return boolean
function ncine.audio_device.has_efx_extension() end

---Returns the listener gain value
---@return number
function ncine.audio_device.get_gain() end

---Sets the listener gain value
---@param gain number
function ncine.audio_device.set_gain(gain) end

---Returns the listener position vector
---@return ncine.vec3
function ncine.audio_device.get_position() end

---Sets the listener position vector
---@param position ncine.vec3
function ncine.audio_device.set_position(position) end

---Sets the listener position vector through components
---@param position_x number
---@param position_y number
---@param position_z number
function ncine.audio_device.set_position(position_x, position_y, position_z) end

---Returns the listener velocity vector
---@return ncine.vec3
function ncine.audio_device.get_velocity() end

---Sets the listener velocity vector
---@param velocity ncine.vec3
function ncine.audio_device.set_velocity(velocity) end

---Sets the listener velocity vector through components
---@param velocity_x number
---@param velocity_y number
---@param velocity_z number
function ncine.audio_device.set_position(velocity_x, velocity_y, velocity_z) end

---Returns the maximum number of audio sources
---@return integer
function ncine.audio_device.get_max_num_sources() end

---Returns the number of available audio sources
---@return integer
function ncine.audio_device.get_num_available_sources() end

---Returns the number of active players
---@return integer
function ncine.audio_device.get_num_players() end

---Returns the specified active player object
---@param index integer
---@return audioplayerObj?
function ncine.audio_device.get_player(index) end

---Pauses every player currently playing
---
---Paused players can be resumed with `resume_players()`.
function ncine.audio_device.pause_players() end

---Stops every player currently playing
function ncine.audio_device.stop_players() end

---Resumes all and only the players that were paused by a `pause_players()` call
function ncine.audio_device.resume_players() end

---Pauses all audio device activities using an OpenAL-soft extension (if available)
---
---If the extension is not available, all players are paused.
function ncine.audio_device.pause_device() end

---Resumes all audio device activities using an OpenAL-soft extension (if available)
---
---If the extension is not available, all paused players resume playing.
function ncine.audio_device.resume_device() end
