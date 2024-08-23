return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        -- Set default fixer for languages.
        php = { "php_cs_fixer" },
      },
    },
  },
}
