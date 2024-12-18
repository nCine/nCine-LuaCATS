---The table containing audio effect related functions
---@module ncine.audio_effect

---The light user data of an audio effect object
---@table audioeffectObj

---Audio effect types (enumeration)
ncine.audio_effect_type = {
	NULL_EFFECT = 0,
	REVERB = 1,
	EAXREVERB = 2,
	CHORUS = 3,
	DISTORTION = 4,
	ECHO = 5,
	FLANGER = 6,
	FREQUENCY_SHIFTER = 7,
	VOCAL_MORPHER = 8,
	PITCH_SHIFTER = 9,
	RING_MODULATOR = 10,
	AUTOWAH = 11,
	COMPRESSOR = 12,
	EQUALIZER = 13,
}

---Constructs an audio effect object.
---
---Don't forget to call @{delete} when you are done with it!
---@treturn audioeffectObj A new audio effect object
function ncine.audio_effect.new() end

---Destroys an audio effect object and releases its memory
---@tparam audioeffectObj audio_effect The audio effect object to be destroyed
function ncine.audio_effect.delete(audio_effect) end

---Returns the effect type
---@tparam audioeffectObj audio_effect
---@treturn ncine.audio_effect_type
function ncine.audio_effect.get_type(audio_effect) end

---Returns the OpenAL effect id
---@tparam audioeffectObj audio_effect
---@treturn integer
function ncine.audio_effect.get_effect_id(audio_effect) end

---Sets an effect type with all of its properties
---@tparam audioeffectObj audio_effect
---@tparam audioeffectpropertiesObj properties
function ncine.audio_effect.apply_properties(audio_effect, properties) end
