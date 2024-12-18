---The table containing logging related functions
---@module ncine.log

---Log levels, from less to more severe (enumeration)
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

---Logs a message with a `ncine.log_level.VERBOSE` level
---@tparam string msg
function ncine.log.verbose(msg) end

---Logs a message with a `ncine.log_level.DEBUG` level
---@tparam string msg
function ncine.log.debug(msg) end

---Logs a message with a `ncine.log_level.INFO` level
---@tparam string msg
function ncine.log.info(msg) end

---Logs a message with a `ncine.log_level.WARN` level
---@tparam string msg
function ncine.log.warn(msg) end

--Logs a message with a `ncine.log_level.ERROR` level
---@tparam string msg
function ncine.log.error(msg) end

---Logs a message with a `ncine.log_level.FATAL` level
---@tparam string msg
function ncine.log.fatal(msg) end
