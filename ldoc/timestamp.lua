---Timestamping related functions
---@module ncine.timestamp

---Returns the timestamp counter value (the number of ticks until now)
---@treturn integer
function ncine.timestamp.now() end

---Returns the number of ticks elapsed since the given counter value
---@tparam integer counter
---@treturn integer
function ncine.timestamp.ticks_since(counter) end

---Returns the number of seconds elapsed since the given counter value
---@tparam integer counter
---@treturn number
function ncine.timestamp.seconds_since(counter) end

---Returns the number of milliseconds elapsed since the given counter value
---@tparam integer counter
---@treturn number
function ncine.timestamp.milliseconds_since(counter) end

---Returns the number of microseconds elapsed since the given counter value
---@tparam integer counter
---@treturn number
function ncine.timestamp.microseconds_since(counter) end

---Returns the number of nanoseconds elapsed since the given counter value
---@tparam integer counter
---@treturn number
function ncine.timestamp.nanoseconds_since(counter) end

---Returns the given counter value as elapsed seconds
---@tparam integer counter
---@treturn number
function ncine.timestamp.seconds(counter) end

---Returns the given counter value as elapsed milliseconds
---@tparam integer counter
---@treturn number
function ncine.timestamp.milliseconds(counter) end

---Returns the given counter value as elapsed microseconds
---@tparam integer counter
---@treturn number
function ncine.timestamp.microseconds(counter) end

---Returns the given counter value as elapsed nanoseconds
---@tparam integer counter
---@treturn number
function ncine.timestamp.nanoseconds(counter) end
