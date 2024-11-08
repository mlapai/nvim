return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<C-p>",
        ":Telescope find_files find_command=rg,--ignore,--hidden,--files,--no-ignore-vcs<cr>",
        desc = "Find Plugin File",
      },
      {
        "<Space>bb",
        ":Telescope buffers<cr>",
        desc = "Find buffers",
      },
      {
        -- enable method, property, constant search within buffer
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
        file_ignore_patterns = {
          "var",
          ".idea",
        },
        -- livegrep to find hidden files, gitignored
        vimgrep_arguments = {
          "rg",
          "--hidden",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
          "--no-ignore-vcs",
        },
        mappings = {
          i = {
            ["<C-h>"] = require("telescope.actions").preview_scrolling_left,
          },
        },
      },
    },
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    keys = {
      {
        -- browse project folder structure
        "<leader>sB",
        ":Telescope file_browser path=%:p:h=%:p:h<cr>",
        desc = "Browse Files",
      },
    },
  },
}
