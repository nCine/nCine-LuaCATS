---The table containing audio stream player related functions.
---
---Inherits from @{ncine.audio_player}.
---@module ncine.audiostream_player

---The light user data of an audio stream player object.
---
---Inherits from @{ncine.audio_player.audioplayerObj}.
---@table audiostreamplayerObj

---Constructs an audio stream player object from an audio file.
---
---Don't forget to call @{delete} when you are done with it!
---@tparam string filename  The path to an audio file
---@treturn audiostreamplayerObj A new audio stream player object
function ncine.audiostream_player.new(filename) end

---Destroys an audio stream player object and releases its memory
---@tparam audiostreamplayerObj player The audio stream player object to be destroyed
function ncine.audiostream_player.delete(player) end

---Returns the number of samples in the streaming buffer
---@tparam audiostreamplayerObj player
---@treturn integer
function ncine.audiostream_player.num_samples_in_streambuffer(player) end

---Returns the size of the streaming buffer in bytes
---@tparam audiostreamplayerObj player
---@treturn integer
function ncine.audiostream_player.streambuffer_size(player) end

---Returns the sample offset relative to the whole stream
---@tparam audiostreamplayerObj player
---@treturn integer
function ncine.audiostream_player.sample_offset_in_stream(player) end
