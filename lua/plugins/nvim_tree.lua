return {
  'kyazdani42/nvim-tree.lua',
  event = "VimEnter",
  keys = {
    { '<leader>e', "<cmd>NvimTreeToggle<cr>", desc = "Open tree" }
  },
  config = function()

    require('nvim-tree').setup {
      update_focused_file = {
        enable = true,
        update_cwd = true,
      },
      renderer = {
        root_folder_modifier = ":t",
        icons = {
          glyphs = {
            default = "",
            symlink = "",
            folder = {
              arrow_open = "",
              arrow_closed = "",
              default = "",
              open = "",
              empty = "",
              empty_open = "",
              symlink = "",
              symlink_open = "",
            },
            git = {
              unstaged = "",
              staged = "S",
              unmerged = "",
              renamed = "➜",
              untracked = "U",
              deleted = "",
              ignored = "◌",
            },
          },
        },
      },
      diagnostics = {
        enable = true,
        show_on_dirs = true,
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        },
      },
      actions = {
        open_file = {
          quit_on_open = true,
        },
      },
      view = {
        width = 30,
        side = "left",
        mappings = {
          list = {
            { key = { "l", "<CR>", "o" }, cb = require('nvim-tree.config').nvim_tree_callback "edit" },
            { key = "h", cb = require('nvim-tree.config').nvim_tree_callback "close_node" },
            { key = "v", cb = require('nvim-tree.config').nvim_tree_callback "vsplit" },
          },
        },
      },
    }
  end
}
