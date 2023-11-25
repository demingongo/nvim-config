source $HOME/.config/nvim/plugins/themes/feline/noirbuddy-green.lua.vim

lua <<EOF

require("noirbuddy").setup {
  colors = {
    primary = '#7AA874',
    secondary = '#777777',
    background = '#282c34',

    noir_0 = '#F7C8E0', -- `noir_0` is light for dark themes, and dark for light themes
    noir_1 = '#F7C8E0',
    noir_2 = '#CCD6A6',
    noir_3 = '#CCD6A6',
    noir_4 = '#B4E4FF',
    noir_5 = '#B4E4FF',
    noir_6 = '#95BDFF',
    noir_7 = '#95BDFF',
    noir_8 = '#7AA874',
    noir_9 = '#7AA874', -- `noir_9` is dark for dark themes, and light for light themes
  },
}

EOF
