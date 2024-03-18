return {
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`
  {
    'folke/tokyonight.nvim',
    lazy = true,
  },
  {
    'rebelot/kanagawa.nvim',
    lazy = true,
  },
  {
    'AlexvZyl/nordic.nvim',
    lazy = true,
  },
  {
    'sainnhe/everforest',
    lazy = true,
  },
  {
    'rmehri01/onenord.nvim',
    lazy = true,
  },
  {
    'edeneast/nightfox.nvim',
    lazy = true,
  },
  {
    'rmehri01/onenord.nvim',
    lazy = true,
  },
  {
    'shaunsingh/nord.nvim',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- Load the colorscheme here

      -- vim.cmd.colorscheme 'kanagawa-dragon' --dragon, lotus, wave
      -- vim.cmd.colorscheme 'nordic'
      -- vim.cmd.colorscheme 'nord'
      -- vim.cmd.colorscheme 'everforest'
      -- vim.cmd.colorscheme 'onenord'
      vim.cmd.colorscheme 'nordfox' -- dawnfox, dayfox, duskfox, nightfox, nordfox, terafox, carbonfox
      -- You can configure highlights by doing something like
      -- vim.cmd.hi 'Comment gui=none'
    end,
  },
}
