-- general (neo)vim settings
local vim = vim
local opt = vim.opt

-- enable 24-bit termgui colors
opt.termguicolors = true

-- file settings
opt.ffs = 'unix,dos'
opt.fileencoding = 'utf-8'

-- tab width
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- line numbers
opt.number = true
opt.relativenumber = true

-- disable some unneeded builtin plugins (https://www.reddit.com/r/neovim/comments/opipij/guide_tips_and_tricks_to_reduce_startup_and/)
local disabled_built_ins = {
    'netrw',
    'netrwPlugin',
    'netrwSettings',
    'netrwFileHandlers',
    '2html_plugin',
    'gzip',
    'zip',
    'zipPlugin',
    'tar',
    'tarPlugin',
    'getscript',
    'getscriptPlugin',
    'vimball',
    'vimballPlugin',
}

for _, plugin in pairs(disabled_built_ins) do
    vim.g['loaded_' .. plugin] = 1
end