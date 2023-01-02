local status, ayu = pcall(require, "ayu")

if status then
	ayu.setup({
		mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
		overrides = {}, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
	})
end

local status, catp = pcall(require, "catppuccin")

if status then
	require("catppuccin").setup()
end
