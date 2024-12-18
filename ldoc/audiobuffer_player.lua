---The table containing audio buffer player related functions.
---
---Inherits from @{ncine.audio_player}.
---@module ncine.audiobuffer_player

---The light user data of an audio buffer player object.
---
---Inherits from @{ncine.audio_player.audioplayerObj}.
---@table audiobufferplayerObj

---Constructs an audio buffer player object from an audio buffer.
---
---Don't forget to call @{delete} when you are done with it!
---@tparam ncine.audiobuffer.audiobufferObj buffer
---@treturn audiobufferplayerObj A new audio buffer player object
function ncine.audiobuffer_player.new(buffer) end

---Destroys an audio buffer player object and releases its memory
---@tparam audiobufferplayerObj player The audio buffer player object to be destroyed
function ncine.audiobuffer_player.delete(player) end

---Gets the audio buffer used for playing
---@tparam audiobufferplayerObj player
---@treturn audiobufferObj
function ncine.audiobuffer_player.get_audiobuffer(player) end

---Sets the audio buffer used for playing
---@tparam audiobufferplayerObj player
---@tparam audiobufferObj buffer
function ncine.audiobuffer_player.set_audiobuffer(player, buffer) end
