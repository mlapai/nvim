return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "phpactor",
        "phpcs",
        "php-debug-adapter",
        "json-lsp",
        "html-lsp",
        "sqlls",
        "css-lsp",
        -- bash, shell
        "bash-language-server",
        "shfmt",
        "shellcheck",
        -- javascript, typescript
        "vtsls",
        "prettier",
        "eslint-lsp",
        -- docker
        "docker-compose-language-service",
        "dockerfile-language-server",
        "hadolint",
        -- go
        "goimports",
        "gomodifytags",
        "impl",
        -- lua
        "lua-language-server",
        -- other
        "stylua",
        "pyright",
        "taplo",
      },
    },
  },
}
