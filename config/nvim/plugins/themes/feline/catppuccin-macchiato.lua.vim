lua <<EOF

-- vi mode color configuration
local MODE_COLORS = {
  ['NORMAL'] = 'green',
  ['COMMAND'] = 'blue',
  ['INSERT'] = 'peach',
  ['REPLACE'] = 'red',
  ['LINES'] = 'mauve',
  ['VISUAL'] = 'mauve',
  ['OP'] = 'yellow',
  ['BLOCK'] = 'yellow',
  ['V-REPLACE'] = 'yellow',
  ['ENTER'] = 'yellow',
  ['MORE'] = 'yellow',
  ['SELECT'] = 'yellow',
  ['SHELL'] = 'yellow',
  ['TERM'] = 'yellow',
  ['NONE'] = 'yellow',
}

local CATPPUCCIN_MACCHIATO = {
  fg = '#CAD3F5',
  bg = '#24273A',
  black = '#3c3836',
  
  rosewater = "#F4DBD6",
  flamingo = "#F0C6C6",
  pink = "#F5BDE6",
  mauve = "#C6A0F6",
  red = "#ED8796",
  maroon = "#EE99A0",
  peach = "#F5A97F",
  yellow = "#EED49F",
  green = "#A6DA95",
  teal = "#8BD5CA",
  sky = "#91D7E3",
  sapphire = "#7DC4E4",
  blue = "#8AADF4",
  lavender = "#B7BDF8"
}

vim.feline_theme = CATPPUCCIN_MACCHIATO
vim.feline_vi_mode_colors = MODE_COLORS

EOF
