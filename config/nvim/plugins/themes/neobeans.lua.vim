lua <<EOF

local neobeans = require('neobeans')

neobeans.setup({
    nvim_tree = { contrast = true }, -- or use contrast = false to not apply contrast
    light_mode = false, -- the default is the dark theme, set to true to enable light theme
})

EOF
