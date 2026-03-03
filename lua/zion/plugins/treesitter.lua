return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false, -- Load immediately to ensure parsers are available
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    -- Setup nvim-treesitter with install directory
    require("nvim-treesitter").setup({
      install_dir = vim.fn.stdpath("data") .. "/site",
    })

    -- Install language parsers (runs asynchronously)
    require("nvim-treesitter").install({
      "json",
      "javascript",
      "typescript",
      "tsx",
      "yaml",
      "html",
      "css",
      "markdown",
      "markdown_inline",
      "bash",
      "lua",
      "vim",
      "vimdoc",
      "c",
      "cpp",
      "python",
    })

    -- Enable treesitter highlighting for specific filetypes
    vim.api.nvim_create_autocmd("FileType", {
      pattern = {
        "html",
        "javascript",
        "typescript",
        "javascriptreact",
        "typescriptreact",
        "tsx",
        "jsx",
        "css",
        "lua",
        "python",
        "c",
        "cpp",
        "json",
        "yaml",
        "markdown",
      },
      callback = function(args)
        -- Get the language for this filetype
        local lang = vim.treesitter.language.get_lang(vim.bo[args.buf].filetype)

        -- Only start treesitter if the parser is actually installed
        if lang then
          local ok = pcall(vim.treesitter.start, args.buf, lang)
          if not ok then
            -- Parser not installed yet, silently skip
            return
          end
        end
      end,
    })
  end,
}

