return {
  "pmizio/typescript-tools.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  opts = {
    settings = {
      -- tsserver options
      tsserver_plugins = {
        "@styled/typescript-styled-plugin",
      },
      tsserver_max_memory = "auto",
      separate_diagnostic_server = true,
      publish_diagnostic_on = "insert_leave",
      expose_as_code_action = { "fix_all", "add_missing_imports", "remove_unused", "remove_all_unused_imports" },
      code_lens = "all",
      complete_function_calls = false,
      include_completions_with_insert_text = true,
      jsx_close_tag = {
        enable = true,
        filetypes = { "javascriptreact", "typescriptreact" },
      },
    },
  },
}
