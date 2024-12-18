---The table containing audio buffer related functions
---@module ncine.audio_buffer

---The light user data of an audio buffer object
---@table audiobufferObj

---Constructs an audio buffer object from an audio file.
---
---Don't forget to call @{delete} when you are done with it!
---@tparam string filename The path to an audio file
---@treturn audiobufferObj A new audio buffer object
function ncine.audio_buffer.new(filename) end

---Destroys an audio buffer object and releases its memory
---@tparam audiobufferObj audio_buffer The audio buffer object to be destroyed
function ncine.audio_buffer.delete(audio_buffer) end

---Returns the OpenAL buffer id
---@tparam audiobufferObj audio_buffer
---@treturn integer
function ncine.audio_buffer.buffer_id(audio_buffer) end

---Returns the number of bytes per sample
---@tparam audiobufferObj audio_buffer
---@treturn integer
function ncine.audio_buffer.bytes_per_sample(audio_buffer) end

---Returns the number of audio channels
---@tparam audiobufferObj audio_buffer
---@treturn integer
function ncine.audio_buffer.num_channels(audio_buffer) end

---Returns the samples frequency
---@tparam audiobufferObj audio_buffer
---@treturn integer
function ncine.audio_buffer.frequency(audio_buffer) end

---Returns number of samples
---@tparam audiobufferObj audio_buffer
---@treturn integer
function ncine.audio_buffer.num_samples(audio_buffer) end

---Returns the duration in seconds
---@tparam audiobufferObj audio_buffer
---@treturn number
function ncine.audio_buffer.duration(audio_buffer) end

---Returns the size of the buffer in bytes
---@tparam audiobufferObj audio_buffer
---@treturn integer
function ncine.audio_buffer.buffer_size(audio_buffer) end
