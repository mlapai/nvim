return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      document_highlight = {
        enabled = false,
      },
      servers = {
        phpactor = {},
      },
      setup = {
        phpactor = function(_, opts)
          require("lspconfig").phpactor.setup({
            server = opts,
            init_options = {
              ["language_server_php_cs_fixer.enabled"] = true,
              ["language_server_phpstan.enabled"] = true,
              ["language_server_phpstan.mem_limit"] = "1G",
            },
          })
          return true
        end,
      },
    },
  },
}
