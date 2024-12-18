---The table containing audio effect slot related functions
---@module ncine.audio_effect_slot

---The light user data of an audio effect slot object
---@table audioeffectslotObj

---Constructs an audio effect slot object.
---
---Don't forget to call @{delete} when you are done with it!
---@treturn audioeffectslotObj A new audio effect slot object
function ncine.audio_effect_slot.new() end

---Destroys an audio effect slot object and releases its memory
---@tparam audioeffectslotObj audio_effect_slot The audio effect slot object to be destroyed
function ncine.audio_effect_slot.delete(audio_effect_slot) end

---Returns the OpenAL auxilary effect slot id
---@tparam audioeffectslotObj audio_effect_slot
---@treturn integer
function ncine.audio_effect_slot.get_effect_slot_id(audio_effect_slot) end

---Returns the gain output level of the auxilary effect slot
---@tparam audioeffectslotObj audio_effect_slot
---@treturn number
function ncine.audio_effect_slot.get_gain(audio_effect_slot) end

---Sets the gain output level of the auxilary effect slot
---@tparam audioeffectslotObj audio_effect_slot
---@tparam number gain
function ncine.audio_effect_slot.set_gain(audio_effect_slot, gain) end

---Returns the state of the auxilary slot send auto flag.
---
---The property is used to enable or disable automatic send adjustments based on the physical positions of the sources and the listener.
---@tparam audioeffectslotObj audio_effect_slot
---@treturn boolean
function ncine.audio_effect_slot.get_aux_send_auto(audio_effect_slot) end

---Sets the state of the auxilary slot send auto flag.
---
---The property is used to enable or disable automatic send adjustments based on the physical positions of the sources and the listener.
---@tparam audioeffectslotObj audio_effect_slot
---@tparam boolean aux_send_auto
function ncine.audio_effect_slot.set_aux_send_auto(audio_effect_slot, aux_send_auto) end

---Applies the effect parameters from an effect object
---@tparam audioeffectslotObj audio_effect_slot
---@tparam ncine.audio_effect.audioeffectObj audio_effect
function ncine.audio_effect_slot.apply_effect(audio_effect_slot, audio_effect) end
