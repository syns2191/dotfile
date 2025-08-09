-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set -- Shorthand for setting keymaps
map("i", "jj", "<Esc>", { desc = "Exit insert mode" })
map("i", "jk", "<Esc>", { desc = "Exit insert mode" })
map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<leader>x", ":bd<CR>", { desc = "Close buffer" })
map("n", "<leader>fw", ":Telescope live_grep<CR>", { desc = "Live grep" })

local term_clear = function()
  vim.fn.feedkeys("", "n")
  local sb = vim.bo.scrollback
  vim.bo.scrollback = 1
  vim.bo.scrollback = sb
end

map("t", "<C-t>", "<C-\\><C-n>", { desc = "Switch to normal mode in terminal" })
map("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", { desc = "Toggle Git blame" })
map("t", "<C-[>", term_clear)

map("n", "<A-k>", ":m .-2<CR>==", { desc = "move line up normal mode" })
map("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { desc = "move line up insert mode" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "move line up visual mode" })

-- move line down
map("n", "<A-j>", ":m .+1<CR>==", { desc = "move line up normanl mode" })
map("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { desc = "move line down insert mode" })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "move line down visual mode" })

-- Open Neogit in a split
map("n", "<leader>gs", ":Neogit kind=split<CR>", { noremap = true, silent = true })

-- Open Neogit in a tab
map("n", "<leader>gt", ":Neogit kind=tab<CR>", { noremap = true, silent = true })

-- Quickly stage and commit
map("n", "<leader>gc", ":Neogit commit<CR>", { noremap = true, silent = true })

-- Pull changes from remote
map("n", "<leader>gp", ":Neogit pull<CR>", { noremap = true, silent = true })

-- Push changes to remote
map("n", "<leader>gP", ":Neogit push<CR>", { noremap = true, silent = true })

-- Open Diffview (requires Diffview.nvim)
map("n", "<leader>gd", ":DiffviewOpen<CR>", { noremap = true, silent = true })

-- Close Diffview
map("n", "<leader>gq", ":DiffviewClose<CR>", { noremap = true, silent = true })

-- View Git history (Diffview)
map("n", "<leader>gh", ":DiffviewFileHistory<CR>", { noremap = true, silent = true })
map("n", "<leader>gb", ":Neogit kind=split<CR>:G blame<CR>", { noremap = true, silent = true })
map("n", "<leader>gl", ":Neogit kind=split<CR>:G log<CR>", { noremap = true, silent = true })
map("n", "<leader>gr", ":Gvdiffsplit!<CR>", { noremap = true, silent = true })
map("n", "<leader>gh", ":DiffviewFileHistory %<CR>", { noremap = true, silent = true })

map("n", "<leader>gb", ":GitBlameToggle<CR>", { noremap = true, silent = true })
map("n", "gnc", "]c", { noremap = true, silent = true })

-- Jump to the previous change in Neogit
map("n", "gnp", "[c", { noremap = true, silent = true })

vim.g.VM_maps = {
  ["Find Under"] = "<A-d>", -- Start multi-cursor on the word under the cursor
  ["Add Cursor Down"] = "<A-Down>", -- Add cursor down
  ["Add Cursor Up"] = "<A-Up>", -- Add cursor up
  ["Select All"] = "<A-a>", -- Select all occurrences
  ["Remove Region"] = "<A-x>", -- Remove current region
}
map('n', '<leader>jq', ':normal! ggVGgJ<CR>:%!jq .<CR>', { noremap = true, silent = true })
