---The table containing font related functions
---@module ncine.font

---The light user data of a font object
---@table fontObj

---Font rendering modes (enumeration)
ncine.font_render_mode = {
	GLYPH_IN_ALPHA = 0,
	GLYPH_IN_RED = 1,
	GLYPH_SPRITE = 3,
}

---Constructs the font object from an AngelCode's `FNT` file and a texture file.
---
---If the `texture_file` parameter is an empty string, then a texture with the same name as the `FNT` file is searched in the same path.
---
---Don't forget to call @{delete} when you are done with it!
---@tparam string fnt_file The path to a `FNT` file
---@tparam string texture_file The path to a texture file
---@treturn fontObj A new font object
function ncine.font.new(fnt_file, texture_file) end

---Destroys a font object and releases its memory
---@tparam fontObj font The font object to be destroyed
function ncine.font.delete(font) end

---Returns the texture object in use by the font
---@tparam fontObj font
---@treturn ncine.texture.textureObj|nil
function ncine.font.get_texture(font) end

---Sets a new shared texture object without modifying any glyphs or kerning data
---@tparam fontObj font
---@tparam ncine.texture.textureObj|nil texture
function ncine.font.set_texture(font, texture) end

---Returns the font line height
---@tparam fontObj font
---@treturn integer
function ncine.font.get_line_height(font) end

---Returns the font base
---@tparam fontObj font
---@treturn integer
function ncine.font.get_base(font) end

---Returns the texture atlas size
---@tparam fontObj font
---@treturn ncine.vec2
function ncine.font.get_texture_size(font) end

---Returns the number of glyphs
---@tparam fontObj font
---@treturn integer
function ncine.font.num_glyphs(font) end

---Returns the number of kerning pairs
---@tparam fontObj font
---@treturn integer
function ncine.font.num_kernings(font) end

---Returns the mode detected by the font to render text nodes
---@tparam fontObj font
---@treturn ncine.font_render_mode
function ncine.font.get_render_mode(font) end
