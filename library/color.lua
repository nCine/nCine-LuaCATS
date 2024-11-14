---@meta

ncine.colors = {}
ncine.colors.BLACK = { r = 0.0, g = 0.0, b = 0.0, a = 1.0 }
ncine.colors.WHITE = { r = 1.0, g = 1.0, b = 1.0, a = 1.0 }
ncine.colors.RED = { r = 1.0, g = 0.0, b = 0.0, a = 1.0 }
ncine.colors.GREEN = { r = 0.0, g = 1.0, b = 0.0, a = 1.0 }
ncine.colors.BLUE = { r = 0.0, g = 0.0, b = 1.0, a = 1.0 }
ncine.colors.YELLOW = { r = 1.0, g = 1.0, b = 0.0, a = 1.0 }
ncine.colors.MAGENTA = { r = 1.0, g = 0.0, b = 1.0, a = 1.0 }
ncine.colors.CYAN = { r = 0.0, g = 1.0, b = 1.0, a = 1.0 }

---A RGBA color
---@class ncine.color
---@field r number # The red component
---@field g number # The green component
---@field b number # The blue component
---@field a number # The alpha component
ncine.color = {}

---Creates a color table from its components
---@param r number # The red component
---@param g number # The green component
---@param b number # The blue component
---@param a number # The alpha component
---@return ncine.color
function ncine.color.create(r, g, b, a) end

---Adds two colors together, component-wise, clamping to 1.0
---@param color0 ncine.color
---@param color1 ncine.color
---@return ncine.color
function ncine.color.add(color0, color1) end

---Subtracts the second color from the first one, component-wise, clamping to 0.0
---@param color0 ncine.color
---@param color1 ncine.color
---@return ncine.color
function ncine.color.sub(color0, color1) end

---Multiplies two colors together, component-wise, clamping to 1.0
---@param color0 ncine.color
---@param color1 ncine.color
---@return ncine.color
function ncine.color.mul(color0, color1) end

---Multiplies the color components by the scalar, clamping to 1.0
---@param color0 ncine.color
---@param scalar number
---@return ncine.color
function ncine.color.mul(color0, scalar) end
