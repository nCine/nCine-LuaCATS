---@meta

---The light user data of an audio buffer player object
---@class audiobufferplayerObj: audioplayerObj

---The table containing audio buffer player related functions
---@class ncine.audio_buffer_player: ncine.audio_player
ncine.audio_buffer_player = {}

---Constructs an audio buffer player object from an audio buffer.
---
---Don't forget to call [delete](lua://ncine.audio_buffer_player.delete) when you are done with it!
---@param buffer audiobufferObj
---@return audiobufferplayerObj # A new audio buffer player object
---@nodiscard
function ncine.audio_buffer_player.new(buffer) end

---Destroys an audio buffer player object and releases its memory
---@param player audiobufferplayerObj # The audio buffer player object to be destroyed
function ncine.audio_buffer_player.delete(player) end

---Gets the audio buffer used for playing
---@param player audiobufferplayerObj
---@return audiobufferObj
function ncine.audio_buffer_player.get_audio_buffer(player) end

---Sets the audio buffer used for playing
---@param player audiobufferplayerObj
---@param buffer audiobufferObj
function ncine.audio_buffer_player.set_audio_buffer(player, buffer) end
