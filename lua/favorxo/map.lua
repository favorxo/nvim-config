local keymap = vim.keymap

keymap.set("n", "x", '"_x')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Alias for :w
vim.api.nvim_create_user_command("W", ":w", {})

-- New tab
keymap.set("n", "te", ":tabedit")

-- Move lines
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("n", "J", "mzJ`z")

-- Move pages
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- Move search
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

keymap.set("x", "<leader>p", '"_dP')
