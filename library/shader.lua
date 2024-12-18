---@meta

---The light user data of a shader object
---@class shaderObj: lightuserdata

---Shader introspection states
---@enum ncine.shader_introspection
ncine.shader_introspection = {
	ENABLED = 0,
	NO_UNIFORMS_IN_BLOCKS = 1,
	DISABLED = 2,
}

---Default vertex shaders
---@enum ncine.shader_default_vertex
ncine.shader_default_vertex = {
	SPRITE = 0,
	SPRITE_NOTEXTURE = 1,
	MESHSPRITE = 2,
	MESHSPRITE_NOTEXTURE = 3,
	TEXTNODE = 4,
	BATCHED_SPRITES = 5,
	BATCHED_SPRITES_NOTEXTURE = 6,
	BATCHED_MESHSPRITES = 7,
	BATCHED_MESHSPRITES_NOTEXTURE = 8,
	BATCHED_TEXTNODES = 9,
}

---Default fragment shaders
---@enum ncine.shader_default_fragment
ncine.shader_default_fragment = {
	SPRITE = 0,
	SPRITE_GRAY = 1,
	SPRITE_NOTEXTURE = 2,
	TEXTNODE_ALPHA = 3,
	TEXTNODE_RED = 4,
}

---The table containing shader related functions
---@class ncine.shader
ncine.shader = {}

---Constructs a shader object.
---
---Don't forget to call [delete](lua://ncine.shader.delete) when you are done with it!
---@return shaderObj # A new shader object
---@nodiscard
function ncine.shader.new() end

---Destroys a shader object and releases its memory
---@param shader shaderObj # The shader object to be destroyed
function ncine.shader.delete(shader) end

---Compiles a shader program after loading shader sources from strings
---@param shader shaderObj
---@param name string # The name of the shader
---@param introspection ncine.shader_introspection
---@param vertex string # The vertex shader GLSL source code
---@param fragment string # The fragment shader GLSL source code
---@return boolean # True if the shader program has been successfully linked
function ncine.shader.load_from_memory(shader, name, introspection, vertex, fragment) end

---Compiles a shader program after loading the fragment shader source from a string.
---
---The vertex shader is a default one, in this case.
---@param shader shaderObj
---@param name string # The name of the shader
---@param introspection ncine.shader_introspection
---@param vertex ncine.shader_default_vertex # The default vertex shader
---@param fragment string # The fragment shader GLSL source code
---@return boolean # True if the shader program has been successfully linked
function ncine.shader.load_from_memory_default_vertex(shader, name, introspection, vertex, fragment) end

---Compiles a shader program after loading the vertex shader source from a string.
---
---The fragment shader is a default one, in this case.
---@param shader shaderObj
---@param name string # The name of the shader
---@param introspection ncine.shader_introspection
---@param vertex string # The vertex shader GLSL source code
---@param fragment ncine.shader_default_fragment # The default fragment shader
---@return boolean # True if the shader program has been successfully linked
function ncine.shader.load_from_memory_default_fragment(shader, name, introspection, vertex, fragment) end

---Compiles a shader program after loading shader sources from strings.
---
---In this case custom hashes can be passed to the function.
---@param shader shaderObj
---@param name string # The name of the shader
---@param introspection ncine.shader_introspection
---@param vertex string # The vertex shader GLSL source code
---@param fragment string # The fragment shader GLSL source code
---@param vertex_hash integer
---@param fragment_hash integer
---@return boolean # True if the shader program has been successfully linked
function ncine.shader.load_from_memory_with_hashes(shader, name, introspection, vertex, fragment, vertex_hash, fragment_hash) end

---Compiles a shader program after loading shader sources from files
---@param shader shaderObj
---@param name string # The name of the shader
---@param introspection ncine.shader_introspection
---@param vertex string # The vertex shader source filename
---@param fragment string # The fragment shader source filename
---@return boolean # True if the shader program has been successfully linked
function ncine.shader.load_from_file(shader, name, introspection, vertex, fragment) end

---Compiles a shader program after loading the fragment shader source from a file.
---
---In this case the vertex shader is a default one.
---@param shader shaderObj
---@param name string # The name of the shader
---@param introspection ncine.shader_introspection
---@param vertex ncine.shader_default_vertex # The default vertex shader
---@param fragment string # The fragment shader source filename
---@return boolean # True if the shader program has been successfully linked
function ncine.shader.load_from_file_default_vertex(shader, name, introspection, vertex, fragment) end

---Compiles a shader program after loading the vertex shader source from a file.
---
---In this case the fragment shader is a default one.
---@param shader shaderObj
---@param name string # The name of the shader
---@param introspection ncine.shader_introspection
---@param vertex string # The vertex shader source filename
---@param fragment ncine.shader_default_fragment # The default fragment shader
---@return boolean # True if the shader program has been successfully linked
function ncine.shader.load_from_file_default_fragment(shader, name, introspection, vertex, fragment) end

---Sets the VBO stride and pointer for the specified vertex attribute
---@param shader shaderObj
---@param attribute string # The name of the vertex attribute
---@param stride integer
---@param pointer integer
---@return boolean # True if the vertex attribute was found
function ncine.shader.set_attribute(shader, attribute, stride, pointer) end

---Returns `true` if the shader is linked and can therefore be used
---@param shader shaderObj
---@return boolean
function ncine.shader.is_linked(shader) end

---Returns the length of the information log including the null termination character
---@param shader shaderObj
---@return integer
function ncine.shader.retrieve_infolog_length(shader) end

---Retrieves the information log
---@param shader shaderObj
---@return string
function ncine.shader.retrieve_infolog(shader) end

---Returns the automatic log on errors flag
---@param shader shaderObj
---@return boolean
function ncine.shader.get_log_on_errors(shader) end

---Sets the automatic log on errors flag.
---
---If the flag is set to `true`, the shader will automatically log compilation and linking errors.
---@param shader shaderObj
---@param should_log boolean
function ncine.shader.set_log_on_errors(shader, should_log) end

---Sets the OpenGL object label for the shader program
---@param shader shaderObj
---@param label string
function ncine.shader.set_glshaderprogram_label(shader, label) end

---Registers a shader to be used for batches of render commands
---@param shader shaderObj
---@param batched_shader shaderObj
function ncine.shader.register_batched_shader(shader, batched_shader) end

---Returns `true` if the binary shader cache is enabled
---@return boolean
function ncine.shader.is_binary_cache_enabled() end

---Enables or disables the binary shader cache
---@param enable boolean
function ncine.shader.set_binary_cache_enabled(enable) end
