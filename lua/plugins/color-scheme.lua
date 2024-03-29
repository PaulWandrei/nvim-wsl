return {
  {
    'catppuccin/nvim',
    lazy = true, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      --vim.cmd.colorscheme 'kanagawa-wave' --dragon, lotus, wave
      -- vim.cmd.colorscheme 'nordic'
      -- vim.cmd.colorscheme 'nord'
      -- vim.cmd.colorscheme 'everforest'
      -- vim.cmd.colorscheme 'onenord'
      -- vim.cmd.colorscheme 'nordfox' -- dawnfox, dayfox, duskfox, nightfox, nordfox, terafox, carbonfox
      -- vim.cmd.colorscheme 'OceanicNext'
      -- vim.cmd.colorscheme 'juliana'
      vim.cmd.colorscheme 'catppuccin-frappe'

      -- You can configure highlights by doing something like
      vim.cmd.hi 'Visual guibg=Blue'
    end,
  },
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`
  -- {
  --   'folke/tokyonight.nvim',
  --   lazy = true,
  -- },
  -- -- {
  -- --   'rebelot/kanagawa.nvim',
  -- --   lazy = true,
  -- -- },
  -- {
  --   'AlexvZyl/nordic.nvim',
  --   lazy = true,
  -- },
  -- {
  --   'sainnhe/everforest',
  --   lazy = true,
  -- },
  -- {
  --   'rmehri01/onenord.nvim',
  --   lazy = true,
  -- },
  -- {
  --   'edeneast/nightfox.nvim',
  --   lazy = true,
  -- },
  -- {
  --   'rmehri01/onenord.nvim',
  --   lazy = true,
  -- },
  -- { 'mhartington/oceanic-next', lazy = true },
  -- { 'sontungexpt/witch', lazy = true },
  -- { 'shaeinst/roshnivim-cs', lazy = true },
  -- { 'rafamadriz/neon', lazy = true },
  -- { 'tomasiser/vim-code-dark', lazy = true },
  -- { 'Mofiqul/vscode.nvim', lazy = true },
  -- { 'askfiy/visual_studio_code', lazy = true },
  -- { 'marko-cerovac/material.nvim', lazy = true },
  -- { 'bluz71/vim-nightfly-colors', lazy = true },
  -- { 'bluz71/vim-moonfly-colors', lazy = true },
  -- { 'ChristianChiarulli/nvcode-color-schemes.vim', lazy = true },
  -- { 'folke/tokyonight.nvim', lazy = true },
  -- { 'crispybaccoon/evergarden', lazy = true },
  -- { 'sainnhe/sonokai', lazy = true },
  -- { 'nyoom-engineering/oxocarbon.nvim', lazy = true },
  -- { 'kyazdani42/blue-moon', lazy = true },
  -- { 'mhartington/oceanic-next', lazy = true },
  -- { 'nvimdev/zephyr-nvim', lazy = true },
  -- { 'rockerBOO/boo-colorscheme-nvim', lazy = true },
  -- { 'jim-at-jibba/ariake-vim-colors', lazy = true },
  -- { 'Th3Whit3Wolf/onebuddy', lazy = true },
  -- { 'ishan9299/modus-theme-vim', lazy = true },
  -- { 'sainnhe/edge', lazy = true },
  -- { 'theniceboy/nvim-deus', lazy = true },
  -- { 'bkegley/gloombuddy', lazy = true },
  -- { 'Th3Whit3Wolf/one-nvim', lazy = true },
  -- { 'PHSix/nvim-hybrid', lazy = true },
  -- { 'Th3Whit3Wolf/space-nvim', lazy = true },
  -- { 'yonlu/omni.vim', lazy = true },
  -- { 'ray-x/aurora', lazy = true },
  -- { 'ray-x/starry.nvim', lazy = true },
  -- { 'tanvirtin/monokai.nvim', lazy = true },
  -- { 'ofirgall/ofirkai.nvim', lazy = true },
  -- { 'savq/melange-nvim', lazy = true },
  -- --{ 'RRethy/nvim-base16', lazy = true },
  -- { 'fenetikm/falcon', lazy = true },
  -- { 'andersevenrud/nordic.nvim', lazy = true },
  -- { 'AlexvZyl/nordic.nvim', lazy = true },
  -- { 'shaunsingh/nord.nvim', lazy = true },
  -- { 'Tsuzat/NeoSolarized.nvim', lazy = true },
  -- { 'svrana/neosolarized.nvim', lazy = true },
  -- { 'ishan9299/nvim-solarized-lua', lazy = true },
  -- { 'jthvai/lavender.nvim', lazy = true },
  -- { 'navarasu/onedark.nvim', lazy = true },
  -- { 'lourenci/github-colors', lazy = true },
  -- { 'sainnhe/gruvbox-material', lazy = true },
  -- { 'ellisonleao/gruvbox.nvim', lazy = true },
  -- { 'sainnhe/everforest', lazy = true },
  -- { 'neanias/everforest-nvim', lazy = true },
  -- { 'NTBBloodbath/doom-one.nvim', lazy = true },
  -- { 'dracula/vim', lazy = true },
  -- { 'Mofiqul/dracula.nvim', lazy = true },
  -- { 'yashguptaz/calvera-dark.nvim', lazy = true },
  -- { 'nxvu699134/vn-night.nvim', lazy = true },
  -- { 'adisen99/codeschool.nvim', lazy = true },
  -- { 'projekt0n/github-nvim-theme', lazy = true },
  -- { 'kdheepak/monochrome.nvim', lazy = true },
  -- { 'rose-pine/neovim', lazy = true },
  -- { 'mcchrish/zenbones.nvim', lazy = true },
  -- { 'catppuccin/nvim', lazy = true },
  -- { 'FrenzyExists/aquarium-vim', lazy = true },
  -- { 'EdenEast/nightfox.nvim', lazy = true },
  -- { 'kvrohit/substrata.nvim', lazy = true },
  -- { 'ldelossa/vimdark', lazy = true },
  -- { 'Everblush/everblush.nvim', lazy = true },
  -- { 'adisen99/apprentice.nvim', lazy = true },
  -- { 'olimorris/onedarkpro.nvim', lazy = true },
  -- { 'rmehri01/onenord.nvim', lazy = true },
  -- { 'RishabhRD/gruvy', lazy = true },
  -- { 'luisiacc/gruvbox-baby', lazy = true },
  -- { 'titanzero/zephyrium', lazy = true },
  -- { 'rebelot/kanagawa.nvim', lazy = true },
  -- { 'tiagovla/tokyodark.nvim', lazy = true },
  -- { 'cpea2506/one_monokai.nvim', lazy = true },
  -- { 'phha/zenburn.nvim', lazy = true },
  -- { 'kvrohit/rasmus.nvim', lazy = true },
  -- { 'chrsm/paramount-ng.nvim', lazy = true },
  -- { 'kaiuri/nvim-juliana', lazy = true },
  -- { 'lmburns/kimbox', lazy = true },
  -- { 'rockyzhang24/arctic.nvim', lazy = true },
  -- { 'ramojus/mellifluous.nvim', lazy = true },
  -- { 'Yazeed1s/minimal.nvim', lazy = true },
  -- { 'lewpoly/sherbet.nvim', lazy = true },
  -- { 'Mofiqul/adwaita.nvim', lazy = true },
  -- { 'olivercederborg/poimandres.nvim', lazy = true },
  -- { 'kvrohit/mellow.nvim', lazy = true },
  -- { 'gbprod/nord.nvim', lazy = true },
  -- { 'Yazeed1s/oh-lucy.nvim', lazy = true },
  -- { 'embark-theme/vim', lazy = true },
  -- { 'nyngwang/nvimgelion', lazy = true },
  -- { 'maxmx03/FluoroMachine.nvim', lazy = true },
  -- { 'dasupradyumna/midnight.nvim', lazy = true },
  -- { 'sonjiku/yawnc.nvim', lazy = true },
  -- { 'sekke276/dark_flat.nvim', lazy = true },
  -- { 'zootedb0t/citruszest.nvim', lazy = true },
  -- { '2nthony/vitesse.nvim', lazy = true },
  -- { 'xero/miasma.nvim', lazy = true },
  -- { 'Verf/deepwhite.nvim', lazy = true },
  -- { 'judaew/ronny.nvim', lazy = true },
  -- { 'ribru17/bamboo.nvim', lazy = true },
  -- { 'cryptomilk/nightcity.nvim', lazy = true },
  -- { 'polirritmico/monokai-nightasty.nvim', lazy = true },
  -- { 'oxfist/night-owl.nvim', lazy = true },
  -- { 'miikanissi/modus-themes.nvim', lazy = true },
  -- { 'alexmozaidze/palenight.nvim', lazy = true },
  -- { 'scottmckendry/cyberdream.nvim', lazy = true },
  -- { 'HoNamDuong/hybrid.nvim', lazy = true },
  -- { 'samharju/synthweave.nvim', lazy = true },
  -- { 'shaunsingh/nord.nvim', lazy = true },
}
