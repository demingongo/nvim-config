source $HOME/.config/nvim/plugins/themes/feline/noirbuddy-red.lua.vim

lua <<EOF

require("noirbuddy").setup {
  colors = {
    primary = '#931523',
    secondary = '#B21627',
    background = '#000000',

    noir_0 = '#E8838F', -- `noir_0` is light for dark themes, and dark for light themes
    noir_1 = '#a25b64',
    noir_2 = '#D01B2C',
    noir_3 = '#cf162b',
    noir_4 = '#E8838F',
    noir_5 = '#b21627',
    noir_6 = '#a6121e',
    noir_7 = '#931523',
    noir_8 = '#323232',
    noir_9 = '#212121', -- `noir_9` is dark for dark themes, and light for light themes
  },
}

EOF
