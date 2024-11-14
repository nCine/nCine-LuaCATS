---@meta

---The light user data of a texture object
---@class textureObj: lightuserdata

---Texture formats
---@enum ncine.tex_format
ncine.tex_format = {
	R8 = 0,
	RG8 = 1,
	RGB8 = 2,
	RGBA8 = 3,
	UNKNOWN = 4,
}

---Texture filtering modes
---@enum ncine.tex_filtering
ncine.tex_filtering = {
	NEAREST = 0,
	LINEAR = 1,
	NEAREST_MIPMAP_NEAREST = 2,
	LINEAR_MIPMAP_NEAREST = 3,
	NEAREST_MIPMAP_LINEAR = 4,
	LINEAR_MIPMAP_LINEAR = 5,
}

---Texture wrap modes
---@enum ncine.tex_wrap
ncine.tex_wrap = {
	CLAMP_TO_EDGE = 0,
	MIRRORED_REPEAT = 1,
	REPEAT = 2,
}

---The table containing texture related functions
---@class ncine.texture
ncine.texture = {}

---Constructs a texture object from an image file
---
---Don't forget to call [delete](lua://ncine.texture.delete) when you are done with it!
---@param filename string # The path to an image file
---@return textureObj # A new texture object
---@nodiscard
function ncine.texture.new(filename) end

---Constructs a blank texture
---
---Don't forget to call [delete](lua://ncine.texture.delete) when you are done with it!
---@param name string # The name for the new texture object
---@param format ncine.tex_format # The texture format
---@param mip_count integer # The number of MIP map levels
---@param size ncine.vec2 # The texture size
---@return textureObj # A new texture object
---@nodiscard
function ncine.texture.new_init(name, format, mip_count, size) end

---Constructs a blank texture
---
---Don't forget to call [delete](lua://ncine.texture.delete) when you are done with it!
---@param name string # The name for the new texture object
---@param format ncine.tex_format # The texture format
---@param mip_count integer # The number of MIP map levels
---@param x integer # The texture width
---@param y integer # The texture height
---@return textureObj # A new texture object
---@nodiscard
function ncine.texture.new_init(name, format, mip_count, x, y) end

---Destroys a texture object and releases its memory
---@param texture textureObj # The texture object to be destroyed
function ncine.texture.delete(texture) end

---Initializes a texture object to a blank texture
---@param texture textureObj
---@param name string # The name for the new texture object
---@param format ncine.tex_format # The texture format
---@param mip_count integer # The number of MIP map levels
---@param size ncine.vec2 # The texture size
function ncine.texture.init(texture, name, format, mip_count, size) end

---Initializes a texture object to a blank texture
---@param texture textureObj
---@param name string # The name for the new texture object
---@param format ncine.tex_format # The texture format
---@param mip_count integer # The number of MIP map levels
---@param x integer # The texture width
---@param y integer # The texture height
function ncine.texture.init(texture, name, format, mip_count, x, y) end

---Returns the texture width
---@param texture textureObj
---@return integer
function ncine.texture.get_width(texture) end

---Returns the texture height
---@param texture textureObj
---@return integer
function ncine.texture.get_height(texture) end

---Returns the number of MIP map levels
---@param texture textureObj
---@return integer
function ncine.texture.mip_levels(texture) end

---Returns `true` if the texture holds compressed data
---@param texture textureObj
---@return boolean
function ncine.texture.is_compressed(texture) end

---Returns the texture format
---@param texture textureObj
---@return ncine.tex_format
function ncine.texture.get_format(texture) end

---Returns the number of color channels
---@param texture textureObj
---@return integer
function ncine.texture.num_channels(texture) end

---Returns the amount of video memory needed to load the texture
---@param texture textureObj
---@return integer
function ncine.texture.datasize(texture) end

---Returns the filtering mode used for minification
---@param texture textureObj
---@return ncine.tex_filtering
function ncine.texture.get_min_filtering(texture) end

---Returns the filtering mode used for magnification
---@param texture textureObj
---@return ncine.tex_filtering
function ncine.texture.get_mag_filtering(texture) end

---Returns the wrap mode used for the `s` and `t` directions
---@param texture textureObj
---@return ncine.tex_wrap
function ncine.texture.get_wrap(texture) end

---Sets the filtering mode used for minification
---@param texture textureObj
---@param filtering ncine.tex_filtering
function ncine.texture.set_min_filtering(texture, filtering) end

---Sets the filtering mode used for magnification
---@param texture textureObj
---@param filtering ncine.tex_filtering
function ncine.texture.set_mag_filtering(texture, filtering) end

---Sets the wrap mode used for the `s` and `t` directions
---@param texture textureObj
---@param wrap ncine.tex_wrap
function ncine.texture.set_wrap(texture, wrap) end

---Returns `true` if chroma key transparency will be used when loading
---@param texture textureObj
---@return boolean
function ncine.texture.is_chromakey_enabled(texture) end

---Returns the color treated as transparent when loading a texture
---@param texture textureObj
---@return ncine.color
function ncine.texture.get_chromakey_color(texture) end

---Sets the chroma key transparency state to use when loading
---@param texture textureObj
---@param state boolean
function ncine.texture.set_chromakey_enabled(texture, state) end

---Sets the color to be treated as transparent when loading a texture through a `ncine.color` table
---@param texture textureObj
---@param color ncine.color
function ncine.texture.set_chromakey_color(texture, color) end

---Sets the color to be treated as transparent when loading a texture through color components
---@param texture textureObj
---@param r number
---@param g number
---@param b number
---@param a number
function ncine.texture.set_chromakey_color(texture, r, g, b, a) end

---Sets the OpenGL object label for the texture
---@param texture textureObj
---@param label string
function ncine.texture.set_gltexture_label(texture, label) end
