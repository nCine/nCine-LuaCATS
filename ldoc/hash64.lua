---Utility methods to calculate a 64bit hash from strings or files
--- @module ncine.hash64

---Returns a hash number by hashing all characters of the given string
---@tparam string string
---@treturn integer
function ncine.timestamp.hash_string(string) end

---Returns a hash number by hashing the date, size, and name of the given file
---@tparam string filepath
---@treturn integer
function ncine.timestamp.hash_file_stat(filepath) end

---Returns a hash number by scanning a hash string
---@tparam string string
---@treturn integer
function ncine.timestamp.scan_hash_string(string) end
