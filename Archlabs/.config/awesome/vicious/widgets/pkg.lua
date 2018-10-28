---------------------------------------------------
-- Licensed under the GNU General Public License v2
--  * (c) 2010, Adrian C. <anrxc@sysphere.org>
---------------------------------------------------

-- {{{ Grab environment
local io = { popen = io.popen }
local math = { max = math.max }
local setmetatable = setmetatable
-- }}}


-- Pkg: provides number of pending updates on UNIX systems
-- vicious.widgets.pkg
local pkg = {}


-- {{{ Packages widget type
local function worker(format, warg)
    if not warg then return end

    -- Initialize counters
    local updates = 0
    local manager = {
        ["Arch"]   = { cmd = "pacman -Qu" },
        ["Arch S"] = { cmd = "checkupdates" },
    }

    -- Check if updates are available
    local _pkg = manager[warg]
    local f = io.popen(_pkg.cmd)

    for line in f:lines() do
        updates = updates + 1
    end
    f:close()

    return {_pkg.sub and math.max(updates-_pkg.sub, 0) or updates}
end
-- }}}

return setmetatable(pkg, { __call = function(_, ...) return worker(...) end })
