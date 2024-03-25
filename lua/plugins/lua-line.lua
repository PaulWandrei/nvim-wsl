return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  event = 'VeryLazy',
  opts = {
    options = {
      icons_enabled = false,
      theme = 'nord',
      component_separators = '|',
      section_separators = { left = '', right = '' },
      disabled_filetypes = {

        statusline = {
          'NvimTree',
          'NeogitStatus',
        },

        winbar = {
          'NvimTree',
          'NeogitStatus',
        },
      },

      ignore_focus = {
        'NvimTree',
        'NeogitStatus',
        'dap-repl',
        'dapui_watches',
        'dapui_breakpoints',
        'dapui_scopes',
        'dapui_console',
        'dapui_stacks',
      },
    },

    winbar = {
      lualine_a = { 'branch' },
      lualine_b = { 'diff', 'diagnostics' },
      lualine_c = { 'filename' },
      lualine_x = {},
      lualine_y = {},
      lualine_z = {},
    },
    inactive_winbar = {
      lualine_c = { 'filename' },
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = { 'location' },
      lualine_c = { 'progress' },
      lualine_x = {},
      lualine_y = {},
      lualine_z = {},
    },
    inactive_sections = {
      -- lualine_b = { 'filename' },
    },
  },
}
