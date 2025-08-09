-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
local opt = vim.opt
vim.lsp.set_log_level("off")

opt.relativenumber = false
vim.g.autoformat = false
vim.g.lazyvim_rust_diagnostics = "rust-analyzer"
vim.env.TAVILY_API_KEY=""
vim.env.GEMINI_API_KEY=""
vim.env.ANTHROPIC_API_KEY=""
