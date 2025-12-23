require("config.lazy")

-- EDITOR SETTINGS --
---------------------------------------
-- Paste from clipboard (not in editor).
vim.opt.clipboard = "unnamedplus"
-- Tab indentation size.
vim.o.shiftwidth = 2
-- Tabs are implemented as spaces.
vim.o.expandtab = true
vim.wo.relativenumber = true


-- VSCODE KEYBINDING EMULATION --
---------------------------------------
-- Move Lines Down
vim.keymap.set("n", "<C-j>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("i", "<C-j>", "<Esc>:m .+1<CR>==gi", { desc = "Move line down" })
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })

-- Move Lines Up
vim.keymap.set("n", "<C-k>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("i", "<C-k>", "<Esc>:m .-2<CR>==gi", { desc = "Move line up" })
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Ctrl + l to edit all occurences.
vim.keymap.set("v", "<C-l>", "\"hy:%s/\\V<C-r>h//g<Left><Left>", { desc = "Edit all occurrences" })
