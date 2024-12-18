---The table containing textnode related functions.
---
---Inherits from @{ncine.drawable_node}.
---@module ncine.textnode

------The light user data of a textnode object.
---
---Inherits from @{ncine.drawable_node.drawablenodeObj}.
---@table textnodeObj

---Text alignments (enumeration)
ncine.text_alignment = {
	LEFT = 0,
	CENTER = 1,
	RIGHT = 3,
}

---Constructs a textnode object with a parent scene node, a font, and a maximum text string length.
---
---Don't forget to call @{delete} when you are done with it!
---@tparam ncine.scenenode.scenenodeObj|nil parent The parent scenenode
---@tparam  ncine.font.fontObj|nil font The font object
---@tparam integer max_string_length The maximum length for the text
---@treturn textnodeObj A new textnode object
function ncine.textnode.new(parent, font, max_string_length) end

---Constructs a new textnode object as a clone of the specified one.
---
---Don't forget to call @{delete} when you are done with it!
---@tparam textnodeObj textnode The textnode object to be cloned
---@treturn textnodeObj The cloned textnode object
function ncine.textnode.clone(textnode) end

---Destroys a textnode object and releases its memory
---@tparam textnodeObj textnode The textnode object to be destroyed
function ncine.textnode.delete(textnode) end

---Returns the width of rendered text
---@tparam textnodeObj textnode
---@treturn number
function ncine.textnode.get_width(textnode) end

---Returns the height of rendered text
---@tparam textnodeObj textnode
---@treturn number
function ncine.textnode.get_height(textnode) end

---Returns the absolute width of rendered text
---@tparam textnodeObj textnode
---@treturn number
function ncine.textnode.get_abswidth(textnode) end

---Returns the absolute height of rendered text
---@tparam textnodeObj textnode
---@treturn number
function ncine.textnode.get_absheight(textnode) end

---Returns the font object used by the textnode
---@tparam textnodeObj textnode
---@treturn fontObj
function ncine.textnode.get_font(textnode) end

---Sets the font object to be used by the textnode
---@tparam textnodeObj textnode
---@tparam scene.font.fontObj font
function ncine.textnode.set_font(textnode, font) end

---Returns the render mode used to render this text node
---@tparam textnodeObj textnode
---@treturn ncine.font_render_mode
function ncine.textnode.get_render_mode(textnode) end

---Sets the render mode used to render this text node, overriding the font one
---@tparam textnodeObj textnode
---@tparam ncine.font_render_mode font_render_mode
function ncine.textnode.set_render_mode(textnode, font_render_mode) end

---Returns `true` if kerning is enabled for this node rendering
---@tparam textnodeObj textnode
---@treturn boolean
function ncine.textnode.get_kerning(textnode) end

---Sets the kerning flag for this node rendering
---@tparam textnodeObj textnode
---@tparam boolean with_kerning
function ncine.textnode.set_kerning(textnode, with_kerning) end

---Returns the horizontal text alignment of multiple lines
---@tparam textnodeObj textnode
---@treturn ncine.text_alignment
function ncine.textnode.get_alignment(textnode) end

---Sets the horizontal text alignment of multiple lines
---@tparam textnodeObj textnode
---@tparam ncine.text_alignment text_alignment
function ncine.textnode.set_alignment(textnode, text_alignment) end

---Returns the text node line height
---@tparam textnodeObj textnode
---@treturn number
function ncine.textnode.get_lineheight(textnode) end

---Returns the text node line height multiplied by the absolute vertical scale factor
---@tparam textnodeObj textnode
---@treturn number
function ncine.textnode.get_abslineheight(textnode) end

---Sets the text node line height
---@tparam textnodeObj textnode
---@tparam number line_height
function ncine.textnode.set_lineheight(textnode, line_height) end

---Returns the string to render
---@tparam textnodeObj textnode
---@treturn string
function ncine.textnode.get_string(textnode) end

---Sets the string to render
---@tparam textnodeObj textnode
---@tparam string string
function ncine.textnode.set_string(textnode, string) end

---Calculates the rectangle boundaries needed to render the provided string with the specified font
---@tparam ncine.font.fontObj font
---@tparam boolean with_kerning
---@tparam string string
---@treturn ncine.vec2
function ncine.textnode.calculate_boundaries(font, with_kerning, string) end
