local npairs = require("nvim-autopairs")
-- local cond = require("nvim-autopairs.conds")
-- local Rule = require("nvim-autopairs.rule")

-- change default fast_wrap
npairs.setup({
    fast_wrap = {
      map = "<M-e>",
      chars = { "{", "[", "(", '"' },
      pattern = [=[[%'%"%>%]%)%}%,]]=],
      end_key = "$",
      before_key = "h",
      after_key = "l",
      cursor_pos_before = true,
      keys = "qwertyuiopzxcvbnmasdfghjkl",
      manual_position = true,
      highlight = "Search",
      highlight_grey="Comment"
    },
})
