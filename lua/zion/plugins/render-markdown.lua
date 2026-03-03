return {
  "MeanderingProgrammer/render-markdown.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  ft = { "markdown" },
  config = function()
    require("render-markdown").setup({
      -- Enable rendering in all modes (normal, insert, etc.)
      render_modes = { "n", "c" },
      -- Heading configuration
      heading = {
        enabled = true,
        sign = true,
        icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
      },
      -- Code block configuration
      code = {
        enabled = true,
        sign = true,
        style = "full",
        width = "full",
        border = "thin",
      },
      -- Bullet point configuration
      bullet = {
        enabled = true,
        icons = { "●", "○", "◆", "◇" },
      },
      -- Checkbox configuration
      checkbox = {
        enabled = true,
        unchecked = { icon = "󰄱 " },
        checked = { icon = "󰱒 " },
      },
      -- Table configuration
      pipe_table = {
        enabled = true,
        style = "full",
      },
      -- Link configuration
      link = {
        enabled = true,
        image = "󰥶 ",
        hyperlink = "󰌹 ",
      },
    })

    -- Keymap to toggle render-markdown
    vim.keymap.set("n", "<leader>mr", "<cmd>RenderMarkdown toggle<cr>", { desc = "Toggle Markdown Render" })
  end,
}

