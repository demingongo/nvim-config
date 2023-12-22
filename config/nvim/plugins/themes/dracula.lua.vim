source $HOME/.config/nvim/plugins/themes/lualine/dracula.lua.vim

lua <<EOF

local dracula = require("dracula")
dracula.setup({
  -- customize dracula color palette
  colors = {
    bg = "#232136",
    fg = "#e0def4",
    selection = "#44475A",
    comment = "#6272A4",
    red = "#f08080",
    orange = "#f6c177",
    yellow = "#f7ef81",
    green = "#b4ebca",
    purple = "#c4a7e7",
    cyan = "#3e8fb0",
    pink = "#eb6f92",
    bright_red = "#f08080",
    bright_green = "#d3fac7",
    bright_yellow = "#fcf6bd",
    bright_blue = "#D6ACFF",
    bright_magenta = "#ebbcba",
    bright_cyan = "#9ccfd8",
    bright_white = "#f8f8f2",
    menu = "#21222C",
    visual = "#3E4452",
    gutter_fg = "#4B5263",
    nontext = "#3B4048",
    white = "#ABB2BF",
    black = "#393552",
  },
  -- show the '~' characters after the end of buffers
  show_end_of_buffer = true, -- default false
  -- use transparent background
  transparent_bg = true, -- default false
  -- set custom lualine background color
  lualine_bg_color = "#44475a", -- default nil
  -- set italic comment
  italic_comment = true, -- default false
  -- overrides the default highlights with table see `:h synIDattr`
  overrides = {},
  -- You can use overrides as table like this
  -- overrides = {
  --   NonText = { fg = "white" }, -- set NonText fg to white
  --   NvimTreeIndentMarker = { link = "NonText" }, -- link to NonText highlight
  --   Nothing = {} -- clear highlight of Nothing
  -- },
  -- Or you can also use it like a function to get color from theme
  -- overrides = function (colors)
  --   return {
  --     NonText = { fg = colors.white }, -- set NonText fg to white of theme
  --   }
  -- end,
})

vim.cmd[[colorscheme dracula-soft]]

EOF
