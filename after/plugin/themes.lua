local status, ayu = pcall(require, "ayu")

if not status then
	return
end

ayu.setup({
	mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
	overrides = {}, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
})

local status, catp = pcall(require, "catppuccin")

if not status then
	return
end

require("catppuccin").setup()

vim.cmd([[colorscheme ayu-dark]])
