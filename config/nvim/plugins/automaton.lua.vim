lua <<EOF

require("automaton").setup({
    debug = false,
    saveall = true,
    ignore_ft = { },

    terminal = {
        position = "botright",
        size = 10,
    },

    integrations = {
        luasnip = false,
        cmp = false,
    },
    
    icons = {
        buffer = "",
        close = "",
        launch = "",
        task = "",
        workspace = "",
    },
    
    events = {
        workspacechanged = function(ws)
          -- "ws" is the current workspace object (can be nil)
        end
    }
})

EOF
