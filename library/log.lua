---@meta

---Log levels, from less to more severe
---@enum ncine.log_level
ncine.log_level = {
	UNKNOWN = -1,
	OFF = 0,
	VERBOSE = 1,
	DEBUG = 2,
	INFO = 3,
	WARN = 4,
	ERROR = 5,
	FATAL = 6,
}

---The logging class
---@class ncine.log
ncine.log = {}

---Logs a message with a `ncine.log_level.VERBOSE` level
---@param msg string
function ncine.log.verbose(msg) end

---Logs a message with a `ncine.log_level.DEBUG` level
---@param msg string
function ncine.log.debug(msg) end

---Logs a message with a `ncine.log_level.INFO` level
---@param msg string
function ncine.log.info(msg) end

---Logs a message with a `ncine.log_level.WARN` level
---@param msg string
function ncine.log.warn(msg) end

--Logs a message with a `ncine.log_level.ERROR` level
---@param msg string
function ncine.log.error(msg) end

---Logs a message with a `ncine.log_level.FATAL` level
---@param msg string
function ncine.log.fatal(msg) end
