return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        -- show hidden files by default
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
      },
    },
  },
}
