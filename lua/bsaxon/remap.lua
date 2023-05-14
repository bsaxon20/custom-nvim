-- Maps leader key to space
vim.g.mapleader = " "

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
vim.keymap.set("i", '(', '()<left>')

-- Creates a keymap to make my Vim Fugitve open vertically on the right
vim.keymap.set("n", "<leader>g", ":vertical rightbelow Git<CR>")
vim.keymap.set("n", "<leader>G", ":Gvdiffsplit!<CR>")


-- Change my windows/split commands in Neovim
vim.keymap.set("n", "<C-left>", "<C-w>h")
vim.keymap.set("n", "<C-down>", "<C-w>j")
vim.keymap.set("n", "<C-up>", "<C-w>k")
vim.keymap.set("n", "<C-right>", "<C-w>l")

-- Create new splits in Neovim
vim.keymap.set("n", "<C-n>", "<C-w>v")
vim.keymap.set("n", "<C-s>", "<C-w>s")

-- Closes a split in Neovim
vim.keymap.set("n", "<C-q>", vim.cmd.q)


vim.keymap.set('n', '<leader>pv', ':NvimTreeToggle<CR>')

--Debugging
    vim.keymap.set("n", "<F5>", ":lua require('dap').continue()<CR>") 
    vim.keymap.set("n", "<F10>",  ":lua require('dap').step_over()<CR>")
    vim.keymap.set('n', '<F11>',  ":lua require('dap').step_into()<CR>")
    vim.keymap.set('n', '<F12>', ":lua require('dap').step_out()<CR>")
    vim.keymap.set('n', '<Leader>b', ":lua require('dap').toggle_breakpoint()<CR>")  
    vim.keymap.set('n', '<Leader>B',  ":lua require('dap').set_breakpoint()<CR>") 
    vim.keymap.set('n', '<Leader>lp',  ":lua require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>") 
    vim.keymap.set('n', '<Leader>dr',  ":lua require('dap').repl.open()<CR>") 
    vim.keymap.set('n', '<Leader>dl',  ":lua require('dap').run_last()<CR>") 
