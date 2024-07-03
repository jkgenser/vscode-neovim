local vscode = require('vscode')

local actions = {
    closeActiveEditor = function()
        vscode.action('workbench.action.closeActiveEditor')
    end,
    showExplorer = function()
        vscode.action('workbench.view.explorer')
    end,
    toggleSidebar = function()
        vscode.action('workbench.action.toggleSidebarVisibility')
    end,
    navigateLeft = function()
        vscode.action('workbench.action.navigateLeft')
    end,
    navigateRight = function()
        vscode.action('workbench.action.navigateRight')
    end,
    navigateUp = function()
        vscode.action('workbench.action.navigateUp')
    end,
    navigateDown = function()
        vscode.action('workbench.action.navigateDown')
    end
}


vim.keymap.set({ 'n' }, '<leader>x', actions.closeActiveEditor)
vim.keymap.set({ 'n' }, '<leader>e', actions.showExplorer)
vim.keymap.set({ 'n' }, '<leader>b', actions.toggleSidebar)
vim.keymap.set({ 'n' }, '<C-h>', actions.navigateLeft)
vim.keymap.set({ 'n' }, '<C-l>', actions.navigateRight)
vim.keymap.set({ 'n' }, '<C-j>', actions.navigateDown)
vim.keymap.set({ 'n' }, '<C-k>', actions.navigateUp)