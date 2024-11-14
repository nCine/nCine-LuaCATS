---@meta

---A table with date information used for file modification or access time
---@class file_date
---@field year integer
---@field month integer
---@field day integer
---@field week_day integer
---@field hour integer
---@field minute integer
---@field second integer

---file and directory permission modes
---@enum ncine.permission
ncine.permission = {
	READ = 0,
	WRITE = 1,
	EXECUTE = 3,
}

---The table containing filesystem related functions
---@class ncine.fs
ncine.fs = {}

---Joins together two path components
---@param first string
---@param second string
---@return string
function ncine.fs.join_path(first, second) end

---Returns the absolute path after joining together two path components
---@param first string
---@param second string
---@return string
function ncine.fs.absolute_join_path(first, second) end

---Returns the path up to, but not including, the final separator
---@param path string
---@return string
function ncine.fs.dirname(path) end

---Returns the path component after the final separator
---@param path string
---@return string
function ncine.fs.basename(path) end

---Returns an absolute path from a relative one
---
---It also resolves dot references to current and parent directories, and double separators.
---@param path string
---@return string
function ncine.fs.absolute_path(path) end

---Returns the extension position in the string or `nil` if it is not found
---@param path string
---@return string?
function ncine.fs.get_extension(path) end

---Returns `true` if the path has the specified extension (case-insensitive comparison)
---@param path string
---@param extension string
---@return boolean
function ncine.fs.has_extension(path, extension) end

---Returns a bitmask representing the currently available disk drives on Windows
---@return integer
function ncine.fs.logical_drives() end

---Returns a buffer with strings that specify valid drives in the system on Windows
---@return string
function ncine.fs.logical_drive_strings() end

---Returns the path of the current working directory
---@return string
function ncine.fs.get_current_dir() end

---Sets the current working directory, the starting point for interpreting relative paths
---@param path string
---@return boolean # True if the directory has been successfully changed
function ncine.fs.set_current_dir(path) end

---Returns `true` if the specified path is a directory
---@param path string
---@return boolean
function ncine.fs.is_directory(path) end

---Returns `true` if the specified path is a file
---@param path string
---@return boolean
function ncine.fs.is_file(path) end

---Returns `true` if the file or directory exists
---@param path string
---@return boolean
function ncine.fs.exists(path) end

---Returns `true` if the file or directory is readable
---@param path string
---@return boolean
function ncine.fs.is_readable(path) end

---Returns `true` if the file or directory is writable
---@param path string
---@return boolean
function ncine.fs.is_writable(path) end

---Returns `true` if the file or directory is executable
---@param path string
---@return boolean
function ncine.fs.is_executable(path) end

---Returns `true` if the path is a file and is readable
---@param path string
---@return boolean
function ncine.fs.is_readable_file(path) end

---Returns `true` if the path is a file and is writeable
---@param path string
---@return boolean
function ncine.fs.is_writable_file(path) end

---Returns `true` if the file or directory is hidden
---@param path string
---@return boolean
function ncine.fs.is_hidden(path) end

---Makes a file or a directory hidden or not
---@param path string
---@param hidden boolean
---@return boolean # True if the new hidden state has been successfully set
function ncine.fs.set_hidden(path, hidden) end

---Creates a new directory
---@param path string
---@return boolean # True if the new directory has been created
function ncine.fs.create_dir(path) end

---Deletes an empty directory
---@param path string
---@return boolean # True if the empty directory has been deleted
function ncine.fs.delete_empty_dir(path) end

---Deletes a file
---@param path string
---@return boolean # True if the file has been deleted
function ncine.fs.delete_file(path) end

---Renames or moves a file or a directory
---@param old_path string
---@param new_path string
---@return boolean # True if the file or directory has been renamed or moved
function ncine.fs.rename(old_path, new_path) end

---Copies a file
---@param old_path string
---@param new_path string
---@return boolean # True if the file has been copied
function ncine.fs.copy(old_path, new_path) end

---Returns the file size in bytes
---@param path string
---@return integer
function ncine.fs.file_size(path) end

---Returns the last time the file or directory was modified
---@param path string
---@return file_date
---
---@see file_date
function ncine.fs.last_modification_time(path) end

---Returns the last time the file or directory was accessed
---@param path string
---@return file_date
---
---@see file_date
function ncine.fs.last_access_time(path) end

---Returns the file or directory permissions in a mask
---@param path string
---@return integer # A mask created from values in `ncine.permission`
---@see ncine.permission
function ncine.fs.get_permissions(path) end

---Returns the file or directory permissions in a mask
---@param path string
---@param mode integer # A mask created from values in `ncine.permission`
---@return boolean # True if the permission mode was changed
---@see ncine.permission
function ncine.fs.change_permissions(path, mode) end

---Adds the permissions in the mask to a file or a directory
---@param path string
---@param mode integer # A mask created from values in `ncine.permission`
---@return boolean # True if the new permission mode was added
---@see ncine.permission
function ncine.fs.add_permissions(path, mode) end

---Removes the permissions in the mask from a file or a directory
---@param path string
---@param mode integer # A mask created from values in `ncine.permission`
---@return boolean # True if the permission mode was removed
---@see ncine.permission
function ncine.fs.remove_permissions(path, mode) end

---Returns the base directory for data loading
---@return string
function ncine.fs.get_data_path() end

---Returns the current user home directory
---@return string
function ncine.fs.get_home_path() end

---Returns the writable directory for saving data
---@return string
function ncine.fs.get_save_path() end

---Returns the writable directory for saving cache data
---@return string
function ncine.fs.get_cache_path() end
