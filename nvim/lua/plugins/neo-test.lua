return {
  {
    'nvim-neotest/neotest',
    dependencies = {
      {
        'Issafalcon/neotest-dotnet',
      },
    },
  },
  {
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-neotest/nvim-nio',
      'nvim-lua/plenary.nvim',
      'antoinemadec/FixCursorHold.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
    config = function()
      require('neotest').setup {
        adapters = {
          require 'neotest-dotnet',
        },
      }

      -- Run the nearest test
      vim.api.nvim_set_keymap('n', '<Leader>tn', ':lua require("neotest").run.run()<CR>', { noremap = true, silent = true })

      -- Run the current file
      vim.api.nvim_set_keymap('n', '<Leader>tf', ':lua require("neotest").run.run(vim.fn.expand("%"))<CR>', { noremap = true, silent = true })

      -- Debug the nearest test
      vim.api.nvim_set_keymap('n', '<Leader>td', ':lua require("neotest").run.run({strategy = "dap"})<CR>', { noremap = true, silent = true })

      -- Stop the nearest test
      vim.api.nvim_set_keymap('n', '<Leader>ts', ':lua require("neotest").run.stop()<CR>', { noremap = true, silent = true })

      -- Attach to the nearest test
      vim.api.nvim_set_keymap('n', '<Leader>ta', ':lua require("neotest").run.attach()<CR>', { noremap = true, silent = true })
    end,
  },
}
