vim.pack.add({ "https://github.com/mfussenegger/nvim-dap",
                "https://github.com/nvim-neotest/nvim-nio",
                "https://github.com/rcarriga/nvim-dap-ui",
            })
local dap = require("dap")
local dapui = require("dapui")
dapui.setup()

-- gdb
dap.adapters.gdb = {
    type = "executable",
    command = "gdb",
    args = {
        "--interpreter=dap",
        "--eval-command",
        "set print pretty on",
    },
}

local gdb_config = {
    name = "Launch exe",
    type = "gdb",
    request = "launch",

    program = function()
        return vim.fn.input(
            "Path to exe: ",
            vim.fn.getcwd() .. "/",
            "file"
        )
    end,

    cwd = "${workspaceFolder}",
    stopAtBeginningOfMainSubprogram = false,
}

dap.configurations.c = { gdb_config }
dap.configurations.cpp = { gdb_config }

vim.keymap.set("n", "<F5>", dap.continue, {
    desc = "Debug: Start/Continue",
})

vim.keymap.set("n", "<F10>", dap.step_over, {
    desc = "Debug: Step over",
})

vim.keymap.set("n", "<F11>", dap.step_into, {
    desc = "Debug: Step into",
})

vim.keymap.set("n", "<F12>", dap.step_out, {
    desc = "Debug: Step out",
})

vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, {
    desc = "Debug: Toggle breakpoint",
})

vim.keymap.set("n", "<leader>dB", function()
    dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
end, {
    desc = "Debug: Conditional breakpoint",
})

vim.keymap.set("n", "<leader>dr", dap.repl.open, {
    desc = "Debug: Open REPL",
})

vim.keymap.set("n", "<leader>dt", dap.terminate, {
    desc = "Debug: Terminate",
})

-- ui

dap.listeners.before.attach.dapui_config = function()
    dapui.open()
end

dap.listeners.before.launch.dapui_config = function()
    dapui.open()
end

dap.listeners.before.event_terminated.dapui_config = function()
    dapui.close()
end

dap.listeners.before.event_exited.dapui_config = function()
    dapui.close()
end

vim.keymap.set("n", "<leader>du", dapui.toggle, {
    desc = "Debug: Toggle UI",
})
vim.keymap.set({ "n", "v" }, "<leader>de", dapui.eval, {
    desc = "Debug: Evaluate",
})
