---@meta

---The light user data of an audio buffer object
---@class audiobufferObj: lightuserdata

---The table containing audio buffer related functions
---@class ncine.audiobuffer
ncine.audiobuffer = {}

---Constructs an audio buffer object from an audio file
---
---Don't forget to call [delete](lua://ncine.audiobuffer.delete) when you are done with it!
---@param filename string # The path to an audio file
---@return audiobufferObj # A new audio buffer object
---@nodiscard
function ncine.audiobuffer.new(filename) end

---Destroys an audio buffer object and releases its memory
---@param audiobuffer audiobufferObj # The audio buffer object to be destroyed
function ncine.audiobuffer.delete(audiobuffer) end

---Returns the OpenAL buffer id
---@param audiobuffer audiobufferObj
---@return integer
function ncine.audiobuffer.buffer_id(audiobuffer) end

---Returns the number of bytes per sample
---@param audiobuffer audiobufferObj
---@return integer
function ncine.audiobuffer.bytes_per_sample(audiobuffer) end

---Returns the number of audio channels
---@param audiobuffer audiobufferObj
---@return integer
function ncine.audiobuffer.num_channels(audiobuffer) end

---Returns the samples frequency
---@param audiobuffer audiobufferObj
---@return integer
function ncine.audiobuffer.frequency(audiobuffer) end

---Returns number of samples
---@param audiobuffer audiobufferObj
---@return integer
function ncine.audiobuffer.num_samples(audiobuffer) end

---Returns the duration in seconds
---@param audiobuffer audiobufferObj
---@return number
function ncine.audiobuffer.duration(audiobuffer) end

---Returns the size of the buffer in bytes
---@param audiobuffer audiobufferObj
---@return integer
function ncine.audiobuffer.buffer_size(audiobuffer) end
