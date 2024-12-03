require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Tmux navigation
map("n", "<C-h>", "<cmd> TmuxNavigateLeft <cr>")
map("n", "<C-j>", "<cmd> TmuxNavigateDown <cr>")
map("n", "<C-k>", "<cmd> TmuxNavigateUp <cr>")
map("n", "<C-l>", "<cmd> TmuxNavigateRight <cr>")

-- Windows plugin
map("n", "<leader>z", "<cmd> WindowsMaximize<CR>")
map("n", "<leader>_", "<cmd> WindowsMaximizeVertically<CR>")
map("n", "<leader>|", "<cmd> WindowsMaximizeHorizontally<CR>")
map("n", "<leader>=", "<cmd> WindowsEqualize<CR>")

map("n", "<C-a>", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true })
map("v", "<C-a>", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true })
map("n", "<LocalLeader>a", "<cmd>CodeCompanionChat Toggle<cr>", { noremap = true, silent = true })
map("v", "<LocalLeader>a", "<cmd>CodeCompanionChat Toggle<cr>", { noremap = true, silent = true })
map("v", "ga", "<cmd>CodeCompanionChat Add<cr>", { noremap = true, silent = true })

-- Expand 'cc' into 'CodeCompanion' in the command line
vim.cmd [[cab cc CodeCompanion]]

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
