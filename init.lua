-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- srcery colorscheme highlight
vim.api.nvim_set_hl(0, "Cursor", { fg = "NONE", bg = "NONE", ctermfg = "NONE", ctermbg = "NONE" })
vim.api.nvim_set_hl(0, "Search", { ctermfg = 0, ctermbg = 3, fg = "#282828", bg = "#fabd2f" })
vim.api.nvim_set_hl(0, "IncSearch", { ctermfg = 0, ctermbg = 3, fg = "#282828", bg = "#fabd2f" })
vim.api.nvim_set_hl(0, "CurSearch", { ctermfg = 0, ctermbg = 202, fg = "#282828", bg = "#fe8019" })
vim.api.nvim_set_hl(0, "Visual", { ctermfg = 0, ctermbg = 0, fg = "#3c3836", bg = "grey" })
