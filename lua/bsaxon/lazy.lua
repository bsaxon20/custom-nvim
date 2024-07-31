-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

    local plugins = {

         {
            'nvim-telescope/telescope.nvim', tag = '0.1.8',
            -- or                            , branch = '0.1.x',
            dependencies = { {'nvim-lua/plenary.nvim'} }
        },
        {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
        'nvim-treesitter/playground',
        'theprimeagen/harpoon',
        'mbbill/undotree',
         {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v1.x',
            dependencies = {
                -- LSP Support
                {'neovim/nvim-lspconfig'},             -- Required
                {'williamboman/mason.nvim'},           -- Optional
                {'williamboman/mason-lspconfig.nvim'}, -- Optional

                -- Autocompletion
                {'hrsh7th/nvim-cmp'},         -- Required
                {'hrsh7th/cmp-nvim-lsp'},     -- Required
                {'hrsh7th/cmp-buffer'},       -- Optional
                {'hrsh7th/cmp-path'},         -- Optional
                {'saadparwaiz1/cmp_luasnip'}, -- Optional
                {'hrsh7th/cmp-nvim-lua'},     -- Optional

                -- Snippets
                {'L3MON4D3/LuaSnip'},             -- Required
                {'rafamadriz/friendly-snippets'}, -- Optional
            }
        },
         'machakann/vim-highlightedyank',
         'christoomey/vim-tmux-navigator',
         'tpope/vim-fugitive',
         'HiPhish/nvim-ts-rainbow2',
         'nvim-lualine/lualine.nvim',
     'nvim-treesitter/nvim-treesitter-context',
     'catppuccin/nvim',
     'prichrd/netrw.nvim',
     'folke/trouble.nvim',
     { "rose-pine/neovim", name = "rose-pine" }
}

local opts = {}

require("lazy").setup(plugins,opts)
