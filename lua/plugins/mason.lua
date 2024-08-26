return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "phpactor",
        "json-lsp",
        "html-lsp",
        -- "yaml-language-server",
        "bash-language-server",
        "css-lsp",
        -- javascript, typescript
        "typescript-language-server",
        "prettier",
        "eslint-lsp",
        -- docker
        "docker-compose-language-service",
        "dockerfile-language-server",
        -- go
        "goimports",
        "gomodifytags",
        "hadolint",
        "impl",
        "lua-language-server",
        "pyright",
        "stylua",
        "taplo",
        "vtsls",
        "shellcheck",
        "shfmt",
      },
    },
  },
}
