local status, prettier = pcall(require, "prettier")
if not status then
  return
end

prettier.setup({
  bin = "prettierd",
  filetypes = {

    "css",
    "javascript",
    "javascriptreact",

    "typescript",
    "typescriptreact",
    "json",
    "scss",
    "less",
  },
})

vim.g["prettier#autoformat"] = true
vim.g["prettier#autoformat_require_pragma"] = false
