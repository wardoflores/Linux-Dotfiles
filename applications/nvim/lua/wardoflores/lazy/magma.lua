return {
    'dccsillag/magma-nvim',
    config = function()
        vim.keymap.set('n', '<LocalLeader>r',  '<Cmd>MagmaEvaluateOperator<CR>', { silent = true, expr = true })
        vim.keymap.set('n', '<LocalLeader>rr', '<Cmd>MagmaEvaluateLine<CR>', { silent = true })
        vim.keymap.set('n', '<LocalLeader>r',  '<C-u><Cmd>magmaEvaluateVisual<CR>', { silent = true })
        vim.keymap.set('n', '<LocalLeader>rc', '<Cmd>MagmaReevaluateCell<CR>', { silent = true })
        vim.keymap.set('n', '<LocalLeader>rd', '<Cmd>MagmaDelete<CR>', { silent = true })
        vim.keymap.set('n', '<LocalLeader>ro', '<Cmd>MagmaShowOutput<CR>', { silent = true })

        vim.g.magma_automatically_open_output = false
        vim.g.magma_image_provider = "ueberzug"
    end
}
