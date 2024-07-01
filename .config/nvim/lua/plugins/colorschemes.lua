return {
  'sainnhe/sonokai',
  dependencies = {
    'rebelot/kanagawa.nvim',
    'rose-pine/neovim',
    'catppuccin/nvim',
    'ellisonleao/gruvbox.nvim',
    'markvincze/panda-vim',
  },
  priority = 1000,
  init = function()
    vim.g.sonokai_better_performance = true
    vim.g.sonokai_enable_italic = true
    vim.cmd.colorscheme 'sonokai'
  end,
}
