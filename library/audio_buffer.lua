---@meta

---The light user data of an audio buffer object
---@class audiobufferObj: lightuserdata

---The table containing audio buffer related functions
---@class ncine.audio_buffer
ncine.audio_buffer = {}

---Constructs an audio buffer object from an audio file.
---
---Don't forget to call [delete](lua://ncine.audio_buffer.delete) when you are done with it!
---@param filename string # The path to an audio file
---@return audiobufferObj # A new audio buffer object
---@nodiscard
function ncine.audio_buffer.new(filename) end

---Destroys an audio buffer object and releases its memory
---@param audio_buffer audiobufferObj # The audio buffer object to be destroyed
function ncine.audio_buffer.delete(audio_buffer) end

---Returns the OpenAL buffer id
---@param audio_buffer audiobufferObj
---@return integer
function ncine.audio_buffer.buffer_id(audio_buffer) end

---Returns the number of bytes per sample
---@param audio_buffer audiobufferObj
---@return integer
function ncine.audio_buffer.bytes_per_sample(audio_buffer) end

---Returns the number of audio channels
---@param audio_buffer audiobufferObj
---@return integer
function ncine.audio_buffer.num_channels(audio_buffer) end

---Returns the samples frequency
---@param audio_buffer audiobufferObj
---@return integer
function ncine.audio_buffer.frequency(audio_buffer) end

---Returns number of samples
---@param audio_buffer audiobufferObj
---@return integer
function ncine.audio_buffer.num_samples(audio_buffer) end

---Returns the duration in seconds
---@param audio_buffer audiobufferObj
---@return number
function ncine.audio_buffer.duration(audio_buffer) end

---Returns the size of the buffer in bytes
---@param audio_buffer audiobufferObj
---@return integer
function ncine.audio_buffer.buffer_size(audio_buffer) end
