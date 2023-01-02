local status, ts = pcall(require, "nvim-treesitter.configs")
if not status then
	return
end

ts.setup({
	ensure_installed = {
		"javascript",
		"typescript",
		"tsx",
		"json",
		"yaml",
		"css",
		"html",
		"help",
		"java",
		"lua",
		"go",
		"python",
	},
	auto_install = true,
	highlight = {
		enable = true,
	},
	autotag = {
		enable = true,
	},
})

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
