return {
    name = "nasm to executable",
    builder = function()
	local file = vim.fn.expand("%:p")
	local file_name = file:sub(1, file:len()-4)
	return {
	    cmd = {"ld"},
	    args = {"-m", "elf_i386", "-s", "-o", file_name, file_name..".o"},
	}
    end,
    condition = {
	filetype = {"asm"},
    },
}
