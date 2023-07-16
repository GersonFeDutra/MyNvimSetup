local dap = require('dap')
dap.configurations.cpp = {
    {
        name = "CPP: Launch file",
        type = "cppdbg",
        request = "launch",
        program = function()
            local cwd = vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
            print(cwd)
            return cwd
        end,
        cwd = '${workspaceFolder}',
        --stopAtEntry = true,
    },
    {
        name = 'CPP: Attach to gdbserver :1234',
        type = 'cppdbg',
        request = 'launch',
        MIMode = 'gdb',
        miDebuggerServerAddress = 'localhost:1234',
        miDebuggerPath = '/usr/bin/gdb',
        cwd = '${workspaceFolder}',
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
    },
}
dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp
