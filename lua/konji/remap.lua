vim.g.mapleader = " "
-- -- go to file explorer
vim.keymap.set("n", "<leader>dr", vim.cmd.Ex)

-- move selected lines with J and K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- indent/unindent multiple lines at once
vim.keymap.set("v", "<Tab>", ":><CR>gv")
vim.keymap.set("v", "<S-Tab>", ":<<CR>gv")

-- delete enters without moving your position with J
vim.keymap.set("n", "J", "mzJ`z")

-- ctrl+d and ctrl+u (moving up and down half a page) while keeping cursor in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- copy and cut to windows clipboard
vim.keymap.set("n", "<C-c>", "\"+y")
vim.keymap.set("v", "<C-c>", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")
vim.keymap.set("n", "<C-x>", "\"+x")
vim.keymap.set("v", "<C-x>", "\"+x")

-- paste and delete without yanking
vim.keymap.set("v", "d", "\"_d")
vim.keymap.set("v", "<leader>p", "\"_dP")

-- select all text (and keep cursor where it was)
vim.keymap.set("n", "<C-a>", "ggVG")

-- save file while in insert mode
vim.keymap.set("i", "<C-s>", "<ESC>:w<CR>a")

-- undo and redo while while in insert mode
vim.keymap.set("i", "<C-z>", "<ESC>ua")
vim.keymap.set("i", "<C-y>", "<ESC><C-r>a")

-- run python file
vim.keymap.set("n", "<leader>py", ":sp<CR><C-w>j:terminal python %<CR>i")

-- skip to end or beginning of line in normal and visual mode
vim.keymap.set("n", "L", "$")
vim.keymap.set("n", "H", "^")
vim.keymap.set("v", "L", "$h")
vim.keymap.set("v", "H", "^")

-- move to other screen when screen was split
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")

-- find and replace in whole file (" rpf") or in current line (" rpl")
vim.keymap.set("n", "<leader>rpf", ":%s//gc<left><left><left>")
vim.keymap.set("n", "<leader>rpl", ":s//gc<left><left><left>")

-- code_runner remaps
-- vim.keymap.set('n', '<leader>r', ':RunCode<CR>', { noremap = true, silent = false })
-- vim.keymap.set('n', '<leader>rf', ':RunFile<CR>', { noremap = true, silent = false })
-- vim.keymap.set('n', '<leader>rft', ':RunFile tab<CR>', { noremap = true, silent = false })
-- vim.keymap.set('n', '<leader>rp', ':RunProject<CR>', { noremap = true, silent = false })
-- vim.keymap.set('n', '<leader>rc', ':RunClose<CR>', { noremap = true, silent = false })
-- vim.keymap.set('n', '<leader>crf', ':CRFiletype<CR>', { noremap = true, silent = false })
-- vim.keymap.set('n', '<leader>crp', ':CRProjects<CR>', { noremap = true, silent = false })
