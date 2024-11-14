---@meta

---The light user data of a textnode object
---@class textnodeObj: drawablenodeObj

---Text alignments
---@enum ncine.text_alignment
ncine.text_alignment = {
	LEFT = 0,
	CENTER = 1,
	RIGHT = 3,
}

---The table containing textnode related functions
---@class ncine.textnode: ncine.drawable_node
ncine.textnode = {}

---Constructs a textnode object with a parent scene node, a font, and a maximum text string length
---
---Don't forget to call [delete](lua://ncine.textnode.delete) when you are done with it!
---@param parent? scenenodeObj # The parent scenenode
---@param font? fontObj # The font object
---@param max_string_length integer # The maximum length for the text
---@return textnodeObj # A new textnode object
---@nodiscard
function ncine.textnode.new(parent, font, max_string_length) end

---Constructs a new textnode object as a clone of the specified one
---
---Don't forget to call [delete](lua://ncine.textnode.delete) when you are done with it!
---@param textnode textnodeObj # The textnode object to be cloned
---@return textnodeObj # The cloned textnode object
---@nodiscard
function ncine.textnode.clone(textnode) end

---Destroys a textnode object and releases its memory
---@param textnode textnodeObj # The textnode object to be destroyed
function ncine.textnode.delete(textnode) end

---Returns the width of rendered text
---@param textnode textnodeObj
---@return number
function ncine.textnode.get_width(textnode) end

---Returns the height of rendered text
---@param textnode textnodeObj
---@return number
function ncine.textnode.get_height(textnode) end

---Returns the absolute width of rendered text
---@param textnode textnodeObj
---@return number
function ncine.textnode.get_abswidth(textnode) end

---Returns the absolute height of rendered text
---@param textnode textnodeObj
---@return number
function ncine.textnode.get_absheight(textnode) end

---Returns the font object used by the textnode
---@param textnode textnodeObj
---@return fontObj
function ncine.textnode.get_font(textnode) end

---Sets the font object to be used by the textnode
---@param textnode textnodeObj
---@param font fontObj
function ncine.textnode.set_font(textnode, font) end

---Returns the render mode used to render this text node
---@param textnode textnodeObj
---@return ncine.font_render_mode
function ncine.textnode.get_render_mode(textnode) end

---Sets the render mode used to render this text node, overriding the font one
---@param textnode textnodeObj
---@param font_render_mode ncine.font_render_mode
function ncine.textnode.set_render_mode(textnode, font_render_mode) end

---Returns `true` if kerning is enabled for this node rendering
---@param textnode textnodeObj
---@return boolean
function ncine.textnode.get_kerning(textnode) end

---Sets the kerning flag for this node rendering
---@param textnode textnodeObj
---@param with_kerning boolean
function ncine.textnode.set_kerning(textnode, with_kerning) end

---Returns the horizontal text alignment of multiple lines
---@param textnode textnodeObj
---@return ncine.text_alignment
function ncine.textnode.get_alignment(textnode) end

---Sets the horizontal text alignment of multiple lines
---@param textnode textnodeObj
---@param text_alignment ncine.text_alignment
function ncine.textnode.set_alignment(textnode, text_alignment) end

---Returns the text node line height
---@param textnode textnodeObj
---@return number
function ncine.textnode.get_lineheight(textnode) end

---Returns the text node line height multiplied by the absolute vertical scale factor
---@param textnode textnodeObj
---@return number
function ncine.textnode.get_abslineheight(textnode) end

---Sets the text node line height
---@param textnode textnodeObj
---@param line_height number
function ncine.textnode.set_lineheight(textnode, line_height) end

---Returns the string to render
---@param textnode textnodeObj
---@return string
function ncine.textnode.get_string(textnode) end

---Sets the string to render
---@param textnode textnodeObj
---@param string string
function ncine.textnode.set_string(textnode, string) end

---Calculates the rectangle boundaries needed to render the provided string with the specified font
---@param font fontObj
---@param with_kerning boolean
---@param string string
---@return ncine.vec2
function ncine.textnode.calculate_boundaries(font, with_kerning, string) end
