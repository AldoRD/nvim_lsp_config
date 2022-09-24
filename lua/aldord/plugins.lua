local status, packer = pcall(require, "packer")

if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  -- Plugins got here ->
  use 'wbthomason/packer.nvim'

  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

 -- Autocomplete
  use({
    "hrsh7th/nvim-cmp",
    requires = {
      "hrsh7th/cmp-cmdline", -- command line
      "hrsh7th/cmp-buffer", -- buffer completions
      "hrsh7th/cmp-nvim-lua", -- nvim config completions
      "hrsh7th/cmp-nvim-lsp", -- lsp completions
      "hrsh7th/cmp-path", -- file path completions
      "saadparwaiz1/cmp_luasnip", -- snippets completions
    },
  })

  -- Highlight syntax
   use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  -- Snippets
  use({
    "L3MON4D3/LuaSnip",
    requires = {
      "rafamadriz/friendly-snippets",
    },
    run = "make install_jsregexp"
  })

  -- Formatter
  use "mhartington/formatter.nvim"

  -- Icons in completion
  use 'onsails/lspkind-nvim'
  use 'glepnir/lspsaga.nvim'

  -- Telescope
  use({
    "nvim-telescope/telescope.nvim",
    requires = { { "nvim-lua/popup.nvim" }, { "nvim-lua/plenary.nvim" } },
  })
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- Highlight
  use 'norcalli/nvim-colorizer.lua'

  -- Configurations for Nvim LSP
  use 'neovim/nvim-lspconfig'

  -- commenting
  use "JoosepAlviste/nvim-ts-context-commentstring"
  use "numToStr/Comment.nvim"

  -- Utilities
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'windwp/nvim-spectre' -- Spectre for find and replace

  use({
    "phaazon/hop.nvim",
    branch = 'v2', -- optional but strongly recommended
  })

  use "leafOfTree/vim-matchtag"

  use {'mg979/vim-visual-multi', branch = 'master'}
  use 'mattn/emmet-vim'

  -- tpope
  use "tpope/vim-fugitive"
  use "tpope/vim-surround"

  -- Status line
  use 'nvim-lualine/lualine.nvim'
  use 'akinsho/nvim-bufferline.lua'
  use 'kyazdani42/nvim-web-devicons'

  -- Colosheme
  use 'folke/tokyonight.nvim'
  use "EdenEast/nightfox.nvim"

  -- Git
 -- use {
 --   'lewis6991/gitsigns.nvim',
 --   tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
 -- }

end)
