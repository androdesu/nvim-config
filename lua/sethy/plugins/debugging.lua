return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "nvim-neotest/nvim-nio",
        "rcarriga/nvim-dap-ui",
        "leoluz/nvim-dap-go",
    },

    config = function()
        local dap = require("dap")
        local dapui = require("dapui")

        require("dap-go").setup()
        require("dapui").setup()

        -- Auto open/close dapui
        dap.listeners.before.attach.dapui_config = function() dapui.open() end
        dap.listeners.before.launch.dapui_config = function() dapui.open() end
        dap.listeners.before.event_terminated.dapui_config = function() dapui.close() end
        dap.listeners.before.event_exited.dapui_config = function() dapui.close() end

        -- codelldb adapter (Rust, C, C++, Zig)
        dap.adapters.codelldb = {
            type = "server",
            port = "${port}",
            executable = {
                command = vim.fn.exepath("codelldb"),
                args = { "--port", "${port}" },
            },
        }

        local codelldb_config = {
            {
                name = "Launch",
                type = "codelldb",
                request = "launch",
                program = function()
                    return vim.fn.input("Executable: ", vim.fn.getcwd() .. "/", "file")
                end,
                cwd = "${workspaceFolder}",
                stopOnEntry = false,
                args = {},
            },
        }

        dap.configurations.rust = codelldb_config
        dap.configurations.c = codelldb_config
        dap.configurations.cpp = codelldb_config
        dap.configurations.zig = codelldb_config

        -- Keymaps
        vim.keymap.set("n", "<Leader>db", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
        vim.keymap.set("n", "<Leader>dB", function()
            dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
        end, { desc = "Conditional breakpoint" })
        vim.keymap.set("n", "<Leader>dc", dap.continue, { desc = "Continue / Start" })
        vim.keymap.set("n", "<Leader>ds", dap.step_over, { desc = "Step over" })
        vim.keymap.set("n", "<Leader>di", dap.step_into, { desc = "Step into" })
        vim.keymap.set("n", "<Leader>do", dap.step_out, { desc = "Step out" })
        vim.keymap.set("n", "<Leader>dq", dap.terminate, { desc = "Terminate session" })
        vim.keymap.set("n", "<Leader>dt", dapui.toggle, { desc = "Toggle DAP UI" })
        vim.keymap.set("n", "<Leader>de", function()
            dapui.eval(nil, { enter = true })
        end, { desc = "Evaluate expression" })
    end,
}
