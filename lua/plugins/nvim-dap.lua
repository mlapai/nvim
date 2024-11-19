return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    {
      "theHamsta/nvim-dap-virtual-text",
      opts = {},
    },
  },
  optional = true,
  opts = function()
    local dap = require("dap")
    local path = require("mason-registry").get_package("php-debug-adapter"):get_install_path()

    dap.adapters.php = {
      type = "executable",
      command = "node",
      args = { path .. "/extension/out/phpDebug.js" },
    }

    -- Configure PHP debug configuration
    dap.configurations.php = {
      -- dptcab
      {
        name = "Listen for Xdebug (Docker dptcab 19003)",
        type = "php",
        request = "launch",
        port = 19003,
        host = "127.0.0.1",
        pathMappings = {
          ["/srv/vhosts/dptcab"] = "${workspaceFolder}",
        },
      },

      -- fsd
      {
        name = "Listen for Xdebug (Docker fsd 29003)",
        type = "php",
        request = "launch",
        port = 29003,
        host = "127.0.0.1",
        pathMappings = {
          ["/srv/vhosts/dptcab"] = "${workspaceFolder}",
        },
      },

      -- Non-Docker-based configuration (local 9003)
      {
        name = "Listen for Xdebug (Local 9003)",
        type = "php",
        request = "launch",
        port = 9003,
        host = "127.0.0.1",
      },
    }
  end,
}
