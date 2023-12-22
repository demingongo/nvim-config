lua <<EOF

if vim.lualine_theme then
  require('lualine').setup {
    options = {
      -- ...
      theme = vim.lualine_theme
      -- ...
    }
  }
end

EOF
