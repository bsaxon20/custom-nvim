-- Maps leader key to space
vim.g.mapleader = " "

-- space pv takes me to Netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- in visual mode J moves highlighted text down
-- K move highlighted text up
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Appends the line below to current line
vim.keymap.set("n", "J", "mzJ`z")

--Control D will jump down the page and centre cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz")
--Control U will jump up the page and centre cursor
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dp")
-- Copies highlighted text to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Maps it so I get double brackets and quotes, in insert mode then moves the cursor once space left so I am within them
vim.keymap.set("i", '"', '""<left>')
vim.keymap.set("i", "'", "''<left>")
vim.keymap.set("i", "[", '[]<left>')
vim.keymap.set("i", '{', '{}<left>')

