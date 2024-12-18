---The table containing color related functions
---@module ncine.color

---Black color values
ncine.colors.BLACK = {r = 0.0, g = 0.0, b = 0.0, a = 1.0 }
---White color values
ncine.colors.WHITE = { r = 1.0, g = 1.0, b = 1.0, a = 1.0 }
---Red color values
ncine.colors.RED = { r = 1.0, g = 0.0, b = 0.0, a = 1.0 }
---Green color values
ncine.colors.GREEN = { r = 0.0, g = 1.0, b = 0.0, a = 1.0 }
---Blue color values
ncine.colors.BLUE = { r = 0.0, g = 0.0, b = 1.0, a = 1.0 }
---Yellow color values
ncine.colors.YELLOW = { r = 1.0, g = 1.0, b = 0.0, a = 1.0 }
---Magenta color values
ncine.colors.MAGENTA = { r = 1.0, g = 0.0, b = 1.0, a = 1.0 }
---Cyan color values
ncine.colors.CYAN = { r = 0.0, g = 1.0, b = 1.0, a = 1.0 }

---A RGBA color
---@number r The red component
---@number g The green component
---@number b The blue component
---@number a The alpha component
---@table ncine.color

---Creates a color table from its components
---@tparam number r The red component
---@tparam number g The green component
---@tparam number b The blue component
---@tparam number a The alpha component
---@treturn ncine.color
function ncine.color.create(r, g, b, a) end

---Adds two colors together, component-wise, clamping to 1.0
---@tparam ncine.color color0
---@tparam ncine.color color1
---@treturn ncine.color
function ncine.color.add(color0, color1) end

---Subtracts the second color from the first one, component-wise, clamping to 0.0
---@tparam ncine.color color0
---@tparam ncine.color color1
---@treturn ncine.color
function ncine.color.sub(color0, color1) end

---Multiplies two colors together, component-wise, clamping to 1.0
---@tparam ncine.color color0
---@tparam ncine.color color1
---@treturn ncine.color
function ncine.color.mul(color0, color1) end

---Multiplies the color components by the scalar, clamping to 1.0
---@tparam ncine.color color0
---@tparam number scalar
---@treturn ncine.color
function ncine.color.mul(color0, scalar) end
