local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- set indentation for languages
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("shiftWidth"),
  pattern = {
    "php",
    "yaml",
    -- "json",
  },
  callback = function()
    vim.opt.shiftwidth = 4
    vim.opt.tabstop = 4 -- A TAB character looks like 4 spaces
    vim.opt.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
    vim.opt.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
    vim.opt.shiftwidth = 4 -- Number of spaces inserted when indenting
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  group = augroup("shiftWidth2"),
  pattern = {
    "js",
    "ts",
    "yml",
    "sh",
  },
  callback = function()
    vim.opt.shiftwidth = 2
    vim.opt.tabstop = 2 -- A TAB character looks like 2 spaces
    vim.opt.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
    vim.opt.softtabstop = 2 -- Number of spaces inserted instead of a TAB character
    vim.opt.shiftwidth = 2 -- Number of spaces inserted when indenting
  end,
})

-- disable autoformat for languages
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = {
    "php",
    "yaml",
    "yml",
    "json",
    "ts",
    "js",
  },
  callback = function()
    vim.b.autoformat = false
  end,
})

-- disable diagnostics for vendor files
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  pattern = {
    -- vendor folder
    "**/node_modules/**",
    "node_modules",
    "/node_modules/*",
    -- vendor folder
    "**/vendor/**",
    "vendor",
    "/vendor/*",
    ".env*",
  },
  callback = function()
    vim.diagnostic.enable(false, { bufnr = 0 })
  end,
})

-- enable cursor crosshair highlight in normal mode
vim.api.nvim_create_autocmd("InsertLeave", {
  callback = function()
    vim.opt.cursorline = true
    vim.opt.cursorcolumn = true
  end,
})

-- disable cursor crosshair highlight in insert mode
vim.api.nvim_create_autocmd("InsertEnter", {
  callback = function()
    vim.opt.cursorline = false
    vim.opt.cursorcolumn = false
  end,
})

-- disable selection highlight after yank
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({ timeout = 0 })
  end,
})

-- sort imports
vim.api.nvim_create_user_command("OR", "call PhpSortUse()", {})

-- srcery colorscheme highlight
vim.api.nvim_set_hl(0, "Cursor", { fg = "NONE", bg = "NONE", ctermfg = "NONE", ctermbg = "NONE" })
vim.api.nvim_set_hl(0, "Search", { ctermfg = 0, ctermbg = 3, fg = "#282828", bg = "#fabd2f" })
vim.api.nvim_set_hl(0, "IncSearch", { ctermfg = 0, ctermbg = 3, fg = "#282828", bg = "#fabd2f" })
vim.api.nvim_set_hl(0, "CurSearch", { ctermfg = 0, ctermbg = 202, fg = "#282828", bg = "#fe8019" })
