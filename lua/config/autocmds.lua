local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- set indentation for languages
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("shiftWidth"),
  pattern = {
    "php",
    "yaml",
    "yml",
    "json",
  },
  callback = function()
    vim.opt.shiftwidth = 4
    vim.opt.tabstop = 4 -- A TAB character looks like 4 spaces
    vim.opt.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
    vim.opt.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
    vim.opt.shiftwidth = 4 -- Number of spaces inserted when indenting
  end,
})

-- disable autoformat for languages
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = {
    "php",
    "yaml",
    "yml",
    "json",
  },
  callback = function()
    vim.b.autoformat = false
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

vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = {
    "php",
  },
  callback = function()
    vim.b.autoformat = false
  end,
})
