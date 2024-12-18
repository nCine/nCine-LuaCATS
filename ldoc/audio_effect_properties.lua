---The table containing audio effect properties related functions
---@module ncine.audio_effect_properties

---The light user data of an audio effect properties object
---@table audioeffectpropertiesObj

---Constructs an audio effect properties object.
---
---Don't forget to call @{delete} when you are done with it!
---@treturn audioeffectpropertiesObj A new audio effect properties object
function ncine.audio_effect_properties.new() end

---Destroys an audio effect properties object and releases its memory
---@tparam audioeffectpropertiesObj audio_effect_properties The audio effect properties object to be destroyed
function ncine.audio_effect_properties.delete(audio_effect_properties) end

---Returns the effect properties type
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn ncine.audio_effect_type
function ncine.audio_effect_properties.get_type(audio_effect_properties) end

---Sets the effect properties type
---@tparam audioeffectpropertiesObj audio_effect_properties
---@tparam ncine.audio_effect_type audio_effect_type
function ncine.audio_effect_properties.set_type(audio_effect_properties, audio_effect_type) end

---@section Reverb

---Properties of the reverb effect
---@number density number
---@number diffusion number
---@number gain number
---@number gain_hf number
---@number decay_time number
---@number decay_hf_ratio number
---@number reflections_gain number
---@number reflections_delay number
---@number late_reverb_gain number
---@number late_reverb_delay number
---@number air_absorption_gain_hf number
---@number room_rolloff_factor number
---@int decay_hf_limit integer
---@table audio_reverb_properties

---Returns the minimum values for the reverb effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_reverb_properties
function ncine.audio_effect_properties.get_min_reverb_properties(audio_effect_properties) end

---Returns the maximum values for the reverb effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_reverb_properties
function ncine.audio_effect_properties.get_max_reverb_properties(audio_effect_properties) end

---Returns the current values for the reverb effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_reverb_properties
function ncine.audio_effect_properties.get_reverb_properties(audio_effect_properties) end

---Sets all values for the reverb effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@tparam audio_reverb_properties properties
function ncine.audio_effect_properties.set_reverb_properties(audio_effect_properties, properties) end

---Resets all property values for the reverb effect to thir default
---@tparam audioeffectpropertiesObj audio_effect_properties
function ncine.audio_effect_properties.reset_reverb_properties(audio_effect_properties) end

--- EAX Reverb
---@section EAX_Reverb

---Properties of the EAX reverb effect
---@number density
---@number diffusion
---@number gain
---@number gain_hf
---@number gain_lf
---@number decay_time
---@number decay_hf_ratio
---@number decay_lf_ratio
---@number reflections_gain
---@number reflections_delay
---@field reflections_pan (ncine.vec3)
---@number late_reverb_gain
---@number late_reverb_delay
---@field late_reverb_pan (ncine.vec3)
---@number echo_time
---@number echo_depth
---@number modulation_time
---@number modulation_depth
---@number air_absorption_gain_hf
---@number hf_reference
---@number lf_reference
---@number room_rolloff_factor
---@int decay_hf_limit
---@table audio_eax_reverb_properties

---Returns the minimum values for the EAX reverb effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_eax_reverb_properties
function ncine.audio_effect_properties.get_min_eax_reverb_properties(audio_effect_properties) end

---Returns the maximum values for the EAX reverb effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_eax_reverb_properties
function ncine.audio_effect_properties.get_max_eax_reverb_properties(audio_effect_properties) end

---Returns the current values for the EAX reverb effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_eax_reverb_properties
function ncine.audio_effect_properties.get_eax_reverb_properties(audio_effect_properties) end

---Sets all values for the EAX reverb effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@tparam audio_eax_reverb_properties properties
function ncine.audio_effect_properties.set_eax_reverb_properties(audio_effect_properties, properties) end

---Resets all property values for the EAX reverb effect to thir default
---@tparam audioeffectpropertiesObj audio_effect_properties
function ncine.audio_effect_properties.reset_eax_reverb_properties(audio_effect_properties) end

---Loads and sets the effect properties from an EFX reverb preset
---@tparam audioeffectpropertiesObj audio_effect_properties
---@tparam ncine.efx_reverb_presets preset
---@see EFX_Presets
function ncine.audio_effect_properties.load_efx_reverb_preset(audio_effect_properties, preset) end

---Chorus
---@section Chorus

---Properties of the chorus effect
---@int waveform ---0 for sinusoid, 1 for triangle
---@int phase
---@number rate
---@number depth
---@number feedback
---@number delay
---@table audio_chorus_properties

---Returns the minimum values for the chorus effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_chorus_properties
function ncine.audio_effect_properties.get_min_chorus_properties(audio_effect_properties) end

---Returns the maximum values for the chorus effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_chorus_properties
function ncine.audio_effect_properties.get_max_chorus_properties(audio_effect_properties) end

---Returns the current values for the chorus effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_chorus_properties
function ncine.audio_effect_properties.get_chorus_properties(audio_effect_properties) end

---Sets all values for the chorus effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@tparam audio_chorus_properties properties
function ncine.audio_effect_properties.set_chorus_properties(audio_effect_properties, properties) end

---Resets all property values for the chorus effect to thir default
---@tparam audioeffectpropertiesObj audio_effect_properties
function ncine.audio_effect_properties.reset_chorus_properties(audio_effect_properties) end

---Distortion
---@section Distortion

---Properties of the distortion effect
---@number edge
---@number gain
---@number lowpass_cutoff
---@number eq_center
---@number eq_bandwidth
---@table audio_distortion_properties

---Returns the minimum values for the distortion effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_distortion_properties
function ncine.audio_effect_properties.get_min_distortion_properties(audio_effect_properties) end

---Returns the maximum values for the distortion effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_distortion_properties
function ncine.audio_effect_properties.get_max_distortion_properties(audio_effect_properties) end

---Returns the current values for the distortion effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_distortion_properties
function ncine.audio_effect_properties.get_distortion_properties(audio_effect_properties) end

---Sets all values for the distortion effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@tparam audio_distortion_properties properties
function ncine.audio_effect_properties.set_distortion_properties(audio_effect_properties, properties) end

---Resets all property values for the distortion effect to thir default
---@tparam audioeffectpropertiesObj audio_effect_properties
function ncine.audio_effect_properties.reset_distortion_properties(audio_effect_properties) end

---Echo
---@section Echo

---Properties of the echo effect
---@number delay
---@number lr_delay
---@number damping
---@number feedback
---@number spread
---@table audio_echo_properties

---Returns the minimum values for the echo effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_echo_properties
function ncine.audio_effect_properties.get_min_echo_properties(audio_effect_properties) end

---Returns the maximum values for the echo effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_echo_properties
function ncine.audio_effect_properties.get_max_echo_properties(audio_effect_properties) end

---Returns the current values for the echo effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_echo_properties
function ncine.audio_effect_properties.get_echo_properties(audio_effect_properties) end

---Sets all values for the echo effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@tparam audio_echo_properties properties
function ncine.audio_effect_properties.set_echo_properties(audio_effect_properties, properties) end

---Resets all property values for the echo effect to thir default
---@tparam audioeffectpropertiesObj audio_effect_properties
function ncine.audio_effect_properties.reset_echo_properties(audio_effect_properties) end

---Flanger
---@section Flanger

---Properties of the flanger effect
---@int waveform ---0 for sinusoid, 1 for triangle
---@int phase
---@number rate
---@number depth
---@number feedback
---@number delay
---@table audio_flanger_properties

---Returns the minimum values for the flanger effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_flanger_properties
function ncine.audio_effect_properties.get_min_flanger_properties(audio_effect_properties) end

---Returns the maximum values for the flanger effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_flanger_properties
function ncine.audio_effect_properties.get_max_flanger_properties(audio_effect_properties) end

---Returns the current values for the flanger effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_flanger_properties
function ncine.audio_effect_properties.get_flanger_properties(audio_effect_properties) end

---Sets all values for the flanger effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@tparam audio_flanger_properties properties
function ncine.audio_effect_properties.set_flanger_properties(audio_effect_properties, properties) end

---Resets all property values for the flanger effect to thir default
---@tparam audioeffectpropertiesObj audio_effect_properties
function ncine.audio_effect_properties.reset_flanger_properties(audio_effect_properties) end

---Frequency Shifter
---@section Frequency_Shifter

---Properties of the frequency shifter effect
---@number frequency
---@int left_direction ---From 0 to 2
---@int right_direction ---From 0 to 2
---@table audio_frequency_shifter_properties

---Returns the minimum values for the frequency shifter effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_frequency_shifter_properties
function ncine.audio_effect_properties.get_min_frequency_shifter_properties(audio_effect_properties) end

---Returns the maximum values for the frequency shifter effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_frequency_shifter_properties
function ncine.audio_effect_properties.get_max_frequency_shifter_properties(audio_effect_properties) end

---Returns the current values for the frequency shifter effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_frequency_shifter_properties
function ncine.audio_effect_properties.get_frequency_shifter_properties(audio_effect_properties) end

---Sets all values for the frequency shifter effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@tparam audio_frequency_shifter_properties properties
function ncine.audio_effect_properties.set_frequency_shifter_properties(audio_effect_properties, properties) end

---Resets all property values for the frequency shifter effect to thir default
---@tparam audioeffectpropertiesObj audio_effect_properties
function ncine.audio_effect_properties.reset_frequency_shifter_properties(audio_effect_properties) end

---Vocal Morpher
---@section Vocal_Morpher

---Properties of the vocal morpher effect
---@int phoneme_a ---From 0 to 29 (A to Z)
---@int phoneme_a_coarse_tuning ---From -24 to 24
---@int phoneme_b ---From 0 to 29 (A to Z)
---@int phoneme_b_coarse_tuning ---From -24 to 24
---@int waveform ---0 for sinusoid, 1 for triangle, 2 for sawtooth
---@number rate
---@table audio_vocal_morpher_properties

---Returns the minimum values for the vocal morpher effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_vocal_morpher_properties
function ncine.audio_effect_properties.get_min_vocal_morpher_properties(audio_effect_properties) end

---Returns the maximum values for the vocal morpher effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_vocal_morpher_properties
function ncine.audio_effect_properties.get_max_vocal_morpher_properties(audio_effect_properties) end

---Returns the current values for the vocal morpher effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_vocal_morpher_properties
function ncine.audio_effect_properties.get_vocal_morpher_properties(audio_effect_properties) end

---Sets all values for the vocal morpher effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@tparam audio_vocal_morpher_properties properties
function ncine.audio_effect_properties.set_vocal_morpher_properties(audio_effect_properties, properties) end

---Resets all property values for the vocal morpher effect to thir default
---@tparam audioeffectpropertiesObj audio_effect_properties
function ncine.audio_effect_properties.reset_vocal_morpher_properties(audio_effect_properties) end

---Pitch Shifter
---@section Pitch_Shifter

---Properties of the pitch shifter effect
---@int coarse_tune integer ---From -12 to 12
---@int fineTune integer ---From -50 to 50
---@table audio_pitch_shifter_properties

---Returns the minimum values for the pitch shifter effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_pitch_shifter_properties
function ncine.audio_effect_properties.get_min_pitch_shifter_properties(audio_effect_properties) end

---Returns the maximum values for the pitch shifter effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_pitch_shifter_properties
function ncine.audio_effect_properties.get_max_pitch_shifter_properties(audio_effect_properties) end

---Returns the current values for the pitch shifter effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_pitch_shifter_properties
function ncine.audio_effect_properties.get_pitch_shifter_properties(audio_effect_properties) end

---Sets all values for the pitch shifter effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@tparam audio_pitch_shifter_properties properties
function ncine.audio_effect_properties.set_pitch_shifter_properties(audio_effect_properties, properties) end

---Resets all property values for the pitch shifter effect to thir default
---@tparam audioeffectpropertiesObj audio_effect_properties
function ncine.audio_effect_properties.reset_pitch_shifter_properties(audio_effect_properties) end

---Ring Modulator
---@section Ring_Modulator

---Properties of the ring modulator effect
---@number frequency
---@number highpass_cutoff
---@int waveform ---0 for sinusoid, 1 for sawtooth, 2 for square
---@table audio_ring_modulator_properties

---Returns the minimum values for the ring modulator effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_ring_modulator_properties
function ncine.audio_effect_properties.get_min_ring_modulator_properties(audio_effect_properties) end

---Returns the maximum values for the ring modulator effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_ring_modulator_properties
function ncine.audio_effect_properties.get_max_ring_modulator_properties(audio_effect_properties) end

---Returns the current values for the ring modulator effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_ring_modulator_properties
function ncine.audio_effect_properties.get_ring_modulator_properties(audio_effect_properties) end

---Sets all values for the ring modulator effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@tparam audio_ring_modulator_properties properties
function ncine.audio_effect_properties.set_ring_modulator_properties(audio_effect_properties, properties) end

---Resets all property values for the ring modulator effect to thir default
---@tparam audioeffectpropertiesObj audio_effect_properties
function ncine.audio_effect_properties.reset_ring_modulator_properties(audio_effect_properties) end

---Auto Wah
---@section Auto_Wah

---Properties of the auto wah effect
---@number attack_time
---@number release_time
---@number resonance
---@number peak_gain
---@table audio_auto_wah_properties

---Returns the minimum values for the auto wah effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_auto_wah_properties
function ncine.audio_effect_properties.get_min_auto_wah_properties(audio_effect_properties) end

---Returns the maximum values for the auto wah effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_auto_wah_properties
function ncine.audio_effect_properties.get_max_auto_wah_properties(audio_effect_properties) end

---Returns the current values for the auto wah effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_auto_wah_properties
function ncine.audio_effect_properties.get_auto_wah_properties(audio_effect_properties) end

---Sets all values for the auto wah effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@tparam audio_auto_wah_properties properties
function ncine.audio_effect_properties.set_auto_wah_properties(audio_effect_properties, properties) end

---Resets all property values for the auto wah effect to thir default
---@tparam audioeffectpropertiesObj audio_effect_properties
function ncine.audio_effect_properties.reset_auto_wah_properties(audio_effect_properties) end

---Compressor
---@section Compressor

---Properties of the compressor effect
---@int on_off ---0 or 1
---@table audio_compressor_properties

---Returns the minimum values for the compressor effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_compressor_properties
function ncine.audio_effect_properties.get_min_compressor_properties(audio_effect_properties) end

---Returns the maximum values for the compressor effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_compressor_properties
function ncine.audio_effect_properties.get_max_compressor_properties(audio_effect_properties) end

---Returns the current values for the compressor effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_compressor_properties
function ncine.audio_effect_properties.get_compressor_properties(audio_effect_properties) end

---Sets all values for the compressor effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@tparam audio_compressor_properties properties
function ncine.audio_effect_properties.set_compressor_properties(audio_effect_properties, properties) end

---Resets all property values for the compressor effect to thir default
---@tparam audioeffectpropertiesObj audio_effect_properties
function ncine.audio_effect_properties.reset_compressor_properties(audio_effect_properties) end

---Equalizer
---@section Equalizer

---Properties of the equalizer effect
---@number low_gain
---@number low_cutoff
---@number mid1_gain
---@number mid1_center
---@number mid1_width
---@number mid2_gain
---@number mid2_center
---@number mid2_width
---@number high_gain
---@number high_cutoff
---@table audio_equalizer_properties

---Returns the minimum values for the equalizer effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_equalizer_properties
function ncine.audio_effect_properties.get_min_equalizer_properties(audio_effect_properties) end

---Returns the maximum values for the equalizer effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_equalizer_properties
function ncine.audio_effect_properties.get_max_equalizer_properties(audio_effect_properties) end

---Returns the current values for the equalizer effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@treturn audio_equalizer_properties
function ncine.audio_effect_properties.get_equalizer_properties(audio_effect_properties) end

---Sets all values for the equalizer effect properties
---@tparam audioeffectpropertiesObj audio_effect_properties
---@tparam audio_equalizer_properties properties
function ncine.audio_effect_properties.set_equalizer_properties(audio_effect_properties, properties) end

---Resets all property values for the equalizer effect to thir default
---@tparam audioeffectpropertiesObj audio_effect_properties
function ncine.audio_effect_properties.reset_equalizer_properties(audio_effect_properties) end
