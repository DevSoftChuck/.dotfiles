require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<C-f>", "<cmd>silent !tmux neww fuzzy_finder<CR>")

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

-- Ollama - gen.nvim
map({ "v" }, "<Leader>oe", ":Gen Enhance_Grammar_Spelling<CR>", { desc = "Enhance_Grammar_Spelling" })
map({ "v" }, "<Leader>oa", ":Gen Ask<CR>", { desc = "Ask" })
map({ "v" }, "<Leader>os", ":Gen Summarize<CR>", { desc = "Summarize" })
map({ "v" }, "<Leader>ow", ":Gen Enhance_Wording<CR>", { desc = "Enhance_Wording" })
map({ "v" }, "<Leader>or", ":Gen Review_Code<CR>", { desc = "Review_Code" })
map({ "v" }, "<Leader>oc", ":Gen Enhance_Code<CR>", { desc = "Enhance_Code" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
