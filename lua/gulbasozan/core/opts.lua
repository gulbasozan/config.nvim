local opts = {
	relativenumber = true,
	number = true,
	tabstop = 4,
	shiftwidth = 4,
	expandtab = true,
	autoindent = true,
	cursorline = true,
	termguicolors = true,
	background = "dark",
	splitright = true,
	splitbelow = true,
}

for k, v in pairs(opts) do
	vim.opt[k] = v
end
