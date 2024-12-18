---The table containing audio buffer player related functions.
---
---Inherits from @{ncine.audio_player}.
---@module ncine.audio_buffer_player

---The light user data of an audio buffer player object.
---
---Inherits from @{ncine.audio_player.audioplayerObj}.
---@table audiobufferplayerObj

---Constructs an audio buffer player object from an audio buffer.
---
---Don't forget to call @{delete} when you are done with it!
---@tparam ncine.audio_buffer.audiobufferObj buffer
---@treturn audiobufferplayerObj A new audio buffer player object
function ncine.audio_buffer_player.new(buffer) end

---Destroys an audio buffer player object and releases its memory
---@tparam audiobufferplayerObj player The audio buffer player object to be destroyed
function ncine.audio_buffer_player.delete(player) end

---Gets the audio buffer used for playing
---@tparam audiobufferplayerObj player
---@treturn audiobufferObj
function ncine.audio_buffer_player.get_audio_buffer(player) end

---Sets the audio buffer used for playing
---@tparam audiobufferplayerObj player
---@tparam audiobufferObj buffer
function ncine.audio_buffer_player.set_audio_buffer(player, buffer) end
