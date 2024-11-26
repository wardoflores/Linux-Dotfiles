vim.g.mapleader = " "
vim.keymap.set("n", "<leader>t", vim.cmd.Ex)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "Q", "<nop>")
-- nice ty Prime will now follow tmux method for this
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- move line or visually selected block - alt+j/k 2024-06-12 ty Prime
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- move split panes to left/bottom/top/right
vim.keymap.set("n", '<A-h>', '<C-W>H')
vim.keymap.set("n", '<A-j>', '<C-W>J')
vim.keymap.set("n", '<A-k>', '<C-W>K')
vim.keymap.set("n", '<A-l>', '<C-W>L')
-- move between panes to left/bottom/top/right
vim.keymap.set("n", '<C-h>', '<C-w>h')
vim.keymap.set("n", '<C-j>', '<C-w>j')
vim.keymap.set("n", '<C-k>', '<C-w>k')
vim.keymap.set("n", '<C-l>', '<C-w>l')

-- Press i to enter insert mode, and ii to exit insert mode.
vim.keymap.set("i", 'ii', '<Esc>')
vim.keymap.set("i", 'jk', '<Esc>')
vim.keymap.set("i", 'kj', '<Esc>')

vim.keymap.set('n', '<C-j>', '<cmd>:cn<cr>')
vim.keymap.set('n', '<C-k>', '<cmd>:cp<cr>')
vim.keymap.set('n', '<C-S-j>', '<cmd>:cnf<cr>')
vim.keymap.set('n', '<C-S-k>', '<cmd>:cpf<cr>')

-- 2024-01-17 ctrl Backspace
vim.keymap.set("n", '<C-BS>', '<C-W>')

-- 2024-06-12 primeagen netrw
vim.keymap.set('n', '<C-S-k>', '<cmd>:cpf<cr>')

