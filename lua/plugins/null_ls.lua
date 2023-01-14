return {
  "jose-elias-alvarez/null-ls.nvim",
  event = "BufReadPre",
  dependencies = { "mason.nvim" },
  config = function()
    require("null-ls").setup({
      sources = {
        require("null-ls").builtins.formatting.shfmt, -- shell script formatting
        require("null-ls").builtins.formatting.prettier, -- markdown formatting
        require("null-ls").builtins.diagnostics.shellcheck, -- shell script diagnostics
        require("null-ls").builtins.code_actions.shellcheck, -- shell script code actions
      },
    })
    local opts = { noremap = true, silent = true }
    vim.api.nvim_set_keymap("n", "<leader>f", "<cmd> lua vim.lsp.buf.format() <cr>", opts)
  end
}
