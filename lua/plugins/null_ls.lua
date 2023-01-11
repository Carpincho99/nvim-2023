return {
    "jose-elias-alvarez/null-ls.nvim",
    event = "BufReadPre",
    dependencies = { "mason.nvim" },
  config = function ()
    local opts = { noremap = true, silent = true }
    vim.api.nvim_set_keymap("n", "<leader>f", "<cmd> lua vim.lsp.buf.format() <cr>", opts)
  end
}
