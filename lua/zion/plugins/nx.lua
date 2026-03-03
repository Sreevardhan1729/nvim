return {
  "Equilibris/nx.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
  },
  opts = {
    command = "nx", -- the command to use, defaults to `nx`
  },
  keys = {
    { "<leader>nx", "<cmd>Nx<CR>", desc = "Nx menu" },
  },
}
