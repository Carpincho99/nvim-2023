return {
  'nvim-treesitter/nvim-treesitter',
  opts = {
    ensure_installed = "all", -- one of "all" or a list of languages
    ignore_install = { "" }, -- List of parsers to ignore installing
    highlight = {
      enable = true, -- false will disable the whole extension
      -- disable = { "css" }, -- list of language that will be disabled
      additional_vim_regex_highlighting = false
    },
    autopairs = {
      enable = true,
    },
    indent = { enable = true, disable = { "python", "css" }
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<c-space>",
        node_incremental = "<c-space>",
        scope_incremental = "<c-s>",
        node_dcremental = "<c-space>",
      },
    },
    rainbow = {
      enable = true,
      -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
      extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
      max_file_lines = nil, -- Do not enable for files with more than n lines, int
    },
  }
}
