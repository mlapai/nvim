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
              ["completion_worse.completor.doctrine_annotation.enabled"] = true,
              ["completion_worse.completor.imported_names.enabled"] = true,
              ["completion_worse.completor.named_parameter.enabled"] = true,
              ["completion_worse.completor.scf_class.enabled"] = true,
              ["completion_worse.completor.subscript.enabled"] = true,
              ["completion_worse.completor.declared_function.enabled"] = true,
              ["completion_worse.completor.declared_constant.enabled"] = true,
              ["completion_worse.completor.declared_class.enabled"] = true,
              ["completion_worse.completor.expression_name_search.enabled"] = true,
              ["completion_worse.completor.use.enabled"] = true,
              ["completion_worse.completor.attribute.enabled"] = true,
              ["completion_worse.completor.class_like.enabled"] = true,
              ["completion_worse.completor.type.enabled"] = true,
              ["completion_worse.completor.docblock.enabled"] = true,
              ["completion_worse.completor.constant.enabled"] = true,
              ["completion_worse.snippets"] = true,
              ["completion_worse.completor.symfony.enabled"] = true,
              ["symfony.enabled"] = true,
              -- phpstan
              ["language_server_phpstan.enabled"] = true,
              ["language_server_phpstan.mem_limit"] = "1G",
              --- disabled
              ["completion_worse.completor.constructor.enabled"] = false,
              ["completion_worse.completor.local_variable.enabled"] = false,
              ["completion_worse.completor.worse_parameter.enabled"] = false,
            },
          })
          return true
        end,
      },
    },
  },
}
