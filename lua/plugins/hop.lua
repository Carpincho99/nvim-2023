return {
  'phaazon/hop.nvim',
  event = "VeryLazy",
  keys = {
    {"f", "F"}
  },
  config = function()
    require("hop").setup()
    local hop = require('hop')
    local directions = require('hop.hint').HintDirection
    vim.keymap.set('', 'f', function()
      hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
    end, { remap = true })
  end
}
