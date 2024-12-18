---The table containing audio player related functions
---@module ncine.audio_player

---The light user data of an audio player object
---@table audioplayerObj

---Returns `true` if a valid OpenAL source is currently assigned to the player
---@tparam audioplayerObj player
---@treturn boolean
function ncine.audio_player.has_source(player) end

---Returns the OpenAL id of the player source
---@tparam audioplayerObj player
---@treturn integer
function ncine.audio_player.source_id(player) end

---Returns the OpenAL id of the currently playing buffer
---@tparam audioplayerObj player
---@treturn integer
function ncine.audio_player.buffer_id(player) end

---Returns the number of bytes per sample
---@tparam audioplayerObj player
---@treturn integer
function ncine.audio_player.bytes_per_sample(player) end

---Returns the number of audio channels of the currently playing buffer
---@tparam audioplayerObj player
---@treturn integer
function ncine.audio_player.num_channels(player) end

---Returns the samples frequency of the currently playing buffer
---@tparam audioplayerObj player
---@treturn integer
function ncine.audio_player.frequency(player) end

---Returns the number of samples
---@tparam audioplayerObj player
---@treturn integer
function ncine.audio_player.num_samples(player) end

---Returns the duration in seconds
---@tparam audioplayerObj player
---@treturn number
function ncine.audio_player.duration(player) end

---Returns the size of the currently playing buffer in bytes
---@tparam audioplayerObj player
---@treturn integer
function ncine.audio_player.buffer_size(player) end

---Returns the size of the currently playing buffer in bytes
---@tparam audioplayerObj player
---@treturn integer
function ncine.audio_player.get_sample_offset(player) end

---Returns the size of the currently playing buffer in bytes
---@tparam audioplayerObj player
---@tparam integer offset
function ncine.audio_player.set_sample_offset(player, offset) end

---Returns `true` if the OpenAL source is locked
---@tparam audioplayerObj player
---@treturn boolean
function ncine.audio_player.is_source_locked(player) end

---Locks an OpenAL source so it is not released to the pool when the player stops
---@tparam audioplayerObj player
---@tparam boolean locked
function ncine.audio_player.set_source_locked(player, locked) end

---Starts playing
---@tparam audioplayerObj player
function ncine.audio_player.play(player) end

---Pauses playing
---@tparam audioplayerObj player
function ncine.audio_player.pause(player) end

---Stops playing and rewinds
---@tparam audioplayerObj player
function ncine.audio_player.stop(player) end

---Returns `true` if the player is playing
---@tparam audioplayerObj player
---@treturn boolean
function ncine.audio_player.is_playing(player) end

---Returns `true` if the player is paused
---@tparam audioplayerObj player
---@treturn boolean
function ncine.audio_player.is_paused(player) end

---Returns `true` if the player is stopped
---@tparam audioplayerObj player
---@treturn boolean
function ncine.audio_player.is_stopped(player) end

---Returns the looping property of the player
---@tparam audioplayerObj player
---@treturn boolean
function ncine.audio_player.is_looping(player) end

---Sets the looping property of the player
---@tparam audioplayerObj player
---@tparam boolean looping
function ncine.audio_player.set_looping(player, looping) end

---Returns the player gain value
---@tparam audioplayerObj player
---@treturn number
function ncine.audio_player.get_gain(player) end

---Sets the player gain value
---@tparam audioplayerObj player
---@tparam number gain
function ncine.audio_player.set_gain(player, gain) end

---Returns the player pitch value
---@tparam audioplayerObj player
---@treturn number
function ncine.audio_player.get_pitch(player) end

---Sets the player pitch value
---@tparam audioplayerObj player
---@tparam number pitch
function ncine.audio_player.set_pitch(player, pitch) end

---Returns the player position vector
---@tparam audioplayerObj player
---@treturn ncine.vec3
function ncine.audio_player.get_position(player) end

---Sets the player position vector
---@tparam audioplayerObj player
---@tparam ncine.vec3 position
function ncine.audio_player.set_position(player, position) end

---Sets the player position vector through components
---@tparam audioplayerObj player
---@tparam number position_x
---@tparam number position_y
---@tparam number position_z
function ncine.audio_player.set_position(player, position_x, position_y, position_z) end

---Returns the player velocity vector
---@tparam audioplayerObj player
---@treturn ncine.vec3
function ncine.audio_player.get_velocity(player) end

---Sets the player velocity vector
---@tparam audioplayerObj player
---@tparam ncine.vec3 velocity
function ncine.audio_player.set_velocity(player, velocity) end

---Sets the player velocity vector through components
---@tparam audioplayerObj player
---@tparam number velocity_x
---@tparam number velocity_y
---@tparam number velocity_z
function ncine.audio_player.set_velocity(player, velocity_x, velocity_y, velocity_z) end

---Returns the player direction vector
---@tparam audioplayerObj player
---@treturn ncine.vec3
function ncine.audio_player.get_direction(player) end

---Sets the player direction vector
---@tparam audioplayerObj player
---@tparam ncine.vec3 direction
function ncine.audio_player.set_direction(player, direction) end

---Sets the player direction vector through components
---@tparam audioplayerObj player
---@tparam number direction_x
---@tparam number direction_y
---@tparam number direction_z
function ncine.audio_player.set_direction(player, direction_x, direction_y, direction_z) end

---Returns the player inside angle of the sound cone in degrees
---@tparam audioplayerObj player
---@treturn number
function ncine.audio_player.get_cone_inner_angle(player) end

---Sets the player inside angle of the sound cone in degrees
---@tparam audioplayerObj player
---@tparam number angle
function ncine.audio_player.set_cone_inner_angle(player, angle) end

---Returns the player outside angle of the sound cone in degrees
---@tparam audioplayerObj player
---@treturn number
function ncine.audio_player.get_cone_outer_angle(player) end

---Sets the player outside angle of the sound cone in degrees
---@tparam audioplayerObj player
---@tparam number angle
function ncine.audio_player.set_cone_outer_angle(player, angle) end

---Returns the player multiplication factor to determine the gain outside the cone
---@tparam audioplayerObj player
---@treturn number
function ncine.audio_player.get_cone_outer_gain(player) end

---Sets the player multiplication factor to determine the gain outside the cone
---@tparam audioplayerObj player
---@tparam number gain
function ncine.audio_player.set_cone_outer_gain(player, gain) end

---@section OpenAL_EFX

---Returns the player air absorption factor (only available with OpenAL EFX)
---@tparam audioplayerObj player
---@treturn number
function ncine.audio_player.get_air_absorption_factor(player) end

---Sets the player air absorption factor (only available with OpenAL EFX)
---@tparam audioplayerObj player
---@tparam number factor
function ncine.audio_player.set_air_absorption_factor(player, factor) end

---Returns the player room rolloff factor (only available with OpenAL EFX)
---@tparam audioplayerObj player
---@treturn number
function ncine.audio_player.get_room_rolloff_factor(player) end

---Sets the player room rolloff factor (only available with OpenAL EFX)
---@tparam audioplayerObj player
---@tparam number factor
function ncine.audio_player.set_room_rolloff_factor(player, factor) end

---Returns the player cone outer gain HF value (only available with OpenAL EFX)
---@tparam audioplayerObj player
---@treturn number
function ncine.audio_player.get_cone_outer_gain_hf(player) end

---Sets the player cone outer gain HF value (only available with OpenAL EFX)
---@tparam audioplayerObj player
---@tparam number gain
function ncine.audio_player.set_cone_outer_gain_hf(player, gain) end

---Returns `true` if a valid OpenAL effect slot is currently assigned to the player (only available with OpenAL EFX)
---@tparam audioplayerObj player
---@treturn boolean
function ncine.audio_player.has_effect_slot(player) end

---Returns the OpenAL id of the effect slot (only available with OpenAL EFX)
---@tparam audioplayerObj player
---@treturn integer
function ncine.audio_player.get_effect_slot_id(player) end

---Returns `true` if a valid OpenAL auxiliary filter is currently assigned to the player (only available with OpenAL EFX)
---@tparam audioplayerObj player
---@treturn boolean
function ncine.audio_player.has_aux_filter(player) end

---Returns the OpenAL id of the auxiliary filter (only available with OpenAL EFX)
---@tparam audioplayerObj player
---@treturn integer
function ncine.audio_player.get_aux_filter_id(player) end

---Returns `true` if a valid OpenAL direct filter is currently assigned to the player (only available with OpenAL EFX)
---@tparam audioplayerObj player
---@treturn boolean
function ncine.audio_player.has_direct_filter(player) end

---Returns the OpenAL id of the direct filter (only available with OpenAL EFX)
---@tparam audioplayerObj player
---@treturn integer
function ncine.audio_player.get_direct_filter_id(player) end

---Sets or removes an affect slot, with an optional auxiliary filter, to the player (only available with OpenAL EFX)
---@tparam audioplayerObj player
---@tparam ncine.audio_effect_slot.audioeffectslotObj|nil audio_effect_slot
---@tparam ncine.audio_filter.audiofilterObj|nil audio_filter
function ncine.audio_player.set_effect_slot(player, audio_effect_slot, audio_filter) end

---Sets or removes the filter parameters from a filter object to the direct signal (only available with OpenAL EFX)
---@tparam audioplayerObj player
---@tparam ncine.audio_filter.audiofilterObj|nil audio_filter
function ncine.audio_player.set_direct_filter(player, audio_filter) end
