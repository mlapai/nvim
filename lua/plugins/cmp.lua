return {
  {
    "hrsh7th/nvim-cmp",
    opts = {
      auto_brackets = {
        "python",
        "php",
        "ts",
        "js",
      },
      completion = {
        -- disable autosuggestion (manual trigger <C-space>)
        autocomplete = false,
      },
      mapping = {
        ["<C-j>"] = require("cmp").mapping.complete(),
      },
    },
  },
}
