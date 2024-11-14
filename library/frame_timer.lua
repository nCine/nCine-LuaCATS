---@meta

---The table containing frame timer related functions
---@class ncine.frame_timer
ncine.frame_timer = {}

---Returns the total number of frames rendered since the application started
---@return integer
function ncine.frame_timer.total_number_frames() end

---Returns the time in seconds that last frame took to complete
---@return number
function ncine.frame_timer.last_frame_duration() end

---Returns the elapsed time in seconds since current frame started
---@return number
function ncine.frame_timer.current_frame_duration() end

---Returns the average FPS during the update interval
---@return number
function ncine.frame_timer.average_fps() end

---Returns the average frame time in seconds during the update interval
---@return number
function ncine.frame_timer.average_frame_time() end

---Returns `true` if the average FPS calculation is enabled
---@return boolean
function ncine.frame_timer.is_average_enabled() end

---Returns `true` if logging of averages is enabled
---@return boolean
function ncine.frame_timer.is_logging_enabled() end

---Returns the number of seconds between two average FPS calculations
---@return number
function ncine.frame_timer.get_average_interval() end

---Sets the number of seconds between two average FPS calculations
---@param interval number
function ncine.frame_timer.set_average_interval(interval) end

---Returns the number of seconds between two logging events
---
---A different and independent average is calculated over this time interval.
---@return number
function ncine.frame_timer.get_logging_interval() end

---Sets the number of seconds between two logging events
---@param interval number
function ncine.frame_timer.set_logging_interval(interval) end

---Returns the level for the logging events
---@return ncine.log_level
function ncine.frame_timer.get_log_level() end

---Sets the level for the logging events
---@param log_level ncine.log_level
function ncine.frame_timer.set_log_level(log_level) end
