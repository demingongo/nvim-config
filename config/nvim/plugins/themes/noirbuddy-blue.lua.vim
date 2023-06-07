source $HOME/.config/nvim/plugins/themes/feline/noirbuddy-blue.lua.vim

lua <<EOF

require("noirbuddy").setup {
  colors = {
    primary = '#006dcc',
    secondary = '#777777',
    background = '#000000',

    noir_0 = '#cf162b', -- `noir_0` is light for dark themes, and dark for light themes
    noir_1 = '#b3dbff',
    noir_2 = '#66b8ff',
    noir_3 = '#33a0ff',
    noir_4 = '#0088ff',
    noir_5 = '#007ae6',
    noir_6 = '#006dcc',
    noir_7 = '#005299',
    noir_8 = '#003666',
    noir_9 = '#00294d', -- `noir_9` is dark for dark themes, and light for light themes
  },
}

EOF
