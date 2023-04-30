lua <<EOF

-- vi mode color configuration
local MODE_COLORS = {
  ['NORMAL'] = 'green',
  ['COMMAND'] = 'pink',
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

local CATPPUCCIN_LATTE = {
  fg = '#4C4F69',
  bg = '#EFF1F5',
  black = '#ACB0BE',

  rosewater = "#dc8a78",
	flamingo = "#DD7878",
	pink = "#ea76cb",
	mauve = "#8839EF",
	red = "#D20F39",
	maroon = "#E64553",
	peach = "#FE640B",
	yellow = "#df8e1d",
	green = "#40A02B",
	teal = "#179299",
	sky = "#04A5E5",
	sapphire = "#209FB5",
	blue = "#1e66f5",
	lavender = "#7287FD"
}

vim.feline_theme = CATPPUCCIN_LATTE
vim.feline_vi_mode_colors = MODE_COLORS

EOF
