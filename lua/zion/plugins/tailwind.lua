return {
  "neovim/nvim-lspconfig",
  optional = true,
  opts = {
    servers = {
      tailwindcss = {
        filetypes = { "html", "css", "javascript", "typescript", "javascriptreact", "typescriptreact" },
        init_options = { userLanguages = { rust = "html" } },
      },
    },
  },
}
