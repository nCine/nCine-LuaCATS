---@meta

--The light user data of an audio player object
---@class audioplayerObj: lightuserdata

---The table containing audio player related functions
---@class ncine.audio_player
ncine.audio_player = {}

---Returns `true` if a valid OpenAL source is currently assigned to the player
---@param player audioplayerObj
---@return boolean
function ncine.audio_player.has_source(player) end

---Returns the OpenAL id of the player source
---@param player audioplayerObj
---@return integer
function ncine.audio_player.source_id(player) end

---Returns the OpenAL id of the currently playing buffer
---@param player audioplayerObj
---@return integer
function ncine.audio_player.buffer_id(player) end

---Returns the number of bytes per sample
---@param player audioplayerObj
---@return integer
function ncine.audio_player.bytes_per_sample(player) end

---Returns the number of audio channels of the currently playing buffer
---@param player audioplayerObj
---@return integer
function ncine.audio_player.num_channels(player) end

---Returns the samples frequency of the currently playing buffer
---@param player audioplayerObj
---@return integer
function ncine.audio_player.frequency(player) end

---Returns the number of samples
---@param player audioplayerObj
---@return integer
function ncine.audio_player.num_samples(player) end

---Returns the duration in seconds
---@param player audioplayerObj
---@return number
function ncine.audio_player.duration(player) end

---Returns the size of the currently playing buffer in bytes
---@param player audioplayerObj
---@return integer
function ncine.audio_player.buffer_size(player) end

---Returns the size of the currently playing buffer in bytes
---@param player audioplayerObj
---@return integer
function ncine.audio_player.get_sample_offset(player) end

---Returns the size of the currently playing buffer in bytes
---@param player audioplayerObj
---@param offset integer
function ncine.audio_player.set_sample_offset(player, offset) end

---Returns `true` if the OpenAL source is locked
---@param player audioplayerObj
---@return boolean
function ncine.audio_player.is_source_locked(player) end

---Locks an OpenAL source so it is not released to the pool when the player stops
---@param player audioplayerObj
---@param locked boolean
function ncine.audio_player.set_source_locked(player, locked) end

---Starts playing
---@param player audioplayerObj
function ncine.audio_player.play(player) end

---Pauses playing
---@param player audioplayerObj
function ncine.audio_player.pause(player) end

---Stops playing and rewinds
---@param player audioplayerObj
function ncine.audio_player.stop(player) end

---Returns `true` if the player is playing
---@param player audioplayerObj
---@return boolean
function ncine.audio_player.is_playing(player) end

---Returns `true` if the player is paused
---@param player audioplayerObj
---@return boolean
function ncine.audio_player.is_paused(player) end

---Returns `true` if the player is stopped
---@param player audioplayerObj
---@return boolean
function ncine.audio_player.is_stopped(player) end

---Returns the looping property of the player
---@param player audioplayerObj
---@return boolean
function ncine.audio_player.is_looping(player) end

---Sets the looping property of the player
---@param player audioplayerObj
---@param looping boolean
function ncine.audio_player.set_looping(player, looping) end

---Returns the player gain value
---@param player audioplayerObj
---@return number
function ncine.audio_player.get_gain(player) end

---Sets the player gain value
---@param player audioplayerObj
---@param gain number
function ncine.audio_player.set_gain(player, gain) end

---Returns the player pitch value
---@param player audioplayerObj
---@return number
function ncine.audio_player.get_pitch(player) end

---Sets the player pitch value
---@param player audioplayerObj
---@param pitch number
function ncine.audio_player.set_pitch(player, pitch) end

---Returns the player position vector
---@param player audioplayerObj
---@return ncine.vec3
function ncine.audio_player.get_position(player) end

---Sets the player position vector
---@param player audioplayerObj
---@param position ncine.vec3
function ncine.audio_player.set_position(player, position) end

---Sets the player position vector through components
---@param player audioplayerObj
---@param position_x number
---@param position_y number
---@param position_z number
function ncine.audio_player.set_position(player, position_x, position_y, position_z) end

---Returns the player velocity vector
---@param player audioplayerObj
---@return ncine.vec3
function ncine.audio_player.get_velocity(player) end

---Sets the player velocity vector
---@param player audioplayerObj
---@param velocity ncine.vec3
function ncine.audio_player.set_velocity(player, velocity) end

---Sets the player velocity vector through components
---@param player audioplayerObj
---@param velocity_x number
---@param velocity_y number
---@param velocity_z number
function ncine.audio_player.set_velocity(player, velocity_x, velocity_y, velocity_z) end

---Returns the player direction vector
---@param player audioplayerObj
---@return ncine.vec3
function ncine.audio_player.get_direction(player) end

---Sets the player direction vector
---@param player audioplayerObj
---@param direction ncine.vec3
function ncine.audio_player.set_direction(player, direction) end

---Sets the player direction vector through components
---@param player audioplayerObj
---@param direction_x number
---@param direction_y number
---@param direction_z number
function ncine.audio_player.set_direction(player, direction_x, direction_y, direction_z) end

---Returns the player inside angle of the sound cone in degrees
---@param player audioplayerObj
---@return number
function ncine.audio_player.get_cone_inner_angle(player) end

---Sets the player inside angle of the sound cone in degrees
---@param player audioplayerObj
---@param angle number
function ncine.audio_player.set_cone_inner_angle(player, angle) end

---Returns the player outside angle of the sound cone in degrees
---@param player audioplayerObj
---@return number
function ncine.audio_player.get_cone_outer_angle(player) end

---Sets the player outside angle of the sound cone in degrees
---@param player audioplayerObj
---@param angle number
function ncine.audio_player.set_cone_outer_angle(player, angle) end

---Returns the player multiplication factor to determine the gain outside the cone
---@param player audioplayerObj
---@return number
function ncine.audio_player.get_cone_outer_gain(player) end

---Sets the player multiplication factor to determine the gain outside the cone
---@param player audioplayerObj
---@param gain number
function ncine.audio_player.set_cone_outer_gain(player, gain) end

-- The following functions are only available if the OpenAL EFX extension is available

---Returns the player air absorption factor
---@param player audioplayerObj
---@return number
function ncine.audio_player.get_air_absorption_factor(player) end

---Sets the player air absorption factor
---@param player audioplayerObj
---@param factor number
function ncine.audio_player.set_air_absorption_factor(player, factor) end

---Returns the player room rolloff factor
---@param player audioplayerObj
---@return number
function ncine.audio_player.get_room_rolloff_factor(player) end

---Sets the player room rolloff factor
---@param player audioplayerObj
---@param factor number
function ncine.audio_player.set_room_rolloff_factor(player, factor) end

---Returns the player cone outer gain HF value
---@param player audioplayerObj
---@return number
function ncine.audio_player.get_cone_outer_gain_hf(player) end

---Sets the player cone outer gain HF value
---@param player audioplayerObj
---@param gain number
function ncine.audio_player.set_cone_outer_gain_hf(player, gain) end

---Returns `true` if a valid OpenAL effect slot is currently assigned to the player
---@param player audioplayerObj
---@return boolean
function ncine.audio_player.has_effect_slot(player) end

---Returns the OpenAL id of the effect slot
---@param player audioplayerObj
---@return integer
function ncine.audio_player.get_effect_slot_id(player) end

---Returns `true` if a valid OpenAL auxiliary filter is currently assigned to the player
---@param player audioplayerObj
---@return boolean
function ncine.audio_player.has_aux_filter(player) end

---Returns the OpenAL id of the auxiliary filter
---@param player audioplayerObj
---@return integer
function ncine.audio_player.get_aux_filter_id(player) end

---Returns `true` if a valid OpenAL direct filter is currently assigned to the player
---@param player audioplayerObj
---@return boolean
function ncine.audio_player.has_direct_filter(player) end

---Returns the OpenAL id of the direct filter
---@param player audioplayerObj
---@return integer
function ncine.audio_player.get_direct_filter_id(player) end

---Sets or removes an affect slot, with an optional auxiliary filter, to the player
---@param player audioplayerObj
---@param audio_effect_slot? audioeffectslotObj
---@param audio_filter? audiofilterObj
function ncine.audio_player.set_effect_slot(player, audio_effect_slot, audio_filter) end

---Sets or removes the filter parameters from a filter object to the direct signal
---@param player audioplayerObj
---@param audio_filter? audiofilterObj
function ncine.audio_player.set_direct_filter(player, audio_filter) end
