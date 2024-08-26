vim.keymap.set("n", "[<space>", "O<Esc>", { desc = "Insert blank row before", remap = true })
vim.keymap.set("n", "]<space>", "o<Esc>", { desc = "Insert blank row after", remap = true })

vim.keymap.set("n", "[e", "ddkkp", { desc = "Move line down", remap = true })
vim.keymap.set("n", "]e", "ddp", { desc = "Move line up", remap = true })

vim.api.nvim_set_keymap(
  "x",
  "y",
  "ygv<Esc>",
  { desc = "Cursor stay at the end of yank", noremap = true, silent = true }
)
