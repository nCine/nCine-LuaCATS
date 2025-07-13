---The table containing filesystem related functions
---@module ncine.fs

---A table with date information used for file modification or access time
---@int year
---@int month
---@int day
---@int week_day
---@int hour
---@int minute
---@int second
---@table file_date

---File and directory permission modes (enumeration)
ncine.permission = {
	READ = 0,
	WRITE = 1,
	EXECUTE = 3,
}

---Joins together two path components
---@tparam string first
---@tparam string second
---@treturn string
function ncine.fs.join_path(first, second) end

---Returns the absolute path after joining together two path components
---@tparam string first
---@tparam string second
---@treturn string
function ncine.fs.absolute_join_path(first, second) end

---Returns the path up to, but not including, the final separator
---@tparam string path
---@treturn string
function ncine.fs.dirname(path) end

---Returns the path component after the final separator
---@tparam string path
---@treturn string
function ncine.fs.basename(path) end

---Returns an absolute path from a relative one.
---
---It also resolves dot references to current and parent directories, and double separators.
---@tparam string path
---@treturn string
function ncine.fs.absolute_path(path) end

---Returns the extension position in the string or `nil` if it is not found
---@tparam string path
---@treturn string|nil
function ncine.fs.get_extension(path) end

---Returns `true` if the path has the specified extension (case-insensitive comparison)
---@tparam string path
---@tparam string extension
---@treturn boolean
function ncine.fs.has_extension(path, extension) end

---Returns a bitmask representing the currently available disk drives on Windows
---@treturn integer
function ncine.fs.logical_drives() end

---Returns a buffer with strings that specify valid drives in the system on Windows
---@treturn string
function ncine.fs.logical_drive_strings() end

---Returns the path of the directory where the executable resides
---@treturn string
function ncine.fs.get_executable_dir() end

---Returns the path of the current working directory
---@treturn string
function ncine.fs.get_current_dir() end

---Sets the current working directory, the starting point for interpreting relative paths
---@tparam string path
---@treturn boolean True if the directory has been successfully changed
function ncine.fs.set_current_dir(path) end

---Returns `true` if the specified path is a directory
---@tparam string path
---@treturn boolean
function ncine.fs.is_directory(path) end

---Returns `true` if the specified path is a file
---@tparam string path
---@treturn boolean
function ncine.fs.is_file(path) end

---Returns `true` if the file or directory exists
---@tparam string path
---@treturn boolean
function ncine.fs.exists(path) end

---Returns `true` if the file or directory is readable
---@tparam string path
---@treturn boolean
function ncine.fs.is_readable(path) end

---Returns `true` if the file or directory is writable
---@tparam string path
---@treturn boolean
function ncine.fs.is_writable(path) end

---Returns `true` if the file or directory is executable
---@tparam string path
---@treturn boolean
function ncine.fs.is_executable(path) end

---Returns `true` if the path is a file and is readable
---@tparam string path
---@treturn boolean
function ncine.fs.is_readable_file(path) end

---Returns `true` if the path is a file and is writeable
---@tparam string path
---@treturn boolean
function ncine.fs.is_writable_file(path) end

---Returns `true` if the file or directory is hidden
---@tparam string path
---@treturn boolean
function ncine.fs.is_hidden(path) end

---Makes a file or a directory hidden or not
---@tparam string path
---@tparam boolean hidden
---@treturn boolean True if the new hidden state has been successfully set
function ncine.fs.set_hidden(path, hidden) end

---Creates a new directory
---@tparam string path
---@treturn boolean True if the new directory has been created
function ncine.fs.create_dir(path) end

---Deletes an empty directory
---@tparam string path
---@treturn boolean True if the empty directory has been deleted
function ncine.fs.delete_empty_dir(path) end

---Deletes a file
---@tparam string path
---@treturn boolean True if the file has been deleted
function ncine.fs.delete_file(path) end

---Renames or moves a file or a directory
---@tparam string old_path
---@tparam string new_path
---@treturn boolean True if the file or directory has been renamed or moved
function ncine.fs.rename(old_path, new_path) end

---Copies a file
---@tparam string old_path
---@tparam string new_path
---@treturn boolean True if the file has been copied
function ncine.fs.copy(old_path, new_path) end

---Returns the file size in bytes
---@tparam string path
---@treturn integer
function ncine.fs.file_size(path) end

---Returns the last time the file or directory was modified
---@tparam string path
---@treturn file_date
---
---@see file_date
function ncine.fs.last_modification_time(path) end

---Returns the last time the file or directory was accessed
---@tparam string path
---@treturn file_date
---
---@see file_date
function ncine.fs.last_access_time(path) end

---Returns the file or directory permissions in a mask
---@tparam string path
---@treturn integer A mask created from values in `ncine.permission`
---@see ncine.permission
function ncine.fs.get_permissions(path) end

---Returns the file or directory permissions in a mask
---@tparam string path
---@tparam integer mode A mask created from values in `ncine.permission`
---@treturn boolean True if the permission mode was changed
---@see ncine.permission
function ncine.fs.change_permissions(path, mode) end

---Adds the permissions in the mask to a file or a directory
---@tparam string path
---@tparam integer mode A mask created from values in `ncine.permission`
---@treturn boolean True if the new permission mode was added
---@see ncine.permission
function ncine.fs.add_permissions(path, mode) end

---Removes the permissions in the mask from a file or a directory
---@tparam string path
---@tparam integer mode A mask created from values in `ncine.permission`
---@treturn boolean True if the permission mode was removed
---@see ncine.permission
function ncine.fs.remove_permissions(path, mode) end

---Returns the base directory for data loading
---@treturn string
function ncine.fs.get_data_path() end

---Returns the current user home directory
---@treturn string
function ncine.fs.get_home_path() end

---Returns the writable directory for saving data
---@treturn string
function ncine.fs.get_save_path() end

---Returns the writable directory for saving cache data
---@treturn string
function ncine.fs.get_cache_path() end
