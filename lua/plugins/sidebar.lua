return {
    "sidebar-nvim/sidebar.nvim",
    -- add your options that should be passed to the setup() function here
    cmd = 'SideBar',
    init = function()
        require('sidebar-nvim').setup({
            disable_default_keybindings = 0,
            close_if_last_window = true,
            bindings = nil,
            open = false,
            side = "right",
            initial_width = 35,
            hide_statusline = false,
            update_interval = 1000,
            sections = { "datetime", "symbols", "git", "diagnostics", "todos" },
            section_separator = { "", "-----", "" },
            section_title_separator = { "" },
            containers = {
                attach_shell = "/bin/sh", show_all = true, interval = 5000,
            },
            datetime = { format = "%a %b %d, %H:%M", clocks = { { name = "local" } } },
            todos = { ignored_paths = { "~" } },
        })
    end,
}
