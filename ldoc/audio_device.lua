---The table containing the audio device related functions
---@module ncine.audio_device

---Returns the name of the audio device
---@treturn string
function ncine.audio_device.name() end

---Returns `true` if the OpenAL EFX extension is available
---@treturn boolean
function ncine.audio_device.has_efx_extension() end

---Returns the listener gain value
---@treturn number
function ncine.audio_device.get_gain() end

---Sets the listener gain value
---@tparam number gain
function ncine.audio_device.set_gain(gain) end

---Returns the listener position vector
---@treturn ncine.vec3
function ncine.audio_device.get_position() end

---Sets the listener position vector
---@tparam ncine.vec3 position
function ncine.audio_device.set_position(position) end

---Sets the listener position vector through components
---@tparam number position_x
---@tparam number position_y
---@tparam number position_z
function ncine.audio_device.set_position(position_x, position_y, position_z) end

---Returns the listener velocity vector
---@treturn ncine.vec3
function ncine.audio_device.get_velocity() end

---Sets the listener velocity vector
---@tparam ncine.vec3 velocity
function ncine.audio_device.set_velocity(velocity) end

---Sets the listener velocity vector through components
---@tparam number velocity_x
---@tparam number velocity_y
---@tparam number velocity_z
function ncine.audio_device.set_position(velocity_x, velocity_y, velocity_z) end

---Returns the maximum number of audio sources
---@treturn integer
function ncine.audio_device.get_max_num_sources() end

---Returns the number of available audio sources
---@treturn integer
function ncine.audio_device.get_num_available_sources() end

---Returns the number of active players
---@treturn integer
function ncine.audio_device.get_num_players() end

---Returns the specified active player object
---@tparam integer index
---@treturn ncine.audioplayer.audioplayerObj|nil
function ncine.audio_device.get_player(index) end

---Pauses every player currently playing.
---
---Paused players can be resumed with `resume_players()`.
function ncine.audio_device.pause_players() end

---Stops every player currently playing
function ncine.audio_device.stop_players() end

---Resumes all and only the players that were paused by a `pause_players()` call
function ncine.audio_device.resume_players() end

---Pauses all audio device activities using an OpenAL-soft extension (if available).
---
---If the extension is not available, all players are paused.
function ncine.audio_device.pause_device() end

---Resumes all audio device activities using an OpenAL-soft extension (if available).
---
---If the extension is not available, all paused players resume playing.
function ncine.audio_device.resume_device() end
