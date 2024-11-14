---@meta

---The light user data of an audio effect slot object
---@class audioeffectslotObj: lightuserdata

---The table containing audio effect slot related functions
---@class ncine.audio_effect_slot
ncine.audio_effect_slot = {}

---Constructs an audio effect slot object
---
---Don't forget to call [delete](lua://ncine.audio_effect_slot.delete) when you are done with it!
---@return audioeffectslotObj # A new audio effect slot object
---@nodiscard
function ncine.audio_effect_slot.new() end

---Destroys an audio effect slot object and releases its memory
---@param audio_effect_slot audioeffectslotObj # The audio effect slot object to be destroyed
function ncine.audio_effect_slot.delete(audio_effect_slot) end

---Returns the OpenAL auxilary effect slot id
---@param audio_effect_slot audioeffectslotObj
---@return integer
function ncine.audio_effect_slot.get_effect_slot_id(audio_effect_slot) end

---Returns the gain output level of the auxilary effect slot
---@param audio_effect_slot audioeffectslotObj
---@return number
function ncine.audio_effect_slot.get_gain(audio_effect_slot) end

---Sets the gain output level of the auxilary effect slot
---@param audio_effect_slot audioeffectslotObj
---@param gain number
function ncine.audio_effect_slot.set_gain(audio_effect_slot, gain) end

---Returns the state of the auxilary slot send auto flag
---
---The property is used to enable or disable automatic send adjustments based on the physical positions of the sources and the listener.
---@param audio_effect_slot audioeffectslotObj
---@return boolean
function ncine.audio_effect_slot.get_aux_send_auto(audio_effect_slot) end

---Sets the state of the auxilary slot send auto flag
---
---The property is used to enable or disable automatic send adjustments based on the physical positions of the sources and the listener.
---@param audio_effect_slot audioeffectslotObj
---@param aux_send_auto boolean
function ncine.audio_effect_slot.set_aux_send_auto(audio_effect_slot, aux_send_auto) end

---Applies the effect parameters from an effect object
---@param audio_effect_slot audioeffectslotObj
---@param audio_effect audioeffectObj
function ncine.audio_effect_slot.apply_effect(audio_effect_slot, audio_effect) end
