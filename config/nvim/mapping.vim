lua <<EOF

vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton game_of_life<CR>")
vim.keymap.set("n", "<leader>lmf", "<cmd>CellularAutomaton make_it_rain<CR>")
vim.keymap.set("n", "<leader>flm", "<cmd>CellularAutomaton slide<CR>")
vim.keymap.set("n", "<leader>mlf", "<cmd>CellularAutomaton scramble<CR>")

EOF
