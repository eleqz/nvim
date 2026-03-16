return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup({
      hijack_cursor = true,
      view = {
        side = "right",
        width = 30,
        signcolumn = "no",
        centralize_selection = true,

        preserve_window_proportions = true,

      },
      renderer = {
        indent_markers = { enable = true },
        highlight_opened_files = "name",
        root_folder_label = ":~",
      },
    })
  end,
}
