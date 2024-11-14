---@meta

---Timestamping related functions
ncine.timestamp = {}

---Returns the timestamp counter value (the number of ticks until now)
---@return integer
function ncine.timestamp.now() end

---Returns the number of ticks passed since the given counter value
---@param counter integer
---@return integer
function ncine.timestamp.ticks_since(counter) end

---Returns the number of seconds passed since the given counter value
---@param counter integer
---@return number
function ncine.timestamp.seconds_since(counter) end

---Returns the number of milliseconds passed since the given counter value
---@param counter integer
---@return number
function ncine.timestamp.milliseconds_since(counter) end

---Returns the number of microseconds passed since the given counter value
---@param counter integer
---@return number
function ncine.timestamp.microseconds_since(counter) end

---Returns the number of nanoseconds passed since the given counter value
---@param counter integer
---@return number
function ncine.timestamp.nanoseconds_since(counter) end

---Returns the given counter value as seconds passed
---@param counter integer
---@return number
function ncine.timestamp.seconds(counter) end

---Returns the given counter value as milliseconds passed
---@param counter integer
---@return number
function ncine.timestamp.milliseconds(counter) end

---Returns the given counter value as microseconds passed
---@param counter integer
---@return number
function ncine.timestamp.microseconds(counter) end

---Returns the given counter value as nanoseconds passed
---@param counter integer
---@return number
function ncine.timestamp.nanoseconds(counter) end
