---The table containing shader related functions
---@module ncine.shader

---The light user data of a shader object
---@table shaderObj

---Shader introspection states (enumeration)
ncine.shader_introspection = {
	ENABLED = 0,
	NO_UNIFORMS_IN_BLOCKS = 1,
	DISABLED = 2,
}

---Default vertex shaders (enumeration)
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

---Default fragment shaders (enumeration)
ncine.shader_default_fragment = {
	SPRITE = 0,
	SPRITE_GRAY = 1,
	SPRITE_NOTEXTURE = 2,
	TEXTNODE_ALPHA = 3,
	TEXTNODE_RED = 4,
}

---Constructs a shader object.
---
---Don't forget to call @{delete} when you are done with it!
---@treturn shaderObj A new shader object
function ncine.shader.new() end

---Destroys a shader object and releases its memory
---@tparam shaderObj shader The shader object to be destroyed
function ncine.shader.delete(shader) end

---Compiles a shader program after loading shader sources from strings
---@tparam shaderObj shader
---@tparam string name The name of the shader
---@tparam ncine.shader_introspection introspection
---@tparam string vertex The vertex shader GLSL source code
---@tparam string fragment The fragment shader GLSL source code
---@treturn boolean True if the shader program has been successfully linked
function ncine.shader.load_from_memory(shader, name, introspection, vertex, fragment) end

---Compiles a shader program after loading the fragment shader source from a string.
---
---The vertex shader is a default one, in this case.
---@tparam shaderObj shader
---@tparam string name The name of the shader
---@tparam ncine.shader_introspection introspection
---@tparam ncine.shader_default_vertex vertex The default vertex shader
---@tparam string fragment The fragment shader GLSL source code
---@treturn boolean True if the shader program has been successfully linked
function ncine.shader.load_from_memory_default_vertex(shader, name, introspection, vertex, fragment) end

---Compiles a shader program after loading the vertex shader source from a string.
---
---The fragment shader is a default one, in this case.
---@tparam shaderObj shader
---@tparam string name The name of the shader
---@tparam ncine.shader_introspection introspection
---@tparam string vertex The vertex shader GLSL source code
---@tparam ncine.shader_default_fragment fragment The default fragment shader
---@treturn boolean True if the shader program has been successfully linked
function ncine.shader.load_from_memory_default_fragment(shader, name, introspection, vertex, fragment) end

---Compiles a shader program after loading shader sources from strings.
---
---In this case custom hashes can be passed to the function.
---@tparam shaderObj shader
---@tparam string name The name of the shader
---@tparam ncine.shader_introspection introspection
---@tparam string vertex The vertex shader GLSL source code
---@tparam string fragment The fragment shader GLSL source code
---@tparam integer vertex_hash
---@tparam integer fragment_hash
---@treturn boolean True if the shader program has been successfully linked
function ncine.shader.load_from_memory_with_hashes(shader, name, introspection, vertex, fragment, vertex_hash, fragment_hash) end

---Compiles a shader program after loading shader sources from files
---@tparam shaderObj shader
---@tparam string name The name of the shader
---@tparam ncine.shader_introspection introspection
---@tparam string vertex The vertex shader source filename
---@tparam string fragment The fragment shader source filename
---@treturn boolean True if the shader program has been successfully linked
function ncine.shader.load_from_file(shader, name, introspection, vertex, fragment) end

---Compiles a shader program after loading the fragment shader source from a file.
---
---In this case the vertex shader is a default one.
---@tparam shaderObj shader
---@tparam string name The name of the shader
---@tparam ncine.shader_introspection introspection
---@tparam ncine.shader_default_vertex vertex The default vertex shader
---@tparam string fragment The fragment shader source filename
---@treturn boolean True if the shader program has been successfully linked
function ncine.shader.load_from_file_default_vertex(shader, name, introspection, vertex, fragment) end

---Compiles a shader program after loading the vertex shader source from a file.
---
---In this case the fragment shader is a default one.
---@tparam shaderObj shader
---@tparam string name The name of the shader
---@tparam ncine.shader_introspection introspection
---@tparam string vertex The vertex shader source filename
---@tparam ncine.shader_default_fragment fragment The default fragment shader
---@treturn boolean True if the shader program has been successfully linked
function ncine.shader.load_from_file_default_fragment(shader, name, introspection, vertex, fragment) end

---Sets the VBO stride and pointer for the specified vertex attribute
---@tparam shaderObj shader
---@tparam string attribute The name of the vertex attribute
---@tparam integer stride
---@tparam integer pointer
---@treturn boolean True if the vertex attribute was found
function ncine.shader.set_attribute(shader, attribute, stride, pointer) end

---Returns `true` if the shader is linked and can therefore be used
---@tparam shaderObj shader
---@treturn boolean
function ncine.shader.is_linked(shader) end

---Returns the length of the information log including the null termination character
---@tparam shaderObj shader
---@treturn integer
function ncine.shader.retrieve_infolog_length(shader) end

---Retrieves the information log
---@tparam shaderObj shader
---@treturn string
function ncine.shader.retrieve_infolog(shader) end

---Returns the automatic log on errors flag
---@tparam shaderObj shader
---@treturn boolean
function ncine.shader.get_log_on_errors(shader) end

---Sets the automatic log on errors flag.
---
---If the flag is set to `true`, the shader will automatically log compilation and linking errors.
---@tparam shaderObj shader
---@tparam boolean should_log
function ncine.shader.set_log_on_errors(shader, should_log) end

---Sets the OpenGL object label for the shader program
---@tparam shaderObj shader
---@tparam string label
function ncine.shader.set_glshaderprogram_label(shader, label) end

---Registers a shader to be used for batches of render commands
---@tparam shaderObj shader
---@tparam shaderObj batched_shader
function ncine.shader.register_batched_shader(shader, batched_shader) end

---Returns `true` if the binary shader cache is enabled
---@treturn boolean
function ncine.shader.is_binary_cache_enabled() end

---Enables or disables the binary shader cache
---@tparam boolean enable
function ncine.shader.set_binary_cache_enabled(enable) end
