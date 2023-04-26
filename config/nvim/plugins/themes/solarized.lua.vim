syntax enable

source $HOME/.config/nvim/plugins/themes/feline/gruvbox.lua.vim

lua <<EOF

require('solarized').set()

vim.cmd.colorscheme "solarized"

EOF
