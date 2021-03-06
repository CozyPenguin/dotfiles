-- abbreviation functions
-- credits go to https://gitlab.com/yorickpeterse/dotfiles/-/blob/main/dotfiles/.config/nvim/lua/dotfiles/abbrev.lua

local M = {}
local fn = vim.fn

function cnoreabbrev(lhs, rhs)
    vim.cmd(string.format('cnoreabbrev <expr> %s v:lua.util.abbrev.incommandline("%s", "%s")', lhs, lhs, rhs))
end

function M.incommandline(lhs, rhs)
    if fn.getcmdtype() == ':' and fn.getcmdline():match('^' .. lhs) then
        return rhs
    else
        return lhs
    end
end

return M