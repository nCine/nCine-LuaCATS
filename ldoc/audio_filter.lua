---The table containing audio filter related functions
---@module ncine.audio_filter

---The light user data of an audio filter object
---@table audiofilterObj

---Audio filter types (enumeration)
ncine.audio_filter_type = {
	NULL_FILTER = 0,
	LOWPASS = 1,
	HIGHPASS = 2,
	BANDPASS = 3,
}

---A table with the audio filter properties
---@field type (ncine.audio\_filter\_type)
---@number gain
---@number gain_lf
---@number gain_hf
---@table audio_filter_properties

---Constructs an audio filter object.
---
---Don't forget to call @{delete} when you are done with it!
---@treturn audiofilterObj A new audio filter object
function ncine.audio_filter.new() end

---Destroys an audio filter object and releases its memory
---@tparam audiofilterObj audio_filter The audio filter object to be destroyed
function ncine.audio_filter.delete(audio_filter) end

---Returns the filter type
---@tparam audiofilterObj audio_filter
---@treturn ncine.audio_filter_type
function ncine.audio_filter.get_type(audio_filter) end

---Returns the OpenAL filter id
---@tparam audiofilterObj audio_filter
---@treturn integer
function ncine.audio_filter.get_filter_id(audio_filter) end

---Sets the filter type and all of its properties
---@tparam audiofilterObj audio_filter
---@tparam audio_filter_properties properties
function ncine.audio_filter.apply_properties(audio_filter, properties) end

---Returns a table with the default filter type and properties.
---
---The table is only returned as a reference.
---@treturn audio_filter_properties
function ncine.audio_filter.get_default_properties() end
