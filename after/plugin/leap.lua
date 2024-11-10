-- nvim leap keybinds
vim.keymap.set({ "n", "x", "o" }, "f", "<Plug>(leap)")
vim.keymap.set({ "n", "x", "o" }, "gf", "<Plug>(leap-from-window)")

require("leap.user").set_repeat_keys("<enter>", "<backspace>")
require("leap").opts.equivalence_classes = { " \t\r\n", "([{", ")]}", "'\"`" }
