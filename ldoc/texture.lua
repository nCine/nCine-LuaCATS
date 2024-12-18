---The table containing texture related functions
---@module ncine.texture

---The light user data of a texture object
---@table textureObj

---Texture formats (enumeration)
ncine.tex_format = {
	R8 = 0,
	RG8 = 1,
	RGB8 = 2,
	RGBA8 = 3,
	UNKNOWN = 4,
}

---Texture filtering modes (enumeration)
ncine.tex_filtering = {
	NEAREST = 0,
	LINEAR = 1,
	NEAREST_MIPMAP_NEAREST = 2,
	LINEAR_MIPMAP_NEAREST = 3,
	NEAREST_MIPMAP_LINEAR = 4,
	LINEAR_MIPMAP_LINEAR = 5,
}

---Texture wrap modes (enumeration)
ncine.tex_wrap = {
	CLAMP_TO_EDGE = 0,
	MIRRORED_REPEAT = 1,
	REPEAT = 2,
}

---Constructs a texture object from an image file.
---
---Don't forget to call @{delete} when you are done with it!
---@tparam string filename The path to an image file
---@treturn textureObj A new texture object
function ncine.texture.new(filename) end

---Constructs a blank texture.
---
---Don't forget to call @{delete} when you are done with it!
---@tparam string name The name for the new texture object
---@tparam ncine.tex_format format The texture format
---@tparam integer mip_count The number of MIP map levels
---@tparam ncine.vec2 size The texture size
---@treturn textureObj A new texture object
function ncine.texture.new_init(name, format, mip_count, size) end

---Constructs a blank texture.
---
---Don't forget to call @{delete} when you are done with it!
---@tparam string name The name for the new texture object
---@tparam ncine.tex_format format The texture format
---@tparam integer mip_count The number of MIP map levels
---@tparam integer x The texture width
---@tparam integer y The texture height
---@treturn textureObj A new texture object
function ncine.texture.new_init(name, format, mip_count, x, y) end

---Destroys a texture object and releases its memory
---@tparam textureObj texture The texture object to be destroyed
function ncine.texture.delete(texture) end

---Initializes a texture object to a blank texture
---@tparam textureObj texture
---@tparam string name The name for the new texture object
---@tparam ncine.tex_format format The texture format
---@tparam integer mip_count The number of MIP map levels
---@tparam ncine.vec2 size The texture size
function ncine.texture.init(texture, name, format, mip_count, size) end

---Initializes a texture object to a blank texture
---@tparam textureObj texture
---@tparam string name The name for the new texture object
---@tparam ncine.tex_format format The texture format
---@tparam integer mip_count The number of MIP map levels
---@tparam integer x The texture width
---@tparam integer y The texture height
function ncine.texture.init(texture, name, format, mip_count, x, y) end

---Returns the texture width
---@tparam textureObj texture
---@treturn integer
function ncine.texture.get_width(texture) end

---Returns the texture height
---@tparam textureObj texture
---@treturn integer
function ncine.texture.get_height(texture) end

---Returns the number of MIP map levels
---@tparam textureObj texture
---@treturn integer
function ncine.texture.mip_levels(texture) end

---Returns `true` if the texture holds compressed data
---@tparam textureObj texture
---@treturn boolean
function ncine.texture.is_compressed(texture) end

---Returns the texture format
---@tparam textureObj texture
---@treturn ncine.tex_format
function ncine.texture.get_format(texture) end

---Returns the number of color channels
---@tparam textureObj texture
---@treturn integer
function ncine.texture.num_channels(texture) end

---Returns the amount of video memory needed to load the texture
---@tparam textureObj texture
---@treturn integer
function ncine.texture.datasize(texture) end

---Returns the filtering mode used for minification
---@tparam textureObj texture
---@treturn ncine.tex_filtering
function ncine.texture.get_min_filtering(texture) end

---Returns the filtering mode used for magnification
---@tparam textureObj texture
---@treturn ncine.tex_filtering
function ncine.texture.get_mag_filtering(texture) end

---Returns the wrap mode used for the `s` and `t` directions
---@tparam textureObj texture
---@treturn ncine.tex_wrap
function ncine.texture.get_wrap(texture) end

---Sets the filtering mode used for minification
---@tparam textureObj texture
---@tparam ncine.tex_filtering filtering
function ncine.texture.set_min_filtering(texture, filtering) end

---Sets the filtering mode used for magnification
---@tparam textureObj texture
---@tparam ncine.tex_filtering filtering
function ncine.texture.set_mag_filtering(texture, filtering) end

---Sets the wrap mode used for the `s` and `t` directions
---@tparam textureObj texture
---@tparam ncine.tex_wrap wrap
function ncine.texture.set_wrap(texture, wrap) end

---Returns `true` if chroma key transparency will be used when loading
---@tparam textureObj texture
---@treturn boolean
function ncine.texture.is_chromakey_enabled(texture) end

---Returns the color treated as transparent when loading a texture
---@tparam textureObj texture
---@treturn ncine.color
function ncine.texture.get_chromakey_color(texture) end

---Sets the chroma key transparency state to use when loading
---@tparam textureObj texture
---@tparam boolean state
function ncine.texture.set_chromakey_enabled(texture, state) end

---Sets the color to be treated as transparent when loading a texture through a `ncine.color` table
---@tparam textureObj texture
---@tparam ncine.color color
function ncine.texture.set_chromakey_color(texture, color) end

---Sets the color to be treated as transparent when loading a texture through color components
---@tparam textureObj texture
---@tparam number r
---@tparam number g
---@tparam number b
---@tparam number a
function ncine.texture.set_chromakey_color(texture, r, g, b, a) end

---Sets the OpenGL object label for the texture
---@tparam textureObj texture
---@tparam string label
function ncine.texture.set_gltexture_label(texture, label) end
