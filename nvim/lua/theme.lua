vim.cmd("highlight clear")

if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "reverie"

local colors = require('plugins/colorschemes/darkGrape')

local function set_hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- terminal colors
-- TODO: automate this
vim.g.terminal_color_0 = colors.base00
vim.g.terminal_color_1 = colors.base08
vim.g.terminal_color_2 = colors.base0B
vim.g.terminal_color_3 = colors.base0A
vim.g.terminal_color_4 = colors.base0D
vim.g.terminal_color_5 = colors.base0E
vim.g.terminal_color_6 = colors.base0C
vim.g.terminal_color_7 = colors.base05
vim.g.terminal_color_8 = colors.base04
vim.g.terminal_color_9 = colors.base08
vim.g.terminal_color_10 = colors.base0B
vim.g.terminal_color_11 = colors.base0A
vim.g.terminal_color_12 = colors.base0D
vim.g.terminal_color_13 = colors.base0E
vim.g.terminal_color_14 = colors.base0C
vim.g.terminal_color_15 = colors.base07

-- editor colors
set_hl("Normal", { fg = colors.base05, bg = colors.base00 })
set_hl("Bold", { bold = true })
set_hl("Debug", { fg = colors.base08 })
set_hl("Directory", { fg = colors.base0D })
set_hl("Error", { fg = colors.base00, bg = colors.base08 })
set_hl("ErrorMsg", { fg = colors.base08, bg = colors.base00 })
set_hl("Exception", { fg = colors.base08 })
set_hl("FoldColumn", { fg = colors.base0C, bg = colors.base01 })
set_hl("Folded", { fg = colors.base04, bg = colors.base01 })
set_hl("Search", { fg = colors.base01, bg = colors.base05 })
set_hl("IncSearch", { fg = colors.base01, bg = colors.base06 })
set_hl("CurSearch", { fg = colors.base01, bg = colors.base11 })
set_hl("Italic", { italic = true })
set_hl("Macro", { fg = colors.base08 })
set_hl("MatchParen", { bg = colors.base03 })
set_hl("ModeMsg", { fg = colors.base0B })
set_hl("MoreMsg", { fg = colors.base0B })
set_hl("Question", { fg = colors.base0D })
set_hl("Substitute", { fg = colors.base01, bg = colors.base0A })
set_hl("SpecialKey", { fg = colors.base03 })
set_hl("TooLong", { fg = colors.base08 })
set_hl("Underlined", { fg = colors.base08 })
set_hl("Visual", { bg = colors.base02 })
set_hl("VisualNOS", { fg = colors.base08 })
set_hl("WarningMsg", { fg = colors.base08 })
set_hl("WildMenu", { fg = colors.base08, bg = colors.base0A })
set_hl("Title", { fg = colors.base0D })
set_hl("Conceal", { fg = colors.base0D, bg = colors.base00 })
set_hl("Cursor", { fg = colors.base00, bg = colors.base05 })
set_hl("NonText", { fg = colors.base03 })
set_hl("LineNr", { fg = colors.base04, bg = colors.base00 })
set_hl("SignColumn", { fg = colors.base04, bg = colors.base00 })
set_hl("StatusLine", { fg = colors.base04, bg = colors.base02 })
set_hl("StatusLineNC", { fg = colors.base03, bg = colors.base01 })
set_hl("VertSplit", { fg = colors.base02, bg = colors.base02 })
set_hl("ColorColumn", { bg = colors.base01 })
set_hl("CursorColumn", { bg = colors.base01 })
set_hl("CursorLine", { bg = colors.base01 })
set_hl("CursorLineNr", { fg = colors.base04, bg = colors.base01 })
set_hl("QuickFixLine", { bg = colors.base01 })
set_hl("PMenu", { fg = colors.base05, bg = colors.base01 })
set_hl("PMenuSel", { fg = colors.base01, bg = colors.base05 })
set_hl("TabLine", { fg = colors.base03, bg = colors.base01 })
set_hl("TabLineFill", { fg = colors.base03, bg = colors.base01 })
set_hl("TabLineSel", { fg = colors.base0B, bg = colors.base01 })

-- syntax highlighting
set_hl("Boolean", { fg = colors.base09 })
set_hl("Character", { fg = colors.base08 })
set_hl("Comment", { fg = colors.base04 })
set_hl("Conditional", { fg = colors.base0E })
set_hl("Constant", { fg = colors.base09 })
set_hl("Delimiter", { fg = colors.base0E })
set_hl("Define", { fg = colors.base0E })
set_hl("Float", { fg = colors.base09 })
set_hl("Function", { fg = colors.base0E })
set_hl("Identifier", { fg = colors.base08 })
set_hl("Include", { fg = colors.base0D })
set_hl("Keyword", { fg = colors.base0E })
set_hl("Label", { fg = colors.base0A })
set_hl("Number", { fg = colors.base09 })
set_hl("Operator", { fg = colors.base0E })
set_hl("PreProc", { fg = colors.base0A })
set_hl("Repeat", { fg = colors.base0A })
set_hl("Special", { fg = colors.base0E })
set_hl("SpecialChar", { fg = colors.base11 })
set_hl("Statement", { fg = colors.base0E })
set_hl("StorageClass", { fg = colors.base0A })
set_hl("String", { fg = colors.base0B })
set_hl("Structure", { fg = colors.base0E })
set_hl("Tag", { fg = colors.base08 })
set_hl("Todo", { fg = colors.base0A, bg = colors.base01 })
set_hl("Type", { fg = colors.base0A })
set_hl("Typedef", { fg = colors.base0A })
set_hl("@keyword", { fg = colors.base0E })
set_hl("@keyword.function", { fg = colors.base0E })
set_hl("@keyword.operator", { fg = colors.base0E })
set_hl("@keyword.return", { fg = colors.base0E })
set_hl("@function", { fg = colors.base0D })
set_hl("@function.call", { fg = colors.base0D })
set_hl("@function.builtin", { fg = colors.base0D })
set_hl("@method", { fg = colors.base0D })
set_hl("@method.call", { fg = colors.base0D })

-- windows
set_hl("WinSeparator", { fg = colors.base03 })

-- popups, floating windows
set_hl("NormalFloat", { fg = colors.base05, bg = colors.base00 })
set_hl("FloatBorder", { fg = colors.base03, bg = colors.base00 })

-- popup menu
set_hl("Pmenu", { fg = colors.base05, bg = colors.base00 })    -- Popup menu normal item
set_hl("PmenuSel", { fg = colors.base06, bg = colors.base01 }) -- Selected item
set_hl("PmenuSbar", { bg = colors.base00 })                    -- Scrollbar
set_hl("PmenuThumb", { bg = colors.base01 })                   -- Thumb of scrollbar

-- telescope
set_hl("TelescopeBorder", { fg = colors.base03 })

-- blink
set_hl("BlinkCmpMenuBorder", { fg = colors.base03, bg = colors.base00 })

-- misc.
set_hl("DiagnosticFloat", { link = "NormalFloat" })
set_hl("DiagnosticFloatingWarn", { fg = colors.base09, bg = colors.base01 })
set_hl("DiagnosticFloatingError", { fg = colors.base08, bg = colors.base01 })
set_hl("DiagnosticFloatingInfo", { fg = colors.base0D, bg = colors.base01 })
set_hl("DiagnosticFloatingHint", { fg = colors.base0C, bg = colors.base01 })

-- nvim tree
set_hl("NvimTreeFolderIcon", { fg = colors.base0E })
set_hl("NvimTreeFolderName", { fg = colors.base05 })
set_hl("NvimTreeNormal", { fg = colors.base06 })
