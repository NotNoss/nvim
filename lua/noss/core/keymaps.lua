vim.g.mapleader = " "

local map = vim.keymap.set

-- General
map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })
map("i", "<C-h>", "<Left>", { desc = "move left" })
map("i", "<C-l>", "<Right>", { desc = "move right" })
map("i", "<C-j>", "<Down>", { desc = "move down" })
map("i", "<C-k>", "<Up>", { desc = "move up" })

map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })

map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })

map("n", "<C-s>", "<cmd>w<CR>", { desc = "file save" })
map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "file copy whole" })
map("v", "<C-c>", "\"+y", { desc = "copy selection to clipboard" })
map("n", "<C-v>", "\"+p", { desc = "paste from clipboard" })

-- Comment
map("n", "<C-/>", "gcc", { desc = "comment toggle", remap = true })
map("v", "<C-/>", "gc", { desc = "comment toggle", remap = true })

-- Buffers
map("n", "<tab>", "<cmd>bnext<CR>", { desc = "buffer next" })
map("n", "<S-tab>", "<cmd>bprev<CR>", { desc = "buffer previous" })
map("n", "<S-q>", "<cmd>bdelete!<CR>", { desc = "close buffer" })

-- Nvim Tree
map("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "toggle file explorer" })
map("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "toggle file explorer on current file" })
map("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "collapse file explorer" })
map("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "refresh file explorer" })
