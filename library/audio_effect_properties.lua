---@meta

---The light user data of an audio effect properties object
---@class audioeffectpropertiesObj: lightuserdata

---The table containing audio effect properties related functions
---@class ncine.audio_effect_properties
ncine.audio_effect_properties = {}

---Constructs an audio effect properties object
---
---Don't forget to call [delete](lua://ncine.audio_effect_properties.delete) when you are done with it!
---@return audioeffectpropertiesObj # A new audio effect properties object
---@nodiscard
function ncine.audio_effect_properties.new() end

---Destroys an audio effect properties object and releases its memory
---@param audio_effect_properties audioeffectpropertiesObj # The audio effect properties object to be destroyed
function ncine.audio_effect_properties.delete(audio_effect_properties) end

---Returns the effect properties type
---@param audio_effect_properties audioeffectpropertiesObj
---@return ncine.audio_effect_type
function ncine.audio_effect_properties.get_type(audio_effect_properties) end

---Sets the effect properties type
---@param audio_effect_properties audioeffectpropertiesObj
---@param audio_effect_type ncine.audio_effect_type
function ncine.audio_effect_properties.set_type(audio_effect_properties, audio_effect_type) end

-- ---------------------------------
-- Reverb
-- ---------------------------------

---Properties of the reverb effect
---@class audio_reverb_properties
---@field density number
---@field diffusion number
---@field gain number
---@field gain_hf number
---@field decay_time number
---@field decay_hf_ratio number
---@field reflections_gain number
---@field reflections_delay number
---@field late_reverb_gain number
---@field late_reverb_delay number
---@field air_absorption_gain_hf number
---@field room_rolloff_factor number
---@field decay_hf_limit integer
audio_reverb_properties = {}

---Returns the minimum values for the reverb effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_reverb_properties
function ncine.audio_effect_properties.get_min_reverb_properties(audio_effect_properties) end

---Returns the maximum values for the reverb effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_reverb_properties
function ncine.audio_effect_properties.get_max_reverb_properties(audio_effect_properties) end

---Returns the current values for the reverb effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_reverb_properties
function ncine.audio_effect_properties.get_reverb_properties(audio_effect_properties) end

---Sets all values for the reverb effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@param properties audio_reverb_properties
function ncine.audio_effect_properties.set_reverb_properties(audio_effect_properties, properties) end

---Resets all property values for the reverb effect to thir default
---@param audio_effect_properties audioeffectpropertiesObj
function ncine.audio_effect_properties.reset_reverb_properties(audio_effect_properties) end

-- ---------------------------------
-- EAX Reverb
-- ---------------------------------

---Properties of the EAX reverb effect
---@class audio_eax_reverb_properties
---@field density number
---@field diffusion number
---@field gain number
---@field gain_hf number
---@field gain_lf number
---@field decay_time number
---@field decay_hf_ratio number
---@field decay_lf_ratio number
---@field reflections_gain number
---@field reflections_delay number
---@field reflections_pan ncine.vec3
---@field late_reverb_gain number
---@field late_reverb_delay number
---@field late_reverb_pan ncine.vec3
---@field echo_time number
---@field echo_depth number
---@field modulation_time number
---@field modulation_depth number
---@field air_absorption_gain_hf number
---@field hf_reference number
---@field lf_reference number
---@field room_rolloff_factor number
---@field decay_hf_limit integer
audio_eax_reverb_properties = {}

---Returns the minimum values for the EAX reverb effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_eax_reverb_properties
function ncine.audio_effect_properties.get_min_eax_reverb_properties(audio_effect_properties) end

---Returns the maximum values for the EAX reverb effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_eax_reverb_properties
function ncine.audio_effect_properties.get_max_eax_reverb_properties(audio_effect_properties) end

---Returns the current values for the EAX reverb effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_eax_reverb_properties
function ncine.audio_effect_properties.get_eax_reverb_properties(audio_effect_properties) end

---Sets all values for the EAX reverb effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@param properties audio_eax_reverb_properties
function ncine.audio_effect_properties.set_eax_reverb_properties(audio_effect_properties, properties) end

---Resets all property values for the EAX reverb effect to thir default
---@param audio_effect_properties audioeffectpropertiesObj
function ncine.audio_effect_properties.reset_eax_reverb_properties(audio_effect_properties) end

---Loads and sets the effect properties from an EFX reverb preset
---@param audio_effect_properties audioeffectpropertiesObj
---@param preset ncine.efx_reverb_presets
function ncine.audio_effect_properties.load_efx_reverb_preset(audio_effect_properties, preset) end

-- ---------------------------------
-- Chorus
-- ---------------------------------

---Properties of the chorus effect
---@class audio_chorus_properties
---@field waveform integer # 0 for sinusoid, 1 for triangle
---@field phase integer
---@field rate number
---@field depth number
---@field feedback number
---@field delay number
audio_chorus_properties = {}

---Returns the minimum values for the chorus effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_chorus_properties
function ncine.audio_effect_properties.get_min_chorus_properties(audio_effect_properties) end

---Returns the maximum values for the chorus effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_chorus_properties
function ncine.audio_effect_properties.get_max_chorus_properties(audio_effect_properties) end

---Returns the current values for the chorus effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_chorus_properties
function ncine.audio_effect_properties.get_chorus_properties(audio_effect_properties) end

---Sets all values for the chorus effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@param properties audio_chorus_properties
function ncine.audio_effect_properties.set_chorus_properties(audio_effect_properties, properties) end

---Resets all property values for the chorus effect to thir default
---@param audio_effect_properties audioeffectpropertiesObj
function ncine.audio_effect_properties.reset_chorus_properties(audio_effect_properties) end

-- ---------------------------------
-- Distortion
-- ---------------------------------

---Properties of the distortion effect
---@class audio_distortion_properties
---@field edge number
---@field gain number
---@field lowpass_cutoff number
---@field eq_center number
---@field eq_bandwidth number
audio_distortion_properties = {}

---Returns the minimum values for the distortion effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_distortion_properties
function ncine.audio_effect_properties.get_min_distortion_properties(audio_effect_properties) end

---Returns the maximum values for the distortion effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_distortion_properties
function ncine.audio_effect_properties.get_max_distortion_properties(audio_effect_properties) end

---Returns the current values for the distortion effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_distortion_properties
function ncine.audio_effect_properties.get_distortion_properties(audio_effect_properties) end

---Sets all values for the distortion effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@param properties audio_distortion_properties
function ncine.audio_effect_properties.set_distortion_properties(audio_effect_properties, properties) end

---Resets all property values for the distortion effect to thir default
---@param audio_effect_properties audioeffectpropertiesObj
function ncine.audio_effect_properties.reset_distortion_properties(audio_effect_properties) end

-- ---------------------------------
-- Echo
-- ---------------------------------

---Properties of the echo effect
---@class audio_echo_properties
---@field delay number
---@field lr_delay number
---@field damping number
---@field feedback number
---@field spread number
audio_echo_properties = {}

---Returns the minimum values for the echo effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_echo_properties
function ncine.audio_effect_properties.get_min_echo_properties(audio_effect_properties) end

---Returns the maximum values for the echo effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_echo_properties
function ncine.audio_effect_properties.get_max_echo_properties(audio_effect_properties) end

---Returns the current values for the echo effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_echo_properties
function ncine.audio_effect_properties.get_echo_properties(audio_effect_properties) end

---Sets all values for the echo effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@param properties audio_echo_properties
function ncine.audio_effect_properties.set_echo_properties(audio_effect_properties, properties) end

---Resets all property values for the echo effect to thir default
---@param audio_effect_properties audioeffectpropertiesObj
function ncine.audio_effect_properties.reset_echo_properties(audio_effect_properties) end

-- ---------------------------------
-- Flanger
-- ---------------------------------

---Properties of the flanger effect
---@class audio_flanger_properties
---@field waveform integer # 0 for sinusoid, 1 for triangle
---@field phase integer
---@field rate number
---@field depth number
---@field feedback number
---@field delay number
audio_flanger_properties = {}

---Returns the minimum values for the flanger effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_flanger_properties
function ncine.audio_effect_properties.get_min_flanger_properties(audio_effect_properties) end

---Returns the maximum values for the flanger effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_flanger_properties
function ncine.audio_effect_properties.get_max_flanger_properties(audio_effect_properties) end

---Returns the current values for the flanger effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_flanger_properties
function ncine.audio_effect_properties.get_flanger_properties(audio_effect_properties) end

---Sets all values for the flanger effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@param properties audio_flanger_properties
function ncine.audio_effect_properties.set_flanger_properties(audio_effect_properties, properties) end

---Resets all property values for the flanger effect to thir default
---@param audio_effect_properties audioeffectpropertiesObj
function ncine.audio_effect_properties.reset_flanger_properties(audio_effect_properties) end

-- ---------------------------------
-- Frequency Shifter
-- ---------------------------------

---Properties of the frequency shifter effect
---@class audio_frequency_shifter_properties
---@field frequency number
---@field left_direction integer # From 0 to 2
---@field right_direction integer # From 0 to 2
audio_frequency_shifter_properties = {}

---Returns the minimum values for the frequency shifter effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_frequency_shifter_properties
function ncine.audio_effect_properties.get_min_frequency_shifter_properties(audio_effect_properties) end

---Returns the maximum values for the frequency shifter effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_frequency_shifter_properties
function ncine.audio_effect_properties.get_max_frequency_shifter_properties(audio_effect_properties) end

---Returns the current values for the frequency shifter effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_frequency_shifter_properties
function ncine.audio_effect_properties.get_frequency_shifter_properties(audio_effect_properties) end

---Sets all values for the frequency shifter effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@param properties audio_frequency_shifter_properties
function ncine.audio_effect_properties.set_frequency_shifter_properties(audio_effect_properties, properties) end

---Resets all property values for the frequency shifter effect to thir default
---@param audio_effect_properties audioeffectpropertiesObj
function ncine.audio_effect_properties.reset_frequency_shifter_properties(audio_effect_properties) end

-- ---------------------------------
-- Vocal Morpher
-- ---------------------------------

---Properties of the vocal morpher effect
---@class audio_vocal_morpher_properties
---@field phoneme_a integer # From 0 to 29 (A to Z)
---@field phoneme_a_coarse_tuning integer # From -24 to 24
---@field phoneme_b integer # From 0 to 29 (A to Z)
---@field phoneme_b_coarse_tuning integer # From -24 to 24
---@field waveform integer # 0 for sinusoid, 1 for triangle, 2 for sawtooth
---@field rate number
audio_vocal_morpher_properties = {}

---Returns the minimum values for the vocal morpher effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_vocal_morpher_properties
function ncine.audio_effect_properties.get_min_vocal_morpher_properties(audio_effect_properties) end

---Returns the maximum values for the vocal morpher effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_vocal_morpher_properties
function ncine.audio_effect_properties.get_max_vocal_morpher_properties(audio_effect_properties) end

---Returns the current values for the vocal morpher effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_vocal_morpher_properties
function ncine.audio_effect_properties.get_vocal_morpher_properties(audio_effect_properties) end

---Sets all values for the vocal morpher effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@param properties audio_vocal_morpher_properties
function ncine.audio_effect_properties.set_vocal_morpher_properties(audio_effect_properties, properties) end

---Resets all property values for the vocal morpher effect to thir default
---@param audio_effect_properties audioeffectpropertiesObj
function ncine.audio_effect_properties.reset_vocal_morpher_properties(audio_effect_properties) end

-- ---------------------------------
-- Pitch Shifter
-- ---------------------------------

---Properties of the pitch shifter effect
---@class audio_pitch_shifter_properties
---@field coarse_tune integer # From -12 to 12
---@field fineTune integer # From -50 to 50
audio_pitch_shifter_properties = {}

---Returns the minimum values for the pitch shifter effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_pitch_shifter_properties
function ncine.audio_effect_properties.get_min_pitch_shifter_properties(audio_effect_properties) end

---Returns the maximum values for the pitch shifter effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_pitch_shifter_properties
function ncine.audio_effect_properties.get_max_pitch_shifter_properties(audio_effect_properties) end

---Returns the current values for the pitch shifter effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_pitch_shifter_properties
function ncine.audio_effect_properties.get_pitch_shifter_properties(audio_effect_properties) end

---Sets all values for the pitch shifter effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@param properties audio_pitch_shifter_properties
function ncine.audio_effect_properties.set_pitch_shifter_properties(audio_effect_properties, properties) end

---Resets all property values for the pitch shifter effect to thir default
---@param audio_effect_properties audioeffectpropertiesObj
function ncine.audio_effect_properties.reset_pitch_shifter_properties(audio_effect_properties) end

-- ---------------------------------
-- Ring Modulator
-- ---------------------------------

---Properties of the ring modulator effect
---@class audio_ring_modulator_properties
---@field frequency number
---@field highpass_cutoff number
---@field waveform integer # 0 for sinusoid, 1 for sawtooth, 2 for square
audio_ring_modulator_properties = {}

---Returns the minimum values for the ring modulator effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_ring_modulator_properties
function ncine.audio_effect_properties.get_min_ring_modulator_properties(audio_effect_properties) end

---Returns the maximum values for the ring modulator effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_ring_modulator_properties
function ncine.audio_effect_properties.get_max_ring_modulator_properties(audio_effect_properties) end

---Returns the current values for the ring modulator effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_ring_modulator_properties
function ncine.audio_effect_properties.get_ring_modulator_properties(audio_effect_properties) end

---Sets all values for the ring modulator effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@param properties audio_ring_modulator_properties
function ncine.audio_effect_properties.set_ring_modulator_properties(audio_effect_properties, properties) end

---Resets all property values for the ring modulator effect to thir default
---@param audio_effect_properties audioeffectpropertiesObj
function ncine.audio_effect_properties.reset_ring_modulator_properties(audio_effect_properties) end

-- ---------------------------------
-- Auto Wah
-- ---------------------------------

---Properties of the auto wah effect
---@class audio_auto_wah_properties
---@field attack_time number
---@field release_time number
---@field resonance number
---@field peak_gain number
audio_auto_wah_properties = {}

---Returns the minimum values for the auto wah effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_auto_wah_properties
function ncine.audio_effect_properties.get_min_auto_wah_properties(audio_effect_properties) end

---Returns the maximum values for the auto wah effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_auto_wah_properties
function ncine.audio_effect_properties.get_max_auto_wah_properties(audio_effect_properties) end

---Returns the current values for the auto wah effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_auto_wah_properties
function ncine.audio_effect_properties.get_auto_wah_properties(audio_effect_properties) end

---Sets all values for the auto wah effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@param properties audio_auto_wah_properties
function ncine.audio_effect_properties.set_auto_wah_properties(audio_effect_properties, properties) end

---Resets all property values for the auto wah effect to thir default
---@param audio_effect_properties audioeffectpropertiesObj
function ncine.audio_effect_properties.reset_auto_wah_properties(audio_effect_properties) end

-- ---------------------------------
-- Compressor
-- ---------------------------------

---Properties of the compressor effect
---@class audio_compressor_properties
---@field on_off integer # 0 or 1
audio_compressor_properties = {}

---Returns the minimum values for the compressor effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_compressor_properties
function ncine.audio_effect_properties.get_min_compressor_properties(audio_effect_properties) end

---Returns the maximum values for the compressor effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_compressor_properties
function ncine.audio_effect_properties.get_max_compressor_properties(audio_effect_properties) end

---Returns the current values for the compressor effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_compressor_properties
function ncine.audio_effect_properties.get_compressor_properties(audio_effect_properties) end

---Sets all values for the compressor effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@param properties audio_compressor_properties
function ncine.audio_effect_properties.set_compressor_properties(audio_effect_properties, properties) end

---Resets all property values for the compressor effect to thir default
---@param audio_effect_properties audioeffectpropertiesObj
function ncine.audio_effect_properties.reset_compressor_properties(audio_effect_properties) end

-- ---------------------------------
-- Equalizer
-- ---------------------------------

---Properties of the equalizer effect
---@class audio_equalizer_properties
---@field low_gain number
---@field low_cutoff number
---@field mid1_gain number
---@field mid1_center number
---@field mid1_width number
---@field mid2_gain number
---@field mid2_center number
---@field mid2_width number
---@field high_gain number
---@field high_cutoff number
audio_equalizer_properties = {}

---Returns the minimum values for the equalizer effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_equalizer_properties
function ncine.audio_effect_properties.get_min_equalizer_properties(audio_effect_properties) end

---Returns the maximum values for the equalizer effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_equalizer_properties
function ncine.audio_effect_properties.get_max_equalizer_properties(audio_effect_properties) end

---Returns the current values for the equalizer effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@return audio_equalizer_properties
function ncine.audio_effect_properties.get_equalizer_properties(audio_effect_properties) end

---Sets all values for the equalizer effect properties
---@param audio_effect_properties audioeffectpropertiesObj
---@param properties audio_equalizer_properties
function ncine.audio_effect_properties.set_equalizer_properties(audio_effect_properties, properties) end

---Resets all property values for the equalizer effect to thir default
---@param audio_effect_properties audioeffectpropertiesObj
function ncine.audio_effect_properties.reset_equalizer_properties(audio_effect_properties) end
