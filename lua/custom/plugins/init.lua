-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {

  { 'phelipetls/vim-hugo' },
  { 'github/copilot.vim' },
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('nvim-tree').setup {}
    end,
  },

  -- Themes: --
  -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    lazy = false,
    priority = 1000,
    config = function()
      require('rose-pine').setup {
        --        dark_variant = 'dawn', -- main, moon, or dawn
      }
      --      vim.cmd.colorscheme 'rose-pine-main'
    end,
  },
  {
    'olimorris/onedarkpro.nvim',
    version = false,
    lazy = false,
    priority = 1001, -- make sure to load this before all the other start plugins
    -- Optional; default configuration will be used if setup isn't called.
    config = function()
      require('onedarkpro').setup {
        -- Your config here
        --
      }

      vim.cmd.colorscheme 'onedark'
    end,
  },
  { 'Mofiqul/dracula.nvim', priority = 1011 },
}
