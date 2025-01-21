local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('sainnhe/gruvbox-material')
Plug('vim-airline/vim-airline')
Plug('vim-airline/vim-airline-themes')
Plug('nvim-tree/nvim-tree.lua')
Plug('ryanoasis/vim-devicons')
Plug('ibhagwan/fzf-lua')
Plug('navarasu/onedark.nvim')
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('L3MON4D3/LuaSnip')
Plug('saadparwaiz1/cmp_luasnip')
Plug('williamboman/mason.nvim')
Plug('williamboman/mason-lspconfig.nvim')
Plug('neovim/nvim-lspconfig')
Plug('nvim-tree/nvim-web-devicons')
Plug('catppuccin/nvim', { ['as'] = 'catppuccin' })

vim.call('plug#end')


--- NVIM TREE ---
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.keymap.set("n", "<c-P>",
  "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })
