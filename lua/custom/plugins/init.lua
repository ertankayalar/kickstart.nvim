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
  --

  {
    'Mofiqul/adwaita.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      --      vim.g.adwaita_darker = true
      vim.cmd.colorscheme 'adwaita'
    end,
  },

  {
    'savq/melange-nvim',
    lazy = false,
    priority = 1020,
    config = function()
      --      vim.cmd.colorscheme 'melange'
    end,
  },
  {
    'neanias/everforest-nvim',
    version = false,
    lazy = false,
    priority = 1040, -- make sure to load this before all the other start plugins
    -- Optional; default configuration will be used if setup isn't called.
    config = function()
      require('everforest').setup {
        -- Your config here
      }
    end,
  },
}
