---@meta

--The light user data of a font object
---@class fontObj: lightuserdata

---Font rendering modes
---@enum ncine.font_render_mode
ncine.font_render_mode = {
	GLYPH_IN_ALPHA = 0,
	GLYPH_IN_RED = 1,
	GLYPH_SPRITE = 3,
}

---The table containing font related functions
---@class ncine.font
ncine.font = {}

---Constructs the font object from an AngelCode's `FNT` file and a texture file.
---
---If the `texture_file` parameter is an empty string, then a texture with the same name as the `FNT` file is searched in the same path.
---
---Don't forget to call [delete](lua://ncine.font.delete) when you are done with it!
---@param fnt_file string # The path to a `FNT` file
---@param texture_file string # The path to a texture file
---@return fontObj # A new font object
---@nodiscard
function ncine.font.new(fnt_file, texture_file) end

---Destroys a font object and releases its memory
---@param font fontObj # The font object to be destroyed
function ncine.font.delete(font) end

---Returns the texture object in use by the font
---@param font fontObj
---@return textureObj?
function ncine.font.get_texture(font) end

---Sets a new shared texture object without modifying any glyphs or kerning data
---@param font fontObj
---@param texture? textureObj
function ncine.font.set_texture(font, texture) end

---Returns the font line height
---@param font fontObj
---@return integer
function ncine.font.get_line_height(font) end

---Returns the font base
---@param font fontObj
---@return integer
function ncine.font.get_base(font) end

---Returns the texture atlas size
---@param font fontObj
---@return ncine.vec2
function ncine.font.get_texture_size(font) end

---Returns the number of glyphs
---@param font fontObj
---@return integer
function ncine.font.num_glyphs(font) end

---Returns the number of kerning pairs
---@param font fontObj
---@return integer
function ncine.font.num_kernings(font) end

---Returns the mode detected by the font to render text nodes
---@param font fontObj
---@return ncine.font_render_mode
function ncine.font.get_render_mode(font) end
