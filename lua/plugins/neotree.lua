return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      mappings = {
        -- jump to parent node
        ["P"] = function(state)
          local node = state.tree:get_node()
          require("neo-tree.ui.renderer").focus_node(state, node:get_parent_id())
        end,
      },
    },
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
