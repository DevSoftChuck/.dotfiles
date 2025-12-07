require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<C-f>", "<cmd>silent !tmux neww fuzzy_finder<CR>")
map("v", "<leader>cf", "<cmd>CodeCompanion /fix<CR>", { desc = "Fix code" })
map({"v", "n"}, "<leader>cc", "<cmd>CodeCompanionChat<CR>", { desc = "Open chat" })
map({"v", "n"}, "<leader>ca", "<cmd>CodeCompanionActions<CR>", { desc = "Show actions" })
map("v", "<leader>ce", "<cmd>CodeCompanion /explain<CR>", { desc = "Explain code" })


vim.keymap.set('n', '<leader>fd', function()
  require('telescope.builtin').find_files({
    prompt_title = 'Find Files in Directory',
    find_command = { 'fd', '--type', 'f', '--strip-cwd-prefix' },
    cwd = vim.fn.input('Directory: ', vim.fn.getcwd() .. '/', 'dir'),
  })
end, { desc = 'Find files in chosen directory' })

vim.keymap.set("n", "<leader>fg", function()
  require('telescope.builtin').live_grep({
    prompt_title = "Grep in Folder",
    cwd = vim.fn.expand("%:p:h"),  -- directory of current file
    additional_args = { "--hidden", "--no-ignore" },  -- search hidden & ignored files
  })
end, { desc = "Live grep in current file's directory" })


map("n", "<F5>", function()
  require("dap").continue()
end, { desc = "Continue" })
map("n", "<F6>", function()
  require("dap").step_over()
end, { desc = "Step over" })
map("n", "<F7>", function()
  require("dap").step_into()
end, { desc = "Step into" })
map("n", "<F8>", function()
  require("dap").step_out()
end, { desc = "Step out" })
map("n", "<Leader>db", function()
  require("dap").toggle_breakpoint()
end, { desc = "Toggle breakpoint" })
map("n", "<Leader>dB", function()
  require("dap").set_breakpoint()
end, { desc = "Set breakpoint" })
map("n", "<Leader>dlp", function()
  require("dap").set_breakpoint(nil, nil, vim.fn.input "Log point message: ")
end, { desc = "Set breakpoint with message" })
map("n", "<Leader>dr", function()
  require("dap").repl.open()
end, { desc = "Replay" })
map("n", "<Leader>dl", function()
  require("dap").run_last()
end, { desc = "Run last" })
map("n", "<Leader>do", function()
  require("dapui").open()
end, { desc = "Open" })
map("n", "<Leader>dq", function()
  require("dapui").close()
end, { desc = "Close" })


