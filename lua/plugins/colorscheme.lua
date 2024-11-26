return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "srcery-colors/srcery-vim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "srcery",
    },
  },
}
