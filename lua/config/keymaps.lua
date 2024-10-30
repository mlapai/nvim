vim.keymap.set("n", "[<space>", "O<Esc>", { desc = "Insert blank row before", remap = true })
vim.keymap.set("n", "]<space>", "o<Esc>", { desc = "Insert blank row after", remap = true })

vim.keymap.set("n", "[e", "ddkkp", { desc = "Move line down", remap = true })
vim.keymap.set("n", "]e", "ddp", { desc = "Move line up", remap = true })

-- unbind redudant buffer keys to bind -> jump to previous buffer
vim.keymap.del("n", "<Leader><Tab>d")
vim.keymap.del("n", "<Leader><Tab>f")
vim.keymap.del("n", "<Leader><Tab>l")
vim.keymap.del("n", "<Leader><Tab>o")
vim.keymap.del("n", "<Leader><Tab>]")
vim.keymap.del("n", "<Leader><Tab>[")
vim.keymap.del("n", "<Leader><Tab><Tab>")

vim.keymap.del("n", "<A-k>", { desc = "Unbind moving line up with <Esc>k", noremap = true })
vim.keymap.del("n", "<A-j>", { desc = "Unbind moving line down with <Esc>j", noremap = true })
vim.keymap.del("v", "<A-k>", { desc = "Unbind moving line up with <Esc>k", noremap = true })
vim.keymap.del("v", "<A-j>", { desc = "Unbind moving line down with <Esc>j", noremap = true })

vim.keymap.set("n", "<Leader><Tab>", "<cmd>b#<cr>", { desc = "Jump to previous buffer", remap = true })
vim.keymap.set("x", "y", "ygv<Esc>", { desc = "Cursor stay at the end of yank", noremap = true, silent = true })
vim.keymap.set("n", "<Bslash>h", "<cmd>call PhpDocSingle()<cr>", { desc = "Generate php doc block", remap = true })
