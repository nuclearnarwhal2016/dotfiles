return {
    name = "nasm build",
    builder = function()
	local file = vim.fn.expand("%:p")	
	return {
	    cmd = {"nasm"},
	    args = {"-f", "elf", file},
	}
    end,
    condition = {
	filetype = {"asm"},
    },
}
