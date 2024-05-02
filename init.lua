require 'config.options'
require 'config.keymaps'
require 'config.autocmds'

vim.o.termguicolors = true
-- set termguicolors = true

require('lazy').setup {
  -- Use `opts = {}` to force a plugin to be loaded.
  --  This is equivalent to:
  --    require('Comment').setup({})

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  -- See `:help gitsigns` to understand what the configuration keys do
  { -- Adds git related signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },

  -- NOTE: Plugins can also be configured to run lua code when they are loaded.
  --
  -- This is often very useful to both group configuration, as well as handle
  -- lazy loading plugins that don't need to be loaded immediately at startup.
  --
  -- For example, in the following configuration, we use:
  --  event = 'VeryLazy'
  --
  -- which loads which-key after all the UI elements are loaded. Events can be
  -- normal autocommands events (:help autocomd-events).
  --
  -- Then, because we use the `config` key, the configuration only runs
  -- after the plugin has been loaded:
  --  config = function() ... end

  { -- Autoformat
    'stevearc/conform.nvim',
    opts = {
      notify_on_error = false,
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
      formatters_by_ft = {
        lua = { 'stylua' },
        -- Conform can also run multiple formatters sequentially
        -- python = { "isort", "black" },
        --
        -- You can use a sub-list to tell conform to run *until* a formatter
        -- is found.
        javascript = { { 'prettierd', 'prettier' } },
        c_sharp = { 'csharpier' },
      },
    },
  },

  -- Highlight todo, notes, etc in comments
  { 'folke/todo-comments.nvim', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },

  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    config = function()
      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]parenthen
      --  - yinq - [Y]ank [I]nside [N]ext [']quote
      --  - ci'  - [C]hange [I]nside [']quote
      require('mini.ai').setup { n_lines = 500 }

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require('mini.surround').setup()

      -- Simple and easy statusline.
      --  You could remove this setup call if you don't like it,
      --  and try some other statusline plugin
      -- require('mini.statusline').setup()

      -- ... and there is more!
      --  Check out: https://github.com/echasnovski/mini.nvim
    end,
  },

  --    For additional information see: :help lazy.nvim-lazy.nvim-structuring-your-plugins
  --[[   { import = 'plugins' }, ]]
  {
    { import = 'plugins.chatgippity' },
    { import = 'plugins.cmp' },
    { import = 'plugins.color-scheme' },
    { import = 'plugins.dap' },
    { import = 'plugins.fugitive' },
    { import = 'plugins.harpoon' },
    { import = 'plugins.indent-line' },
    { import = 'plugins.lsp' },
    { import = 'plugins.lua-line' },
    { import = 'plugins.neo-test' },
    { import = 'plugins.neo-tree' },
    { import = 'plugins.neogit' },
    --{ import = 'plugins.nvim-tree' },
    { import = 'plugins.scheming' },
    { import = 'plugins.telescope' },
    { import = 'plugins.toggleterm' },
    { import = 'plugins.tree-sitter' },
    { import = 'plugins.ufo' },
    { import = 'plugins.which-key' },
    { import = 'plugins.octo' },
    { import = 'plugins.lazygit' },
  },
}

function PrintAvailableColorschemes()
  local rtp = vim.api.nvim_list_runtime_paths()
  local colorscheme_paths = {}
  local unique_colorschemes = {}

  for _, path in pairs(rtp) do
    local colors_dir = path .. '/colors'
    local ok, files = pcall(vim.fn.readdir, colors_dir)
    if ok then
      for _, file in pairs(files) do
        if file:match '%.vim$' then
          local scheme = file:gsub('%.vim$', '')
          if not unique_colorschemes[scheme] then
            unique_colorschemes[scheme] = true
            table.insert(colorscheme_paths, scheme)
          end
        end
      end
    end
  end

  table.sort(colorscheme_paths)
  print 'Available colorschemes:'
  for _, scheme in ipairs(colorscheme_paths) do
    print(scheme)
  end
end

-- Call the function to print the color schemes when NeoVim starts
-- PrintAvailableColorschemes()

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
