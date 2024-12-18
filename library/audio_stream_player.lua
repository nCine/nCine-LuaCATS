---@meta

---The light user data of an audio stream player object
---@class audiostreamplayerObj: audioplayerObj

---The table containing audio stream player related functions
---@class ncine.audio_stream_player: ncine.audio_player
ncine.audio_stream_player = {}

---Constructs an audio stream player object from an audio file.
---
---Don't forget to call [delete](lua://ncine.audio_stream_player.delete) when you are done with it!
---@param filename string # The path to an audio file
---@return audiostreamplayerObj # A new audio stream player object
---@nodiscard
function ncine.audio_stream_player.new(filename) end

---Destroys an audio stream player object and releases its memory
---@param player audiostreamplayerObj # The audio stream player object to be destroyed
function ncine.audio_stream_player.delete(player) end

---Returns the number of samples in the streaming buffer
---@param player audiostreamplayerObj
---@return integer
function ncine.audio_stream_player.num_samples_in_stream_buffer(player) end

---Returns the size of the streaming buffer in bytes
---@param player audiostreamplayerObj
---@return integer
function ncine.audio_stream_player.stream_buffer_size(player) end

---Returns the sample offset relative to the whole stream
---@param player audiostreamplayerObj
---@return integer
function ncine.audio_stream_player.sample_offset_in_stream(player) end
