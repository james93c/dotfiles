return {
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  'charlespascoe/vim-go-syntax',
  'dart-lang/dart-vim-plugin',
  'norcalli/nvim-colorizer.lua',
  'windwp/nvim-ts-autotag',

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  -- Highlight todo, notes, etc in comments
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
}
