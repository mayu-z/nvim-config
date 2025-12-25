" Claude Dark Mode Colorscheme
" Minimalist 2-color theme ONLY: Dark background (#1A1A1A) + Orange accent (#C15F3C)

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "claude"

" Color definitions - ONLY 2 COLORS
let s:bg = "#1A1A1A"      " Dark background
let s:orange = "#C15F3C"  " Orange accent

" ==================== EDITOR ====================
exe 'hi Normal guifg=' . s:orange . ' guibg=' . s:bg
exe 'hi CursorLine guibg=' . s:bg
exe 'hi CursorLineNr guifg=' . s:orange . ' gui=bold guibg=' . s:bg
exe 'hi LineNr guifg=' . s:orange . ' guibg=' . s:bg
exe 'hi NonText guibg=' . s:bg . ' guifg=' . s:bg
exe 'hi Visual guibg=' . s:orange . ' guifg=' . s:bg
exe 'hi VisualNOS guibg=' . s:orange . ' guifg=' . s:bg
exe 'hi Cursor guibg=' . s:orange . ' guifg=' . s:bg

" ==================== SYNTAX ====================
exe 'hi Comment guifg=' . s:orange . ' gui=italic'
exe 'hi String guifg=' . s:orange
exe 'hi Character guifg=' . s:orange
exe 'hi Number guifg=' . s:orange
exe 'hi Boolean guifg=' . s:orange
exe 'hi Operator guifg=' . s:orange
exe 'hi Keyword guifg=' . s:orange
exe 'hi Function guifg=' . s:orange . ' gui=bold'
exe 'hi Type guifg=' . s:orange
exe 'hi Identifier guifg=' . s:orange
exe 'hi Constant guifg=' . s:orange
exe 'hi Special guifg=' . s:orange
exe 'hi SpecialChar guifg=' . s:orange

" ==================== UI ====================
exe 'hi StatusLine guibg=' . s:bg . ' guifg=' . s:orange
exe 'hi StatusLineNC guibg=' . s:bg . ' guifg=' . s:orange
exe 'hi VertSplit guifg=' . s:orange . ' guibg=' . s:bg
exe 'hi WinSeparator guifg=' . s:orange . ' guibg=' . s:bg
exe 'hi Folded guibg=' . s:bg . ' guifg=' . s:orange
exe 'hi IncSearch guibg=' . s:orange . ' guifg=' . s:bg . ' gui=bold'
exe 'hi Search guibg=' . s:orange . ' guifg=' . s:bg . ' gui=bold'
exe 'hi Pmenu guibg=' . s:bg . ' guifg=' . s:orange
exe 'hi PmenuSel guibg=' . s:orange . ' guifg=' . s:bg . ' gui=bold'
exe 'hi PmenuThumb guibg=' . s:orange
exe 'hi WildMenu guibg=' . s:orange . ' guifg=' . s:bg
exe 'hi FloatBorder guifg=' . s:orange . ' guibg=' . s:bg
exe 'hi NormalFloat guibg=' . s:bg . ' guifg=' . s:orange

" ==================== TREESITTER ====================
exe 'hi @keyword guifg=' . s:orange
exe 'hi @function guifg=' . s:orange . ' gui=bold'
exe 'hi @type guifg=' . s:orange
exe 'hi @variable guifg=' . s:orange
exe 'hi @string guifg=' . s:orange
exe 'hi @number guifg=' . s:orange
exe 'hi @boolean guifg=' . s:orange
exe 'hi @comment guifg=' . s:orange . ' gui=italic'
exe 'hi @punctuation guifg=' . s:orange
exe 'hi @operator guifg=' . s:orange

" ==================== DIAGNOSTICS ====================
exe 'hi DiagnosticError guifg=' . s:orange
exe 'hi DiagnosticWarn guifg=' . s:orange
exe 'hi DiagnosticInfo guifg=' . s:orange
exe 'hi DiagnosticHint guifg=' . s:orange
exe 'hi DiagnosticUnderlineError gui=undercurl guisp=' . s:orange
exe 'hi DiagnosticUnderlineWarn gui=undercurl guisp=' . s:orange
exe 'hi DiagnosticUnderlineInfo gui=undercurl guisp=' . s:orange
exe 'hi DiagnosticUnderlineHint gui=undercurl guisp=' . s:orange

" ==================== LSP ====================
exe 'hi LspReferenceText guibg=' . s:bg
exe 'hi LspReferenceRead guibg=' . s:bg
exe 'hi LspReferenceWrite guibg=' . s:bg
exe 'hi LspSignatureActiveParameter guifg=' . s:orange . ' gui=bold'

" ==================== GIT ====================
exe 'hi GitSignsAdd guifg=' . s:orange
exe 'hi GitSignsChange guifg=' . s:orange
exe 'hi GitSignsDelete guifg=' . s:orange
exe 'hi GitSignsAddNr guifg=' . s:orange
exe 'hi GitSignsChangeNr guifg=' . s:orange
exe 'hi GitSignsDeleteNr guifg=' . s:orange

" ==================== TELESCOPE ====================
exe 'hi TelescopeNormal guibg=' . s:bg . ' guifg=' . s:orange
exe 'hi TelescopeBorder guifg=' . s:orange . ' guibg=' . s:bg
exe 'hi TelescopeMatching guifg=' . s:orange . ' gui=bold'
exe 'hi TelescopeSelection guibg=' . s:bg . ' guifg=' . s:orange

" ==================== NVIM-TREE ====================
exe 'hi NvimTreeNormal guibg=' . s:bg . ' guifg=' . s:orange
exe 'hi NvimTreeNormalNC guibg=' . s:bg . ' guifg=' . s:orange
exe 'hi NvimTreeFolderIcon guifg=' . s:orange
exe 'hi NvimTreeOpenedFolderIcon guifg=' . s:orange
exe 'hi NvimTreeOpenedHL guifg=' . s:orange . ' gui=bold'
exe 'hi NvimTreeRootFolder guifg=' . s:orange . ' gui=bold'
exe 'hi NvimTreeGitDirty guifg=' . s:orange
exe 'hi NvimTreeGitNew guifg=' . s:orange
exe 'hi NvimTreeGitRenamed guifg=' . s:orange
exe 'hi NvimTreeGitDeleted guifg=' . s:orange

" ==================== OTHERS ====================
exe 'hi Question guifg=' . s:orange
exe 'hi WarningMsg guifg=' . s:orange
exe 'hi ErrorMsg guifg=' . s:orange
exe 'hi Title guifg=' . s:orange . ' gui=bold'
exe 'hi TabLine guibg=' . s:bg . ' guifg=' . s:orange
exe 'hi TabLineSel guibg=' . s:orange . ' guifg=' . s:bg
exe 'hi TabLineFill guibg=' . s:bg
exe 'hi MatchParen guibg=' . s:orange . ' guifg=' . s:bg . ' gui=bold'
