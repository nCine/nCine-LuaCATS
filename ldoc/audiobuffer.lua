---The table containing audio buffer related functions
---@module ncine.audiobuffer

---The light user data of an audio buffer object
---@table audiobufferObj

---Constructs an audio buffer object from an audio file.
---
---Don't forget to call @{delete} when you are done with it!
---@tparam string filename The path to an audio file
---@treturn audiobufferObj A new audio buffer object
function ncine.audiobuffer.new(filename) end

---Destroys an audio buffer object and releases its memory
---@tparam audiobufferObj audiobuffer The audio buffer object to be destroyed
function ncine.audiobuffer.delete(audiobuffer) end

---Returns the OpenAL buffer id
---@tparam audiobufferObj audiobuffer
---@treturn integer
function ncine.audiobuffer.buffer_id(audiobuffer) end

---Returns the number of bytes per sample
---@tparam audiobufferObj audiobuffer
---@treturn integer
function ncine.audiobuffer.bytes_per_sample(audiobuffer) end

---Returns the number of audio channels
---@tparam audiobufferObj audiobuffer
---@treturn integer
function ncine.audiobuffer.num_channels(audiobuffer) end

---Returns the samples frequency
---@tparam audiobufferObj audiobuffer
---@treturn integer
function ncine.audiobuffer.frequency(audiobuffer) end

---Returns number of samples
---@tparam audiobufferObj audiobuffer
---@treturn integer
function ncine.audiobuffer.num_samples(audiobuffer) end

---Returns the duration in seconds
---@tparam audiobufferObj audiobuffer
---@treturn number
function ncine.audiobuffer.duration(audiobuffer) end

---Returns the size of the buffer in bytes
---@tparam audiobufferObj audiobuffer
---@treturn integer
function ncine.audiobuffer.buffer_size(audiobuffer) end
