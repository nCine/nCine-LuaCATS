---@meta

---The light user data of an audio filter object
---@class audiofilterObj: lightuserdata

---Audio filter types
---@enum ncine.audio_filter_type
ncine.audio_filter_type = {
	NULL_FILTER = 0,
	LOWPASS = 1,
	HIGHPASS = 2,
	BANDPASS = 3,
}

---A table with the audio filter properties
---@class audio_filter_properties
---@field type ncine.audio_filter_type
---@field gain number
---@field gain_lf number
---@field gain_hf number
audio_filter_properties = {}

---The table containing audio filter related functions
---@class ncine.audio_filter
ncine.audio_filter = {}

---Constructs an audio filter object.
---
---Don't forget to call [delete](lua://ncine.audio_filter.delete) when you are done with it!
---@return audiofilterObj # A new audio filter object
---@nodiscard
function ncine.audio_filter.new() end

---Destroys an audio filter object and releases its memory
---@param audio_filter audiofilterObj # The audio filter object to be destroyed
function ncine.audio_filter.delete(audio_filter) end

---Returns the filter type
---@param audio_filter audiofilterObj
---@return ncine.audio_filter_type
function ncine.audio_filter.get_type(audio_filter) end

---Returns the OpenAL filter id
---@param audio_filter audiofilterObj
---@return integer
function ncine.audio_filter.get_filter_id(audio_filter) end

---Sets the filter type and all of its properties
---@param audio_filter audiofilterObj
---@param properties audio_filter_properties
function ncine.audio_filter.apply_properties(audio_filter, properties) end

---Returns a table with the default filter type and properties.
---
---The table is only returned as a reference.
---@return audio_filter_properties
function ncine.audio_filter.get_default_properties() end
