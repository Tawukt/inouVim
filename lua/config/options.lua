-- mostly inspired by tony conf

-- OPTIONS
local set = vim.opt

--line nums
set.relativenumber = true
set.number = true

-- cursor line
set.cursorline = true

-- indentation and tabs
set.tabstop = 4
set.shiftwidth = 4
set.autoindent = true
set.expandtab = true

-- search settings
set.ignorecase = true
set.smartcase = true

-- keep cursor at least 9 rows from top/bot
set.scrolloff = 9

-- appearance
set.termguicolors = true
--set.background = "dark"
--set.signcolumn = "yes"


-- faster cursor hold
set.updatetime = 50


-- 80th column
--set.colorcolumn = "80"
--
-- clipboard
--set.clipboard:append("unnamedplus")

-- backspace
-- set.backspace = "indent,eol,start"

-- split windows
--set.splitbelow = true
--set.splitright = true

-- dw/diw/ciw works on full-word
-- set.iskeyword:append("-")


-- undo dir settings
--set.swapfile = false
--set.backup = false
--set.undodir = os.getenv("HOME") .. "/.vim/undodir"
--set.undofile = true
--
-- incremental search
--set.incsearch = true
--
