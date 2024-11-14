---@meta

---The light user data of an audio stream player object
---@class audiostreamplayerObj: audioplayerObj

---The table containing audio stream player related functions
---@class ncine.audiostream_player: ncine.audio_player
ncine.audiostream_player = {}

---Constructs an audio stream player object from an audio file
---
---Don't forget to call [delete](lua://ncine.audiostream_player.delete) when you are done with it!
---@param filename string # The path to an audio file
---@return audiostreamplayerObj # A new audio stream player object
---@nodiscard
function ncine.audiostream_player.new(filename) end

---Destroys an audio stream player object and releases its memory
---@param player audiostreamplayerObj # The audio stream player object to be destroyed
function ncine.audiostream_player.delete(player) end

---Returns the number of samples in the streaming buffer
---@param player audiostreamplayerObj
---@return integer
function ncine.audiostream_player.num_samples_in_streambuffer(player) end

---Returns the size of the streaming buffer in bytes
---@param player audiostreamplayerObj
---@return integer
function ncine.audiostream_player.streambuffer_size(player) end

---Returns the sample offset relative to the whole stream
---@param player audiostreamplayerObj
---@return integer
function ncine.audiostream_player.sample_offset_in_stream(player) end
