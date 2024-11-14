---@meta

---The light user data of an audio buffer player object
---@class audiobufferplayerObj: audioplayerObj

---The table containing audio buffer player related functions
---@class ncine.audiobuffer_player: ncine.audio_player
ncine.audiobuffer_player = {}

---Constructs an audio buffer player object from an audio buffer
---
---Don't forget to call [delete](lua://ncine.audiobuffer_player.delete) when you are done with it!
---@param buffer audiobufferObj
---@return audiobufferplayerObj # A new audio buffer player object
---@nodiscard
function ncine.audiobuffer_player.new(buffer) end

---Destroys an audio buffer player object and releases its memory
---@param player audiobufferplayerObj # The audio buffer player object to be destroyed
function ncine.audiobuffer_player.delete(player) end

---Gets the audio buffer used for playing
---@param player audiobufferplayerObj
---@return audiobufferObj
function ncine.audiobuffer_player.get_audiobuffer(player) end

---Sets the audio buffer used for playing
---@param player audiobufferplayerObj
---@param buffer audiobufferObj
function ncine.audiobuffer_player.set_audiobuffer(player, buffer) end
