local M = {}

-- neovim teminal mode colors
local function set_terminal_colors(colors)
  vim.g.terminal_color_0 = colors.black
  vim.g.terminal_color_8 = colors.dark_grey1
  vim.g.terminal_color_1 = colors.dark_red
  vim.g.terminal_color_9 = colors.red
  vim.g.terminal_color_2 = colors.dark_green
  vim.g.terminal_color_10 = colors.green
  vim.g.terminal_color_3 = colors.yellow
  vim.g.terminal_color_11 = colors.yellow
  vim.g.terminal_color_4 = colors.dark_blue
  vim.g.terminal_color_12 = colors.blue
  vim.g.terminal_color_5 = colors.dark_purple
  vim.g.terminal_color_13 = colors.purple
  vim.g.terminal_color_6 = colors.dark_teal
  vim.g.terminal_color_14 = colors.teal
  vim.g.terminal_color_7 = colors.grey
  vim.g.terminal_color_15 = colors.light_grey
end

-- Might need looked at due to not having config in init.lua
M.setup = function()
  local colors = require("anura.palette").get_base_colors(vim.o.background)

set_terminal_colors(colors)

  local groups = {
    -- Base groups
    Normal = { fg = colors.dark_grey1, bg = colors.light_grey},
    NormalFloat = { bg = colors.light_grey },
    FloatBorder = { fg = colors.dark_purple, bg = colors.light_grey },
    --NormalNC = config.dim_inactive and { fg = colors.fg0, bg = colors.bg1 } or { link = "Normal" },
    CursorLine = { bg = colors.light_grey },
    CursorColumn = { link = "CursorLine" },
    --TabLineFill = { fg = colors.bg4, bg = colors.bg1, reverse = config.invert_tabline },
    --TabLineSel = { fg = colors.green, bg = colors.bg1, reverse = config.invert_tabline },
    --TabLine = { link = "TabLineFill" },
    MatchParen = { bg = colors.cyan },
    ColorColumn = { fg = colors.dark_grey2, bg = colors.grey },
    Conceal = { fg = colors.blue },
    CursorLineNr = { fg = colors.yellow, bg = colors.bg1 },
    EndOfBuffer = { fg = colors.light_grey, bg = colors.light_grey },
    VertSplit = { fg = colors.dark_grey3, bg = colors.light_grey },
    -- NonText = { link = "GruvboxBg2" },
    -- SpecialKey = { link = "GruvboxFg4" },
    -- Visual = { bg = colors.bg3, reverse = config.invert_selection },
    -- VisualNOS = { link = "Visual" },
    Search = { fg = colors.light_grey, bg = colors.green },
    -- IncSearch = { fg = colors.orange, bg = colors.bg0, reverse = config.inverse },
    -- CurSearch = { link = "IncSearch" },
    -- QuickFixLine = { fg = colors.bg0, bg = colors.yellow, bold = config.bold },
    -- Underlined = { fg = colors.blue, underline = config.underline },
    StatusLine = { bg = colors.light_grey },
    -- StatusLineNC = { fg = colors.bg1, bg = colors.fg4, reverse = config.inverse },
    -- WinBar = { fg = colors.fg4, bg = colors.bg0 },
    -- WinBarNC = { fg = colors.fg3, bg = colors.bg1 },
    -- WinSeparator = config.transparent_mode and { fg = colors.bg3, bg = nil } or { fg = colors.bg3, bg = colors.bg0 },
    -- WildMenu = { fg = colors.blue, bg = colors.bg2, bold = config.bold },
    Directory = { fg = colors.blue },
    Title = { fg = colors.dark_green, bold = true },
    -- ErrorMsg = { fg = colors.bg0, bg = colors.red, bold = config.bold },
    -- MoreMsg = { link = "GruvboxYellowBold" },
    -- ModeMsg = { link = "GruvboxYellowBold" },
    -- Question = { link = "GruvboxOrangeBold" },
    -- WarningMsg = { link = "GruvboxRedBold" },
    LineNr = { fg = colors.grey },
    SignColumn = { bg = colors.light_grey },
    -- Folded = { fg = colors.gray, bg = colors.bg1, italic = config.italic.folds },
    -- FoldColumn = config.transparent_mode and { fg = colors.gray, bg = nil } or { fg = colors.gray, bg = colors.bg1 },
    -- Cursor = { fg = colors.black, bg = colors.black},
    -- vCursor = { link = "Cursor" },
    -- iCursor = { fg =colors.green, bg = colors.green },
    -- lCursor = { link = "Cursor" },
    -- Special = { link = "GruvboxOrange" },
    Comment = { fg = colors.grey },
    Todo = { fg = colors.dark_grey1, bg = colors.yellow },
    Done = { fg = colors.orange, },
    Error = { fg = colors.red },
    Statement = { link = "Conditional" },
    Conditional = { fg = colors.red },
    -- Repeat = { link = "GruvboxRed" },
    -- Label = { link = "GruvboxRed" },
    -- Exception = { link = "GruvboxRed" },
    -- Operator = { fg = colors.orange, italic = config.italic.operators },
    Keyword = { fg = colors.dark_blue },
    Identifier = { fg = colors.dark_blue },
    Function = { fg = colors.dark_green },
    PreProc = { fg = colors.dark_teal },
    Include = { fg = colors.dark_teal },
    Define = { fg = colors.dark_teal },
    Macro = { fg = colors.dark_teal },
    PreCondit = {fg = colors.dark_teal },
    Constant = { fg = colors.dark_purple },
    Character = { fg = colors.dark_green },
    String = { fg = colors.dark_green },
    Boolean = { fg = colors.dark_purple },
    Number = { fg = colors.dark_purple },
    -- Float = { link = "GruvboxPurple" },
    Type = { fg = colors.dark_orange },
    StorageClass = { fg = colors.dark_orange },
    Structure = { fg = colors.teal },
    Typedef = { fg = colors.yellow },
    Pmenu = { bg = "#E8E8E8" },
    PmenuSel = { fg = colors.light_grey, bg = colors.orange },
    PmenuSbar = { bg = "#E8E8E8" },
  --   PmenuThumb = { bg = colors.bg4 },
  --   DiffDelete = { fg = colors.red, bg = colors.bg0, reverse = config.inverse },
  --   DiffAdd = { fg = colors.green, bg = colors.bg0, reverse = config.inverse },
  --   DiffChange = { fg = colors.aqua, bg = colors.bg0, reverse = config.inverse },
  --   DiffText = { fg = colors.yellow, bg = colors.bg0, reverse = config.inverse },
  SpellCap = { fg = colors.dark_blue, underline = true },
  SpellBad = { fg = colors.dark_red, underline = true },
  SpellLocal = { fg = colors.dark_teal, underline = true },
  SpellRare = { fg = colors.dark_orange, underline = true },
  --   Whitespace = { fg = colors.bg2 },
-- LSP Diagnostic
  DiagnosticError = { fg = colors.dark_red, bg = colors.light_grey },
  DiagnosticSignError = { link = "DiagnosticError" },
  --   DiagnosticUnderlineError = { link = "GruvboxRedUnderline" },
  DiagnosticWarn = { fg = colors.yellow, bg = colors.light_grey },
  DiagnosticSignWarn = { link = "DiagnosticWarn" },
  --   DiagnosticUnderlineWarn = { link = "GruvboxYellowUnderline" },
  DiagnosticInfo = { fg = colors.blue, bg = colors.light_grey },
  DiagnosticSignInfo = { link = "DiagnosticInfo" },
  --   DiagnosticUnderlineInfo = { link = "GruvboxBlueUnderline" },
  DiagnosticHint = { fg = colors.dark_teal, bg = colors.light_grey },
  DiagnosticSignHint = { link = "DiagnosticHint" },
  --   DiagnosticUnderlineHint = { link = "GruvboxAquaUnderline" },
  --   DiagnosticFloatingError = { link = "GruvboxRed" },
  --   DiagnosticFloatingWarn = { link = "GruvboxOrange" },
  --   DiagnosticFloatingInfo = { link = "GruvboxBlue" },
  --   DiagnosticFloatingHint = { link = "GruvboxAqua" },
  --   DiagnosticVirtualTextError = { link = "GruvboxRed" },
  --   DiagnosticVirtualTextWarn = { link = "GruvboxYellow" },
  --   DiagnosticVirtualTextInfo = { link = "GruvboxBlue" },
  --   DiagnosticVirtualTextHint = { link = "GruvboxAqua" },
  --   LspReferenceRead = { link = "GruvboxYellowBold" },
  --   LspReferenceText = { link = "GruvboxYellowBold" },
  --   LspReferenceWrite = { link = "GruvboxOrangeBold" },
  --   LspCodeLens = { link = "GruvboxGray" },
  --   LspSignatureActiveParameter = { link = "Search" },
  --
  --   -- nvim-treesitter
  --   -- See `nvim-treesitter/CONTRIBUTING.md`
  --
  --   --
  --   -- Misc
  --   --
  --   -- @comment               ; line and block comments
  --   ["@comment"] = { link = "Comment" },
  --   -- @comment.documentation ; comments documenting code
  --   -- @none                  ; completely disable the highlight
  --   ["@none"] = { bg = "NONE", fg = "NONE" },
  --   -- @preproc               ; various preprocessor directives & shebangs
  --   ["@preproc"] = { link = "PreProc" },
  --   -- @define                ; preprocessor definition directives
  --   ["@define"] = { link = "Define" },
  --   -- @operator              ; symbolic operators (e.g. `+` / `*`)
  --   ["@operator"] = { link = "Operator" },
  --
  --   --
  --   -- Punctuation
  --   --
  --   -- @punctuation.delimiter ; delimiters (e.g. `;` / `.` / `,`)
  --   ["@punctuation.delimiter"] = { link = "Delimiter" },
  --   -- @punctuation.bracket   ; brackets (e.g. `()` / `{}` / `[]`)
  --   ["@punctuation.bracket"] = { link = "Delimiter" },
  --   -- @punctuation.special   ; special symbols (e.g. `{}` in string interpolation)
  --   ["@punctuation.special"] = { link = "Delimiter" },
  --
  --   --
  --   -- Literals
  --   --
  --   -- @string               ; string literals
  --   ["@string"] = { link = "String" },
  --   -- @string.documentation ; string documenting code (e.g. Python docstrings)
  --   -- @string.regex         ; regular expressions
  --   ["@string.regex"] = { link = "String" },
  --   -- @string.escape        ; escape sequences
  --   ["@string.escape"] = { link = "SpecialChar" },
  --   -- @string.special       ; other special strings (e.g. dates)
  --   ["@string.special"] = { link = "SpecialChar" },
  --
  --   -- @character            ; character literals
  --   ["@character"] = { link = "Character" },
  --   -- @character.special    ; special characters (e.g. wildcards)
  --   ["@character.special"] = { link = "SpecialChar" },
  --
  --   -- @boolean              ; boolean literals
  --   ["@boolean"] = { link = "Boolean" },
  --   -- @number               ; numeric literals
  --   ["@number"] = { link = "Number" },
  --   -- @float                ; floating-point number literals
  --   ["@float"] = { link = "Float" },
  --
  --   --
  --   -- Functions
  --   --
  --   -- @function         ; function definitions
  --   ["@function"] = { link = "Function" },
  --   -- @function.builtin ; built-in functions
  --   ["@function.builtin"] = { link = "Special" },
  --   -- @function.call    ; function calls
  --   ["@function.call"] = { link = "Function" },
  --   -- @function.macro   ; preprocessor macros
  --   ["@function.macro"] = { link = "Macro" },
  --
  --   -- @method           ; method definitions
  --   ["@method"] = { link = "Function" },
  --   -- @method.call      ; method calls
  --   ["@method.call"] = { link = "Function" },
  --
  --   -- @constructor      ; constructor calls and definitions
  --   ["@constructor"] = { link = "Special" },
  --   -- @parameter        ; parameters of a function
  --   ["@parameter"] = { link = "Identifier" },
  --
  --   --
  --   -- Keywords
  --   --
  --   -- @keyword             ; various keywords
  --   ["@keyword"] = { link = "Keyword" },
  --   -- @keyword.coroutine   ; keywords related to coroutines (e.g. `go` in Go, `async/await` in Python)
  --   -- @keyword.function    ; keywords that define a function (e.g. `func` in Go, `def` in Python)
  --   ["@keyword.function"] = { link = "Keyword" },
  --   -- @keyword.operator    ; operators that are English words (e.g. `and` / `or`)
  --   ["@keyword.operator"] = { link = "GruvboxRed" },
  --   -- @keyword.return      ; keywords like `return` and `yield`
  --   ["@keyword.return"] = { link = "Keyword" },
  --
  --   -- @conditional         ; keywords related to conditionals (e.g. `if` / `else`)
  --   ["@conditional"] = { link = "Conditional" },
  --   -- @conditional.ternary ; ternary operator (e.g. `?` / `:`)
  --
  --   -- @repeat              ; keywords related to loops (e.g. `for` / `while`)
  --   ["@repeat"] = { link = "Repeat" },
  --   -- @debug               ; keywords related to debugging
  --   ["@debug"] = { link = "Debug" },
  --   -- @label               ; GOTO and other labels (e.g. `label:` in C)
  --   ["@label"] = { link = "Label" },
  --   -- @include             ; keywords for including modules (e.g. `import` / `from` in Python)
  --   ["@include"] = { link = "Include" },
  --   -- @exception           ; keywords related to exceptions (e.g. `throw` / `catch`)
  --   ["@exception"] = { link = "Exception" },
  --
  --   --
  --   -- Types
  --   --
  --   -- @type            ; type or class definitions and annotations
  --   ["@type"] = { link = "Type" },
  --   -- @type.builtin    ; built-in types
  --   ["@type.builtin"] = { link = "Type" },
  --   -- @type.definition ; type definitions (e.g. `typedef` in C)
  --   ["@type.definition"] = { link = "Typedef" },
  --   -- @type.qualifier  ; type qualifiers (e.g. `const`)
  --   ["@type.qualifier"] = { link = "Type" },
  --
  --   -- @storageclass    ; modifiers that affect storage in memory or life-time
  --   ["@storageclass"] = { link = "StorageClass" },
  --   -- @attribute       ; attribute annotations (e.g. Python decorators)
  --   ["@attribute"] = { link = "PreProc" },
  --   -- @field           ; object and struct fields
  --   ["@field"] = { link = "Identifier" },
  --   -- @property        ; similar to `@field`
  --   ["@property"] = { link = "Identifier" },
  --
  --   --
  --   -- Identifiers
  --   --
  --   -- @variable         ; various variable names
  --   ["@variable"] = { link = "GruvboxFg1" },
  --   -- @variable.builtin ; built-in variable names (e.g. `this`)
  --   ["@variable.builtin"] = { link = "Special" },
  --
  --   -- @constant         ; constant identifiers
  --   ["@constant"] = { link = "Constant" },
  --   -- @constant.builtin ; built-in constant values
  --   ["@constant.builtin"] = { link = "Special" },
  --   -- @constant.macro   ; constants defined by the preprocessor
  --   ["@constant.macro"] = { link = "Define" },
  --
  --   -- @namespace        ; modules or namespaces
  --   ["@namespace"] = { link = "GruvboxFg1" },
  --   -- @symbol           ; symbols or atoms
  --   ["@symbol"] = { link = "Identifier" },
  --
  --   --
  --   -- Text
  --   --
  --   -- @text                  ; non-structured text
  --   ["@text"] = { link = "GruvboxFg1" },
  --   -- @text.strong           ; bold text
  --   ["@text.strong"] = { bold = config.bold },
  --   -- @text.emphasis         ; text with emphasis
  --   ["@text.emphasis"] = { italic = config.italic.strings },
  --   -- @text.underline        ; underlined text
  --   ["@text.underline"] = { underline = config.underline },
  --   -- @text.strike           ; strikethrough text
  --   ["@text.strike"] = { strikethrough = config.strikethrough },
  --   -- @text.title            ; text that is part of a title
  --   ["@text.title"] = { link = "Title" },
  --   -- @text.literal          ; literal or verbatim text (e.g., inline code)
  --   ["@text.literal"] = { link = "String" },
  --   -- @text.quote            ; text quotations
  --   -- @text.uri              ; URIs (e.g. hyperlinks)
  --   ["@text.uri"] = { link = "Underlined" },
  --   -- @text.math             ; math environments (e.g. `$ ... $` in LaTeX)
  --   ["@text.math"] = { link = "Special" },
  --   -- @text.environment      ; text environments of markup languages
  --   ["@text.environment"] = { link = "Macro" },
  --   -- @text.environment.name ; text indicating the type of an environment
  --   ["@text.environment.name"] = { link = "Type" },
  --   -- @text.reference        ; text references, footnotes, citations, etc.
  --   ["@text.reference"] = { link = "Constant" },
  --
  --   -- @text.todo             ; todo notes
  --   ["@text.todo"] = { link = "Todo" },
  --   -- @text.note             ; info notes
  --   ["@text.note"] = { link = "SpecialComment" },
  --   -- @text.note.comment     ; XXX in comments
  --   ["@text.note.comment"] = { fg = colors.purple, bold = config.bold },
  --   -- @text.warning          ; warning notes
  --   ["@text.warning"] = { link = "WarningMsg" },
  --   -- @text.danger           ; danger/error notes
  --   ["@text.danger"] = { link = "ErrorMsg" },
  --   -- @text.danger.comment   ; FIXME in comments
  --   ["@text.danger.comment"] = { fg = colors.fg0, bg = colors.red, bold = config.bold },
  --
  --   -- @text.diff.add         ; added text (for diff files)
  --   ["@text.diff.add"] = { link = "diffAdded" },
  --   -- @text.diff.delete      ; deleted text (for diff files)
  --   ["@text.diff.delete"] = { link = "diffRemoved" },
  --
  --   --
  --   -- Tags
  --   --
  --   -- @tag           ; XML tag names
  --   ["@tag"] = { link = "Tag" },
  --   -- @tag.attribute ; XML tag attributes
  --   ["@tag.attribute"] = { link = "Identifier" },
  --   -- @tag.delimiter ; XML tag delimiters
  --   ["@tag.delimiter"] = { link = "Delimiter" },
  --
  --   --
  --   -- Conceal
  --   --
  --   -- @conceal ; for captures that are only used for concealing
  --
  --   --
  --   -- Spell
  --   --
  --   -- @spell   ; for defining regions to be spellchecked
  --   -- @nospell ; for defining regions that should NOT be spellchecked
  --
  --   -- Treesitter
  --   -- See `:help treesitter`
  --   -- Those are not part of the nvim-treesitter
  --   ["@punctuation"] = { link = "Delimiter" },
  --   ["@macro"] = { link = "Macro" },
  --   ["@structure"] = { link = "Structure" },
  --
  --   -- Semantic token
  --   -- See `:help lsp-semantic-highlight`
  --   ["@lsp.type.class"] = { link = "@type" },
  --   ["@lsp.type.comment"] = {}, -- do not overwrite comments
  --   ["@lsp.type.decorator"] = { link = "@macro" },
  --   ["@lsp.type.enum"] = { link = "@type" },
  --   ["@lsp.type.enumMember"] = { link = "@constant" },
  --   ["@lsp.type.function"] = { link = "@function" },
  --   ["@lsp.type.interface"] = { link = "@constructor" },
  --   ["@lsp.type.macro"] = { link = "@macro" },
  --   ["@lsp.type.method"] = { link = "@method" },
  --   ["@lsp.type.namespace"] = { link = "@namespace" },
  --   ["@lsp.type.parameter"] = { link = "@parameter" },
  --   ["@lsp.type.property"] = { link = "@property" },
  --   ["@lsp.type.struct"] = { link = "@type" },
  --   ["@lsp.type.type"] = { link = "@type" },
  --   ["@lsp.type.typeParameter"] = { link = "@type.definition" },
  --   ["@lsp.type.variable"] = { link = "@variable" },

 -- Alpha
      AlphaHeaderColor = { fg = colors.dark_blue },
      AlphaFooterColor = { fg = colors.green, bold = true },

  --   -- gitcommit
  --   gitcommitSelectedFile = { link = "GruvboxGreen" },
  --   gitcommitDiscardedFile = { link = "GruvboxRed" },
 -- gitsigns.nvim
    GitSignsAdd = { fg = colors.dark_green, bg = colors.light_grey },
    GitSignsChange = { fg = colors.yellow, bg = colors.light_grey },
    GitSignsDelete = { fg = colors.dark_red, bg = colors.light_grey },
  --   -- nvim-tree
  --   NvimTreeSymlink = { fg = colors.neutral_aqua },
  --   NvimTreeRootFolder = { fg = colors.neutral_purple, bold = true },
  --   NvimTreeFolderIcon = { fg = colors.neutral_blue, bold = true },
  --   NvimTreeFileIcon = { fg = colors.light2 },
  --   NvimTreeExecFile = { fg = colors.neutral_green, bold = true },
  --   NvimTreeOpenedFile = { fg = colors.bright_red, bold = true },
  --   NvimTreeSpecialFile = { fg = colors.neutral_yellow, bold = true, underline = true },
  --   NvimTreeImageFile = { fg = colors.neutral_purple },
  --   NvimTreeIndentMarker = { fg = colors.dark3 },
  --   NvimTreeGitDirty = { fg = colors.neutral_yellow },
  --   NvimTreeGitStaged = { fg = colors.neutral_yellow },
  --   NvimTreeGitMerge = { fg = colors.neutral_purple },
  --   NvimTreeGitRenamed = { fg = colors.neutral_purple },
  --   NvimTreeGitNew = { fg = colors.neutral_yellow },
  --   NvimTreeGitDeleted = { fg = colors.neutral_red },
  --   NvimTreeWindowPicker = { bg = colors.faded_aqua },
  --   -- termdebug
  --   debugPC = { bg = colors.faded_blue },
  --   debugBreakpoint = { link = "GruvboxRedSign" },
  --   -- vim-startify
  --   StartifyBracket = { link = "GruvboxFg3" },
  --   StartifyFile = { link = "GruvboxFg1" },
  --   StartifyNumber = { link = "GruvboxBlue" },
  --   StartifyPath = { link = "GruvboxGray" },
  --   StartifySlash = { link = "GruvboxGray" },
  --   StartifySection = { link = "GruvboxYellow" },
  --   StartifySpecial = { link = "GruvboxBg2" },
  --   StartifyHeader = { link = "GruvboxOrange" },
  --   StartifyFooter = { link = "GruvboxBg2" },
  --   StartifyVar = { link = "StartifyPath" },
  --   StartifySelect = { link = "Title" },
  --   -- vim-dirvish
  --   DirvishPathTail = { link = "GruvboxAqua" },
  --   DirvishArg = { link = "GruvboxYellow" },
 -- netrw
    netrwDir = { fg = colors.dark_teal },
    netrwClassify = { fg = colors.dark_teal },
    netrwLink = { fg = colors.blue },
    netrwSymLink = { fg = colors.blue },
    netrwExe = { fg = colors.yellow },
    netrwComment = { link = "Comment" },
    netrwList = { fg = colors.dark_blue },
    netrwHelpCmd = { fg = colors.dark_teal },
    netrwCmdSep = { fg = colors.grey },
    netrwVersion = { fg = colors.dark_green },
  --   -- nerdtree
  --   NERDTreeDir = { link = "GruvboxAqua" },
  --   NERDTreeDirSlash = { link = "GruvboxAqua" },
  --   NERDTreeOpenable = { link = "GruvboxOrange" },
  --   NERDTreeClosable = { link = "GruvboxOrange" },
  --   NERDTreeFile = { link = "GruvboxFg1" },
  --   NERDTreeExecFile = { link = "GruvboxYellow" },
  --   NERDTreeUp = { link = "GruvboxGray" },
  --   NERDTreeCWD = { link = "GruvboxGreen" },
  --   NERDTreeHelp = { link = "GruvboxFg1" },
  --   NERDTreeToggleOn = { link = "GruvboxGreen" },
  --   NERDTreeToggleOff = { link = "GruvboxRed" },
  --   -- coc.nvim
  --   CocErrorSign = { link = "GruvboxRedSign" },
  --   CocWarningSign = { link = "GruvboxOrangeSign" },
  --   CocInfoSign = { link = "GruvboxBlueSign" },
  --   CocHintSign = { link = "GruvboxAquaSign" },
  --   CocErrorFloat = { link = "GruvboxRed" },
  --   CocWarningFloat = { link = "GruvboxOrange" },
  --   CocInfoFloat = { link = "GruvboxBlue" },
  --   CocHintFloat = { link = "GruvboxAqua" },
  --   CocDiagnosticsError = { link = "GruvboxRed" },
  --   CocDiagnosticsWarning = { link = "GruvboxOrange" },
  --   CocDiagnosticsInfo = { link = "GruvboxBlue" },
  --   CocDiagnosticsHint = { link = "GruvboxAqua" },
  --   CocSelectedText = { link = "GruvboxRed" },
  --   CocMenuSel = { link = "PmenuSel" },
  --   CocCodeLens = { link = "GruvboxGray" },
  --   CocErrorHighlight = { link = "GruvboxRedUnderline" },
  --   CocWarningHighlight = { link = "GruvboxOrangeUnderline" },
  --   CocInfoHighlight = { link = "GruvboxBlueUnderline" },
  --   CocHintHighlight = { link = "GruvboxAquaUnderline" },
 -- telescope.nvim
    TelescopeNormal = { fg = colors.dark_grey1, bg = colors.light_grey },
    TelescopeSelection = { bold = true },
    TelescopeSelectionCaret = { fg = colors.orange },
    TelescopePromptCounter = { fg = colors.light_grey1 },
    -- TelescopeMultiSelection = { link = "GruvboxGray" },
    -- TelescopeBorder = { link = "TelescopeNormal" },
    TelescopePromptTitle = { fg = colors.dark_blue, bg = colors.light_grey, bold = true },
    TelescopePromptBorder = { fg = colors.dark_blue, bg = colors.light_grey },
    TelescopePromptNormal = {fg = colors.dark_grey1, bg = colors.light_grey },
    TelescopeResultsBorder = { fg = colors.dark_blue, bg = colors.light_grey },
    TelescopeResultsTitle = { fg = colors.dark_blue, bold = true },
    TelescopePreviewBorder = { fg = colors.green, bg = colors.light_grey },
    TelescopePreviewTitle = { fg = colors.dark_green, bold = true },
    TelescopeMatching = { fg = colors.orange, bold = true },
    TelescopePromptPrefix = { fg = colors.orange },
    --TelescopePrompt = { link = "TelescopeNormal" },
  --   -- nvim-cmp
  --   CmpItemAbbr = { link = "GruvboxFg0" },
  --   CmpItemAbbrDeprecated = { link = "GruvboxFg1" },
    CmpItemAbbrMatch = { fg = colors.dark_blue, bold = true },
  --   CmpItemAbbrMatchFuzzy = { link = "GruvboxBlueUnderline" },
  --   CmpItemMenu = { link = "GruvboxGray" },
    CmpItemKindText = { fg = colors.orange },
    CmpItemKindVariable = { fg = colors.orange },
    CmpItemKindMethod = { fg = colors.dark_blue },
    CmpItemKindFunction = { fg = colors.dark_blue },
    CmpItemKindConstructor = { fg = colors.yellow },
    CmpItemKindUnit = { fg = colors.dark_blue },
    CmpItemKindField = { fg = colors.dark_blue },
    CmpItemKindClass = { fg = colors.yellow },
    CmpItemKindInterface = { fg = colors.yellow },
    CmpItemKindModule = { fg = colors.dark_blue },
    CmpItemKindProperty = { fg = colors.dark_blue },
    CmpItemKindValue = { fg = colors.orange },
    CmpItemKindEnum = { fg = colors.yellow },
    CmpItemKindOperator = { fg = colors.yellow },
    CmpItemKindKeyword = { fg = colors.dark_purple },
    CmpItemKindEvent = { fg = colors.dark_purple },
    CmpItemKindReference = { fg = colors.dark_purple },
    CmpItemKindColor = { fg = colors.dark_purple },
    CmpItemKindSnippet = { fg = colors.dark_green },
    CmpItemKindFile = { fg = colors.dark_blue },
    CmpItemKindFolder = { fg = colors.dark_blue },
    CmpItemKindEnumMember = { fg = colors.dark_teal },
    CmpItemKindConstant = { fg = colors.orange },
    CmpItemKindStruct = { fg = colors.yellow },
    CmpItemKindTypeParameter = { fg = colors.yellow },
  --   diffAdded = { link = "GruvboxGreen" },
  --   diffRemoved = { link = "GruvboxRed" },
  --   diffChanged = { link = "GruvboxAqua" },
  --   diffFile = { link = "GruvboxOrange" },
  --   diffNewFile = { link = "GruvboxYellow" },
  --   diffOldFile = { link = "GruvboxOrange" },
  --   diffLine = { link = "GruvboxBlue" },
  --   diffIndexLine = { link = "diffChanged" },
  --   -- navic (highlight icons)
  --   NavicIconsFile = { link = "GruvboxBlue" },
  --   NavicIconsModule = { link = "GruvboxOrange" },
  --   NavicIconsNamespace = { link = "GruvboxBlue" },
  --   NavicIconsPackage = { link = "GruvboxAqua" },
  --   NavicIconsClass = { link = "GruvboxYellow" },
  --   NavicIconsMethod = { link = "GruvboxBlue" },
  --   NavicIconsProperty = { link = "GruvboxAqua" },
  --   NavicIconsField = { link = "GruvboxPurple" },
  --   NavicIconsConstructor = { link = "GruvboxBlue" },
  --   NavicIconsEnum = { link = "GruvboxPurple" },
  --   NavicIconsInterface = { link = "GruvboxGreen" },
  --   NavicIconsFunction = { link = "GruvboxBlue" },
  --   NavicIconsVariable = { link = "GruvboxPurple" },
  --   NavicIconsConstant = { link = "GruvboxOrange" },
  --   NavicIconsString = { link = "GruvboxGreen" },
  --   NavicIconsNumber = { link = "GruvboxOrange" },
  --   NavicIconsBoolean = { link = "GruvboxOrange" },
  --   NavicIconsArray = { link = "GruvboxOrange" },
  --   NavicIconsObject = { link = "GruvboxOrange" },
  --   NavicIconsKey = { link = "GruvboxAqua" },
  --   NavicIconsNull = { link = "GruvboxOrange" },
  --   NavicIconsEnumMember = { link = "GruvboxYellow" },
  --   NavicIconsStruct = { link = "GruvboxPurple" },
  --   NavicIconsEvent = { link = "GruvboxYellow" },
  --   NavicIconsOperator = { link = "GruvboxRed" },
  --   NavicIconsTypeParameter = { link = "GruvboxRed" },
  --   NavicText = { link = "GruvboxWhite" },
  --   NavicSeparator = { link = "GruvboxWhite" },
  --   -- html
  --   htmlTag = { link = "GruvboxAquaBold" },
  --   htmlEndTag = { link = "GruvboxAquaBold" },
  --   htmlTagName = { link = "GruvboxBlue" },
  --   htmlArg = { link = "GruvboxOrange" },
  --   htmlTagN = { link = "GruvboxFg1" },
  --   htmlSpecialTagName = { link = "GruvboxBlue" },
  --   htmlLink = { fg = colors.fg4, underline = config.underline },
  --   htmlSpecialChar = { link = "GruvboxRed" },
  --   htmlBold = { fg = colors.fg0, bg = colors.bg0, bold = config.bold },
  --   htmlBoldUnderline = { fg = colors.fg0, bg = colors.bg0, bold = config.bold, underline = config.underline },
  --   htmlBoldItalic = { fg = colors.fg0, bg = colors.bg0, bold = config.bold, italic = true },
  --   htmlBoldUnderlineItalic = {
  --     fg = colors.fg0,
  --     bg = colors.bg0,
  --     bold = config.bold,
  --     italic = true,
  --     underline = config.underline,
  --   },
  --   htmlUnderline = { fg = colors.fg0, bg = colors.bg0, underline = config.underline },
  --   htmlUnderlineItalic = {
  --     fg = colors.fg0,
  --     bg = colors.bg0,
  --     italic = true,
  --     underline = config.underline,
  --   },
  --   htmlItalic = { fg = colors.fg0, bg = colors.bg0, italic = true },
  --   -- xml
  --   xmlTag = { link = "GruvboxAquaBold" },
  --   xmlEndTag = { link = "GruvboxAquaBold" },
  --   xmlTagName = { link = "GruvboxBlue" },
  --   xmlEqual = { link = "GruvboxBlue" },
  --   docbkKeyword = { link = "GruvboxAquaBold" },
  --   xmlDocTypeDecl = { link = "GruvboxGray" },
  --   xmlDocTypeKeyword = { link = "GruvboxPurple" },
  --   xmlCdataStart = { link = "GruvboxGray" },
  --   xmlCdataCdata = { link = "GruvboxPurple" },
  --   dtdFunction = { link = "GruvboxGray" },
  --   dtdTagName = { link = "GruvboxPurple" },
  --   xmlAttrib = { link = "GruvboxOrange" },
  --   xmlProcessingDelim = { link = "GruvboxGray" },
  --   dtdParamEntityPunct = { link = "GruvboxGray" },
  --   dtdParamEntityDPunct = { link = "GruvboxGray" },
  --   xmlAttribPunct = { link = "GruvboxGray" },
  --   xmlEntity = { link = "GruvboxRed" },
  --   xmlEntityPunct = { link = "GruvboxRed" },
  --   -- clojure
  --   clojureKeyword = { link = "GruvboxBlue" },
  --   clojureCond = { link = "GruvboxOrange" },
  --   clojureSpecial = { link = "GruvboxOrange" },
  --   clojureDefine = { link = "GruvboxOrange" },
  --   clojureFunc = { link = "GruvboxYellow" },
  --   clojureRepeat = { link = "GruvboxYellow" },
  --   clojureCharacter = { link = "GruvboxAqua" },
  --   clojureStringEscape = { link = "GruvboxAqua" },
  --   clojureException = { link = "GruvboxRed" },
  --   clojureRegexp = { link = "GruvboxAqua" },
  --   clojureRegexpEscape = { link = "GruvboxAqua" },
  --   clojureRegexpCharClass = { fg = colors.fg3, bold = config.bold },
  --   clojureRegexpMod = { link = "clojureRegexpCharClass" },
  --   clojureRegexpQuantifier = { link = "clojureRegexpCharClass" },
  --   clojureParen = { link = "GruvboxFg3" },
  --   clojureAnonArg = { link = "GruvboxYellow" },
  --   clojureVariable = { link = "GruvboxBlue" },
  --   clojureMacro = { link = "GruvboxOrange" },
  --   clojureMeta = { link = "GruvboxYellow" },
  --   clojureDeref = { link = "GruvboxYellow" },
  --   clojureQuote = { link = "GruvboxYellow" },
  --   clojureUnquote = { link = "GruvboxYellow" },
  --   -- C
  --   cOperator = { link = "GruvboxPurple" },
  --   cppOperator = { link = "GruvboxPurple" },
  --   cStructure = { link = "GruvboxOrange" },
  --   -- python
  --   pythonBuiltin = { link = "GruvboxOrange" },
  --   pythonBuiltinObj = { link = "GruvboxOrange" },
  --   pythonBuiltinFunc = { link = "GruvboxOrange" },
  --   pythonFunction = { link = "GruvboxAqua" },
  --   pythonDecorator = { link = "GruvboxRed" },
  --   pythonInclude = { link = "GruvboxBlue" },
  --   pythonImport = { link = "GruvboxBlue" },
  --   pythonRun = { link = "GruvboxBlue" },
  --   pythonCoding = { link = "GruvboxBlue" },
  --   pythonOperator = { link = "GruvboxRed" },
  --   pythonException = { link = "GruvboxRed" },
  --   pythonExceptions = { link = "GruvboxPurple" },
  --   pythonBoolean = { link = "GruvboxPurple" },
  --   pythonDot = { link = "GruvboxFg3" },
  --   pythonConditional = { link = "GruvboxRed" },
  --   pythonRepeat = { link = "GruvboxRed" },
  --   pythonDottedName = { link = "GruvboxGreenBold" },
  --   -- CSS
  --   cssBraces = { link = "GruvboxBlue" },
  --   cssFunctionName = { link = "GruvboxYellow" },
  --   cssIdentifier = { link = "GruvboxOrange" },
  --   cssClassName = { link = "GruvboxGreen" },
  --   cssColor = { link = "GruvboxBlue" },
  --   cssSelectorOp = { link = "GruvboxBlue" },
  --   cssSelectorOp2 = { link = "GruvboxBlue" },
  --   cssImportant = { link = "GruvboxGreen" },
  --   cssVendor = { link = "GruvboxFg1" },
  --   cssTextProp = { link = "GruvboxAqua" },
  --   cssAnimationProp = { link = "GruvboxAqua" },
  --   cssUIProp = { link = "GruvboxYellow" },
  --   cssTransformProp = { link = "GruvboxAqua" },
  --   cssTransitionProp = { link = "GruvboxAqua" },
  --   cssPrintProp = { link = "GruvboxAqua" },
  --   cssPositioningProp = { link = "GruvboxYellow" },
  --   cssBoxProp = { link = "GruvboxAqua" },
  --   cssFontDescriptorProp = { link = "GruvboxAqua" },
  --   cssFlexibleBoxProp = { link = "GruvboxAqua" },
  --   cssBorderOutlineProp = { link = "GruvboxAqua" },
  --   cssBackgroundProp = { link = "GruvboxAqua" },
  --   cssMarginProp = { link = "GruvboxAqua" },
  --   cssListProp = { link = "GruvboxAqua" },
  --   cssTableProp = { link = "GruvboxAqua" },
  --   cssFontProp = { link = "GruvboxAqua" },
  --   cssPaddingProp = { link = "GruvboxAqua" },
  --   cssDimensionProp = { link = "GruvboxAqua" },
  --   cssRenderProp = { link = "GruvboxAqua" },
  --   cssColorProp = { link = "GruvboxAqua" },
  --   cssGeneratedContentProp = { link = "GruvboxAqua" },
  --   -- javascript
  --   javaScriptBraces = { link = "GruvboxFg1" },
  --   javaScriptFunction = { link = "GruvboxAqua" },
  --   javaScriptIdentifier = { link = "GruvboxRed" },
  --   javaScriptMember = { link = "GruvboxBlue" },
  --   javaScriptNumber = { link = "GruvboxPurple" },
  --   javaScriptNull = { link = "GruvboxPurple" },
  --   javaScriptParens = { link = "GruvboxFg3" },
  --   -- typescript
  --   typescriptReserved = { link = "GruvboxAqua" },
  --   typescriptLabel = { link = "GruvboxAqua" },
  --   typescriptFuncKeyword = { link = "GruvboxAqua" },
  --   typescriptIdentifier = { link = "GruvboxOrange" },
  --   typescriptBraces = { link = "GruvboxFg1" },
  --   typescriptEndColons = { link = "GruvboxFg1" },
  --   typescriptDOMObjects = { link = "GruvboxFg1" },
  --   typescriptAjaxMethods = { link = "GruvboxFg1" },
  --   typescriptLogicSymbols = { link = "GruvboxFg1" },
  --   typescriptDocSeeTag = { link = "Comment" },
  --   typescriptDocParam = { link = "Comment" },
  --   typescriptDocTags = { link = "vimCommentTitle" },
  --   typescriptGlobalObjects = { link = "GruvboxFg1" },
  --   typescriptParens = { link = "GruvboxFg3" },
  --   typescriptOpSymbols = { link = "GruvboxFg3" },
  --   typescriptHtmlElemProperties = { link = "GruvboxFg1" },
  --   typescriptNull = { link = "GruvboxPurple" },
  --   typescriptInterpolationDelimiter = { link = "GruvboxAqua" },
  --   -- purescript
  --   purescriptModuleKeyword = { link = "GruvboxAqua" },
  --   purescriptModuleName = { link = "GruvboxFg1" },
  --   purescriptWhere = { link = "GruvboxAqua" },
  --   purescriptDelimiter = { link = "GruvboxFg4" },
  --   purescriptType = { link = "GruvboxFg1" },
  --   purescriptImportKeyword = { link = "GruvboxAqua" },
  --   purescriptHidingKeyword = { link = "GruvboxAqua" },
  --   purescriptAsKeyword = { link = "GruvboxAqua" },
  --   purescriptStructure = { link = "GruvboxAqua" },
  --   purescriptOperator = { link = "GruvboxBlue" },
  --   purescriptTypeVar = { link = "GruvboxFg1" },
  --   purescriptConstructor = { link = "GruvboxFg1" },
  --   purescriptFunction = { link = "GruvboxFg1" },
  --   purescriptConditional = { link = "GruvboxOrange" },
  --   purescriptBacktick = { link = "GruvboxOrange" },
  --   -- coffescript
  --   coffeeExtendedOp = { link = "GruvboxFg3" },
  --   coffeeSpecialOp = { link = "GruvboxFg3" },
  --   coffeeCurly = { link = "GruvboxOrange" },
  --   coffeeParen = { link = "GruvboxFg3" },
  --   coffeeBracket = { link = "GruvboxOrange" },
  --   -- ruby
  --   rubyStringDelimiter = { link = "GruvboxGreen" },
  --   rubyInterpolationDelimiter = { link = "GruvboxAqua" },
  --   rubyDefinedOperator = { link = "rubyKeyword" },
  --   -- objc
  --   objcTypeModifier = { link = "GruvboxRed" },
  --   objcDirective = { link = "GruvboxBlue" },
  --   -- go
  --   goDirective = { link = "GruvboxAqua" },
  --   goConstants = { link = "GruvboxPurple" },
  --   goDeclaration = { link = "GruvboxRed" },
  --   goDeclType = { link = "GruvboxBlue" },
  --   goBuiltins = { link = "GruvboxOrange" },
  --   -- lua
  --   luaIn = { link = "GruvboxRed" },
  --   luaFunction = { link = "GruvboxAqua" },
  --   luaTable = { link = "GruvboxOrange" },
  --   -- moonscript
  --   moonSpecialOp = { link = "GruvboxFg3" },
  --   moonExtendedOp = { link = "GruvboxFg3" },
  --   moonFunction = { link = "GruvboxFg3" },
  --   moonObject = { link = "GruvboxYellow" },
  --   -- java
  --   javaAnnotation = { link = "GruvboxBlue" },
  --   javaDocTags = { link = "GruvboxAqua" },
  --   javaCommentTitle = { link = "vimCommentTitle" },
  --   javaParen = { link = "GruvboxFg3" },
  --   javaParen1 = { link = "GruvboxFg3" },
  --   javaParen2 = { link = "GruvboxFg3" },
  --   javaParen3 = { link = "GruvboxFg3" },
  --   javaParen4 = { link = "GruvboxFg3" },
  --   javaParen5 = { link = "GruvboxFg3" },
  --   javaOperator = { link = "GruvboxOrange" },
  --   javaVarArg = { link = "GruvboxGreen" },
  --   -- elixir
  --   elixirDocString = { link = "Comment" },
  --   elixirStringDelimiter = { link = "GruvboxGreen" },
  --   elixirInterpolationDelimiter = { link = "GruvboxAqua" },
  --   elixirModuleDeclaration = { link = "GruvboxYellow" },
  --   -- scala
  --   scalaNameDefinition = { link = "GruvboxFg1" },
  --   scalaCaseFollowing = { link = "GruvboxFg1" },
  --   scalaCapitalWord = { link = "GruvboxFg1" },
  --   scalaTypeExtension = { link = "GruvboxFg1" },
  --   scalaKeyword = { link = "GruvboxRed" },
  --   scalaKeywordModifier = { link = "GruvboxRed" },
  --   scalaSpecial = { link = "GruvboxAqua" },
  --   scalaOperator = { link = "GruvboxFg1" },
  --   scalaTypeDeclaration = { link = "GruvboxYellow" },
  --   scalaTypeTypePostDeclaration = { link = "GruvboxYellow" },
  --   scalaInstanceDeclaration = { link = "GruvboxFg1" },
  --   scalaInterpolation = { link = "GruvboxAqua" },
 -- markdown
  markdownItalic = { italic = true },
  markdownBold = { bold = true },
  markdownBoldItalic = { bold = true, italic = true },
  markdownH1 = { fg = colors.dark_blue },
  markdownH2 = { fg = colors.dark_green },
  markdownH3 = { fg = colors.dark_orange },
  markdownH4 = { fg = colors.yellow },
  markdownH5 = { fg = colors.dark_teal },
  markdownH6 = { fg = colors.dark_purple },
  -- markdownCode = { link = "GruvboxAqua" },
  -- markdownCodeBlock = { link = "GruvboxAqua" },
  -- markdownCodeDelimiter = { link = "GruvboxAqua" },
  -- markdownBlockquote = { link = "GruvboxGray" },
  -- markdownListMarker = { link = "GruvboxGray" },
  -- markdownOrderedListMarker = { link = "GruvboxGray" },
  -- markdownRule = { link = "GruvboxGray" },
  -- markdownHeadingRule = { link = "GruvboxGray" },
  -- markdownUrlDelimiter = { link = "GruvboxFg3" },
  -- markdownLinkDelimiter = { link = "GruvboxFg3" },
  -- markdownLinkTextDelimiter = { link = "GruvboxFg3" },
  -- markdownHeadingDelimiter = { link = "GruvboxOrange" },
  -- markdownUrl = { link = "GruvboxPurple" },
  -- markdownUrlTitleDelimiter = { link = "GruvboxGreen" },
  -- markdownLinkText = { fg = colors.gray, underline = config.underline },
  -- markdownIdDeclaration = { link = "markdownLinkText" },
  --   -- haskell
  --   haskellType = { link = "GruvboxBlue" },
  --   haskellIdentifier = { link = "GruvboxAqua" },
  --   haskellSeparator = { link = "GruvboxFg4" },
  --   haskellDelimiter = { link = "GruvboxOrange" },
  --   haskellOperators = { link = "GruvboxPurple" },
  --   haskellBacktick = { link = "GruvboxOrange" },
  --   haskellStatement = { link = "GruvboxPurple" },
  --   haskellConditional = { link = "GruvboxPurple" },
  --   haskellLet = { link = "GruvboxRed" },
  --   haskellDefault = { link = "GruvboxRed" },
  --   haskellWhere = { link = "GruvboxRed" },
  --   haskellBottom = { link = "GruvboxRedBold" },
  --   haskellImportKeywords = { link = "GruvboxPurpleBold" },
  --   haskellDeclKeyword = { link = "GruvboxOrange" },
  --   haskellDecl = { link = "GruvboxOrange" },
  --   haskellDeriving = { link = "GruvboxPurple" },
  --   haskellAssocType = { link = "GruvboxAqua" },
  --   haskellNumber = { link = "GruvboxAqua" },
  --   haskellPragma = { link = "GruvboxRedBold" },
  --   haskellTH = { link = "GruvboxAquaBold" },
  --   haskellForeignKeywords = { link = "GruvboxGreen" },
  --   haskellKeyword = { link = "GruvboxRed" },
  --   haskellFloat = { link = "GruvboxAqua" },
  --   haskellInfix = { link = "GruvboxPurple" },
  --   haskellQuote = { link = "GruvboxGreenBold" },
  --   haskellShebang = { link = "GruvboxYellowBold" },
  --   haskellLiquid = { link = "GruvboxPurpleBold" },
  --   haskellQuasiQuoted = { link = "GruvboxBlueBold" },
  --   haskellRecursiveDo = { link = "GruvboxPurple" },
  --   haskellQuotedType = { link = "GruvboxRed" },
  --   haskellPreProc = { link = "GruvboxFg4" },
  --   haskellTypeRoles = { link = "GruvboxRedBold" },
  --   haskellTypeForall = { link = "GruvboxRed" },
  --   haskellPatternKeyword = { link = "GruvboxBlue" },
  --   -- json
  --   jsonKeyword = { link = "GruvboxGreen" },
  --   jsonQuote = { link = "GruvboxGreen" },
  --   jsonBraces = { link = "GruvboxFg1" },
  --   jsonString = { link = "GruvboxFg1" },
  --   -- mail
  --   mailQuoted1 = { link = "GruvboxAqua" },
  --   mailQuoted2 = { link = "GruvboxPurple" },
  --   mailQuoted3 = { link = "GruvboxYellow" },
  --   mailQuoted4 = { link = "GruvboxGreen" },
  --   mailQuoted5 = { link = "GruvboxRed" },
  --   mailQuoted6 = { link = "GruvboxOrange" },
  --   mailSignature = { link = "Comment" },
  --   -- c#
  --   csBraces = { link = "GruvboxFg1" },
  --   csEndColon = { link = "GruvboxFg1" },
  --   csLogicSymbols = { link = "GruvboxFg1" },
  --   csParens = { link = "GruvboxFg3" },
  --   csOpSymbols = { link = "GruvboxFg3" },
  --   csInterpolationDelimiter = { link = "GruvboxFg3" },
  --   csInterpolationAlignDel = { link = "GruvboxAquaBold" },
  --   csInterpolationFormat = { link = "GruvboxAqua" },
  --   csInterpolationFormatDel = { link = "GruvboxAquaBold" },
  --   -- rust btw
  --   rustSigil = { link = "GruvboxOrange" },
  --   rustEscape = { link = "GruvboxAqua" },
  --   rustStringContinuation = { link = "GruvboxAqua" },
  --   rustEnum = { link = "GruvboxAqua" },
  --   rustStructure = { link = "GruvboxAqua" },
  --   rustModPathSep = { link = "GruvboxFg2" },
  --   rustCommentLineDoc = { link = "Comment" },
  --   rustDefault = { link = "GruvboxAqua" },
  --   -- ocaml
  --   ocamlOperator = { link = "GruvboxFg1" },
  --   ocamlKeyChar = { link = "GruvboxOrange" },
  --   ocamlArrow = { link = "GruvboxOrange" },
  --   ocamlInfixOpKeyword = { link = "GruvboxRed" },
  --   ocamlConstructor = { link = "GruvboxOrange" },
  --   -- lspsaga.nvim
  --   LspSagaCodeActionTitle = { link = "Title" },
  --   LspSagaCodeActionBorder = { link = "GruvboxFg1" },
  --   LspSagaCodeActionContent = { fg = colors.green, bold = config.bold },
  --   LspSagaLspFinderBorder = { link = "GruvboxFg1" },
  --   LspSagaAutoPreview = { link = "GruvboxOrange" },
  --   TargetWord = { fg = colors.blue, bold = config.bold },
  --   FinderSeparator = { link = "GruvboxAqua" },
  --   LspSagaDefPreviewBorder = { link = "GruvboxBlue" },
  --   LspSagaHoverBorder = { link = "GruvboxOrange" },
  --   LspSagaRenameBorder = { link = "GruvboxBlue" },
  --   LspSagaDiagnosticSource = { link = "GruvboxOrange" },
  --   LspSagaDiagnosticBorder = { link = "GruvboxPurple" },
  --   LspSagaDiagnosticHeader = { link = "GruvboxGreen" },
  --   LspSagaSignatureHelpBorder = { link = "GruvboxGreen" },
  --   SagaShadow = { link = "GruvboxBg0" },
  --
  --   -- dashboard-nvim
  --   DashboardShortCut = { link = "GruvboxOrange" },
  --   DashboardHeader = { link = "GruvboxAqua" },
  --   DashboardCenter = { link = "GruvboxYellow" },
  --   DashboardFooter = { fg = colors.purple, italic = true },
  --   -- mason
  --   MasonHighlight = { link = "GruvboxAqua" },
  --   MasonHighlightBlock = { fg = colors.bg0, bg = colors.blue },
  --   MasonHighlightBlockBold = { fg = colors.bg0, bg = colors.blue, bold = true },
  --   MasonHighlightSecondary = { fg = colors.yellow },
  --   MasonHighlightBlockSecondary = { fg = colors.bg0, bg = colors.yellow },
  --   MasonHighlightBlockBoldSecondary = { fg = colors.bg0, bg = colors.yellow, bold = true },
  --   MasonHeader = { link = "MasonHighlightBlockBoldSecondary" },
  --   MasonHeaderSecondary = { link = "MasonHighlightBlockBold" },
  --   MasonMuted = { fg = colors.fg4 },
  --   MasonMutedBlock = { fg = colors.bg0, bg = colors.fg4 },
  --   MasonMutedBlockBold = { fg = colors.bg0, bg = colors.fg4, bold = true },
  --   -- lsp-inlayhints.nvim
  --   LspInlayHint = { link = "comment" },
  --   -- carbon.nvim
  --   CarbonFile = { link = "GruvboxFg1" },
  --   CarbonExe = { link = "GruvboxYellow" },
  --   CarbonSymlink = { link = "GruvboxAqua" },
  --   CarbonBrokenSymlink = { link = "GruvboxRed" },
  --   CarbonIndicator = { link = "GruvboxGray" },
  --   CarbonDanger = { link = "GruvboxRed" },
  --   CarbonPending = { link = "GruvboxYellow" },
  --   -- noice.nvim
  --   NoiceCursor = { link = "TermCursor" },
  -- notify.nvim
    NotifyDEBUGBorder = { fg = colors.dark_blue },
    NotifyDEBUGIcon = { fg = colors.blue },
    NotifyDEBUGTitle = { fg = colors.blue },
    NotifyERRORBorder = { fg = colors.dark_red },
    NotifyERRORIcon = { fg = colors.red },
    NotifyERRORTitle = { fg = colors.red },
    NotifyINFOBorder = { fg = colors.dark_teal },
    NotifyINFOIcon = { fg = colors.teal },
    NotifyINFOTitle = { fg = colors.teal },
    NotifyTRACEBorder = { fg = colors.dark_green },
    NotifyTRACEIcon = { fg = colors.green },
    NotifyTRACETitle = { fg = colors.green },
    NotifyWARNBorder = { fg = colors.yellow },
    NotifyWARNIcon = { fg = colors.yellow },
    NotifyWARNTitle = { fg = colors.yellow },
    NotifyERRORBody = { link = "Normal" },
    NotifyWARNBody = { link = "Normal" },
    NotifyINFOBody = { link = "Normal" },
    NotifyDEBUGBody = { link = "Normal" },
    NotifyTRACEBody = { link = "Normal" },
  -- Lazy
    LazyH1 = { fg = colors.dark_blue, bg = colors.dark_grey3, bold = true },
    LazyProp = { bg = colors.dark_grey3, fg = colors.dark_blue },
    LazyButton = { fg = colors.dark_blue },
    LazyNormal = { bg = colors.light_grey },
    LazySpecial = { fg = colors.green },
    LazyActiveButton = { fg = colors.dark_blue, bg = colors.dark_grey3 },
    LazyProgressDone = { fg = colors.green },
  -- IndentBlankline
    IndentBlanklineSpaceChar = { fg = colors.light_grey1 },
    IndentBlanklineChar = { fg = colors.light_grey1 },
    IndentBlanklineContextChar = { fg = colors.blue },
    IndentBlanklineContextStart = { fg = colors.blue },
    IblIndent = { fg = colors.blue },
  -- Headlines
    Headline1 = { fg = colors.dark_blue, bg = colors.blue },
    Headline2 = { fg = colors.dark_teal, bg = colors.teal },
    Headline3 = { fg = colors.dark_orange, bg = colors.orange },
    Headline4 = { fg = colors.dark_purple, bg = colors.purple },
    Headline5 = { fg = colors.dark_green, bg = colors.green },
    Headline6 = { fg = colors.dark_red, bg = colors.red },
    CodeBlock = { fg = colors.dark_grey2, bg = colors.dark_grey3 },
    Quote = { fg = colors.dark_grey2, bg = colors.dark_grey3 },

-- In case I want to add overides
--   for group, hl in pairs(config.overrides) do
--     if groups[group] then
--       -- "link" should not mix with other configs (:h hi-link)
--       groups[group].link = nil
--     end
--
--     groups[group] = vim.tbl_extend("force", groups[group] or {}, hl)
--   end
  }
return groups

end

return M
