return {
  "marko-cerovac/material.nvim",
  priority = 1000,
  config = function()
    vim.o.termguicolors = true
    vim.g.material_style = "palenight"

    require("material").setup({
      contrast = {
        terminal = true,
        sidebar = true,
        floating_windows = true,
        cursor_line = true,
        non_current_windows = true,
      },
      italics = {
        comments = true,
        strings = false,
        keywords = true,
        functions = true,
        variables = false,
      },
      high_visibility = {
        lighter = false,
        darker = true,
      },
    })

    vim.cmd.colorscheme("material")
  end,
}
