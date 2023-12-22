lua <<EOF

if not vim.lualine_theme then
  -- Required: set termguicolors to enable highlight groups
  vim.opt.termguicolors = true

  require('feline').setup({
    theme = vim.feline_theme,
    vi_mode_colors = vim.feline_vi_mode_colors,
    components = vim.feline_components
  })

end

EOF
