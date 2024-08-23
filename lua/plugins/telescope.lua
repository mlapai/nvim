return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<C-p>",
        ":Telescope find_files<cr>",
        desc = "Find Plugin File",
      },
      {
        -- enable method, property search withing buffer
        "<C-t>",
        function()
          require("telescope.builtin").lsp_document_symbols()
        end,
        desc = "Find document symbols",
      },
    },
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
        -- livegrep to find hidden files
        vimgrep_arguments = {
          "rg",
          "--hidden",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
        },
      },
    },
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    keys = {
      {
        "<leader>sB",
        ":Telescope file_browser path=%:p:h=%:p:h<cr>",
        desc = "Browse Files",
      },
    },
  },
}
