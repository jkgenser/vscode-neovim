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
    end,
    nextTab = function()
        vscode.action("workbench.action.nextEditor")
    end,
    prevTab = function()
        vscode.action("workbench.action.previousEditor")
    end,
    hSplit = function()
        vscode.action("workbench.action.splitEditor")
    end,
    vSplit = function()
        vscode.action("workbench.action.splitEditorDown")
    end,
    toggleMinimap = function()
        vscode.action("editor.action.toggleMinimap")
    end,
    toggleActivityBar = function()
        vscode.action("workbench.action.toggleSidebarVisibility")
    end
}



vim.keymap.set({ 'n' }, '<leader>x', actions.closeActiveEditor)
vim.keymap.set({ 'n' }, '<leader>e', actions.showExplorer)
vim.keymap.set({ 'n' }, '<leader>b', actions.toggleSidebar)
vim.keymap.set({ 'n' }, '<leader>m', actions.toggleMinimap)
vim.keymap.set({ 'n' }, '<leader>a', actions.toggleActivityBar)
vim.keymap.set({ 'n' }, '<C-h>', actions.navigateLeft)
vim.keymap.set({ 'n' }, '<C-l>', actions.navigateRight)
vim.keymap.set({ 'n' }, '<C-j>', actions.navigateDown)
vim.keymap.set({ 'n' }, '<C-k>', actions.navigateUp)
vim.keymap.set({ 'n' }, '<Tab>', actions.nextTab)
vim.keymap.set({ 'n' }, '<S-Tab>', actions.prevTab)
vim.keymap.set({ 'n' }, '<leader>h', actions.hSplit)
vim.keymap.set({ 'n' }, '<leader>v', actions.vSplit)
