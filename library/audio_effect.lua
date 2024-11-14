---@meta

---The light user data of an audio effect object
---@class audioeffectObj: lightuserdata

---Audio effect types
---@enum ncine.audio_effect_type
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

---The table containing audio effect related functions
---@class ncine.audio_effect
ncine.audio_effect = {}

---Constructs an audio effect object
---
---Don't forget to call [delete](lua://ncine.audio_effect.delete) when you are done with it!
---@return audioeffectObj # A new audio effect object
---@nodiscard
function ncine.audio_effect.new() end

---Destroys an audio effect object and releases its memory
---@param audio_effect audioeffectObj # The audio effect object to be destroyed
function ncine.audio_effect.delete(audio_effect) end

---Returns the effect type
---@param audio_effect audioeffectObj
---@return ncine.audio_effect_type
function ncine.audio_effect.get_type(audio_effect) end

---Returns the OpenAL effect id
---@param audio_effect audioeffectObj
---@return integer
function ncine.audio_effect.get_effect_id(audio_effect) end

---Sets an effect type with all of its properties
---@param audio_effect audioeffectObj
---@param properties audioeffectpropertiesObj
function ncine.audio_effect.apply_properties(audio_effect, properties) end
