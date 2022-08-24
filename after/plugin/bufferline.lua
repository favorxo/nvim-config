local status, bufferline = pcall(require, "bufferline")
if not status then
	return
end

bufferline.setup({
	options = {
		mode = "tabs",
		separator_style = "thick",
		always_show_bufferline = false,
		show_buffer_close_icons = false,
		show_close_icon = false,
		color_icons = true,
		indicator = {
			icon = "",
		},
	},
	highlights = {
		buffer_selected = {
			bold = false,
			italic = false,
		},
		numbers_selected = {
			bold = false,
			italic = false,
		},
		diagnostic_selected = {
			bold = false,
			italic = false,
		},
		hint_selected = {
			bold = false,
			italic = false,
		},
		hint_diagnostic_selected = {
			bold = false,
			italic = false,
		},
		info_selected = {
			bold = false,
			italic = false,
		},
		info_diagnostic_selected = {
			bold = false,
			italic = false,
		},
		warning_selected = {

			bold = false,
			italic = false,
		},
		warning_diagnostic_selected = {
			bold = false,
			italic = false,
		},
		error_selected = {
			bold = false,
			italic = false,
		},
		error_diagnostic_selected = {
			bold = false,
			italic = false,
		},
		duplicate_selected = {
			italic = false,
		},
		duplicate_visible = {
			italic = false,
		},
		duplicate = {
			italic = false,
		},
		pick_selected = {
			bold = false,
			italic = false,
		},
		pick_visible = {
			bold = false,
			italic = false,
		},
		pick = {
			bold = false,
			italic = false,
		},
	},
})

vim.keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>", {})
vim.keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", {})
