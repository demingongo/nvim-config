source $HOME/.config/nvim/plugins/themes/feline/noirbuddy-yellow.lua.vim

lua <<EOF

require("noirbuddy").setup {
  colors = {
    primary = '#997d00',
    secondary = '#777777',
    background = '#000000',

    noir_0 = '#cf162b', -- `noir_0` is light for dark themes, and dark for light themes
    noir_1 = '#ffd633',
    noir_2 = '#ffcc00',
    noir_3 = '#e6b800',
    noir_4 = '#cca300',
    noir_5 = '#b38f00',
    noir_6 = '#997d00',
    noir_7 = '#806600',
    noir_8 = '#665200',
    noir_9 = '#4d3d00', -- `noir_9` is dark for dark themes, and light for light themes
  },
}

EOF
