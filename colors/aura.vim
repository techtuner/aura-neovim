" --------------------------------------------------------------------------
"  
"
"  Name: Aura Theme for Neovim
"  Author: Santhosh Pai <techtuner284@gmail.com>
"  Site: https://github.com/techtuner/aura-neovim
"  License: MIT
"
"
"  -------------------------------------------------------------------------

" Initialization
"
if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif



highlight clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'aura'
set background=dark
set cursorline

function! s:GuiFor(group, ...)
  let histring = 'hi ' . a:group . ' ctermfg=NONE ctermbg=NONE cterm=NONE '

  if strlen(a:1)
    let histring .= 'guibg=' . a:1 . ' '
  endif

  if a:0 >= 2 && strlen(a:2)
    let histring .= 'guifg=' . a:2 . ' '
  endif

  if a:0 >= 3 && strlen(a:3)
    let histring .= 'gui=' . a:3 . ' '
  endif

  execute histring
endfunction

" Color Pallete

let s:black = '#15141b'
let s:white = '#edecee'
let s:background = s:black
let s:foreground = s:white
let s:accent = s:white
let s:grey_ui = '#6d6d6d'
let s:red = '#ff6767'
let s:green = '#61ffca'
let s:violet = '#a277ff'
let s:orange = '#ffca85'
let s:blue = '#6cb2c7'
let s:cyan = '#82e2ff'
let s:pink = '#f694ff'
let s:magenta = s:pink
let s:light_grey = s:grey_ui
let s:grey = '#3d3d3d'
let s:dark_grey = s:black


call s:GuiFor('Normal','None', s:foreground)




" --------------------------------------------------
" Keywords, constants, template literals, pink
" --------------------------------------------------
call s:GuiFor('Constant', 'NONE', s:pink)
call s:GuiFor('Keyword', 'NONE', s:pink)
call s:GuiFor('Number', 'NONE', s:pink)
call s:GuiFor('Repeat', 'NONE', s:pink)
call s:GuiFor('Special', 'NONE', s:pink)
call s:GuiFor('SpecialKey', 'NONE', s:pink)
call s:GuiFor('Statement', 'NONE', s:pink)
call s:GuiFor('Tag', 'NONE', s:pink)
call s:GuiFor('Type', 'NONE', s:violet, 'NONE')
call s:GuiFor('Typedef', 'NONE', s:pink)


" --------------------------------------------------
" Functions, classes, object literal keys, violet
" --------------------------------------------------
call s:GuiFor('Function', 'NONE', s:violet)
call s:GuiFor('Directory', 'NONE', s:violet)
call s:GuiFor('PreProc', 'NONE', s:violet)
call s:GuiFor('StorageClass', 'NONE', s:violet)

" --------------------------------------------------
" Constants, operators, orange
" --------------------------------------------------
call s:GuiFor('Conditional', 'NONE', s:orange)
call s:GuiFor('Exception', 'NONE', s:orange)
call s:GuiFor('Include', 'NONE', s:orange)
call s:GuiFor('Define', 'NONE', s:orange)
call s:GuiFor('Macro', 'NONE', s:orange)
call s:GuiFor('Operator', 'NONE', s:orange)
call s:GuiFor('PreCondit', 'NONE', s:orange)


" --------------------------------------------------
" Strings, markdown headings, green
" --------------------------------------------------
call s:GuiFor('String', 'NONE', s:green)
call s:GuiFor('Debug', 'NONE', s:green)
call s:GuiFor('Delimiter', 'NONE', s:green)
call s:GuiFor('DiffChange', 'NONE', s:green, 'NONE')
call s:GuiFor('Label', 'NONE', s:green)
call s:GuiFor('MoreMsg', 'NONE', s:green)
call s:GuiFor('Title', 'NONE', s:green, 'NONE')
call s:GuiFor('Todo', 'NONE', s:green)

call s:GuiFor('GitGutterChange', 'NONE', s:green)

call s:GuiFor('MatchParen', s:orange, s:background)


" --------------------------------------------------
" Special keywords, classes, markdown code blocks, blue
" --------------------------------------------------
call s:GuiFor('Identifier ', 'NONE', s:foreground)
call s:GuiFor('SpecialChar', 'NONE', s:blue)
call s:GuiFor('DiffAdd', 'NONE', s:blue)

call s:GuiFor('Conceal', 'NONE', s:blue, 'NONE')
call s:GuiFor('lispKey', 'NONE', s:blue)

" --------------------------------------------------
" Status bar text, buttons, etc, grey
" --------------------------------------------------
call s:GuiFor('Comment', 'NONE', s:light_grey, "italic")
call s:GuiFor('NonText', 'NONE', s:grey)
call s:GuiFor('LineNr', 'NONE', s:grey)
call s:GuiFor('StatusLine', '', '', 'reverse')
call s:GuiFor('StatusLineNC', '', '', 'reverse')

" --------------------------------------------------
" Deletion highlights, errors, warnings, red
" --------------------------------------------------
call s:GuiFor('Error', 'NONE', s:red)
call s:GuiFor('ErrorMsg', 'NONE', s:red)
call s:GuiFor('DiffDelete', 'NONE', s:red, 'NONE')
call s:GuiFor('DiffText', 'NONE', s:red, 'NONE')
call s:GuiFor('GitGutterChangeREDete', 'NONE', s:red)
call s:GuiFor('GitGutterREDete', 'NONE', s:red)
call s:GuiFor('WarningMsg', 'NONE', s:red)
call s:GuiFor('Question', 'NONE', s:red, 'NONE')

" --------------------------------------------------
" Modified highlights (mod) cyan
" --------------------------------------------------
call s:GuiFor('SignColumn ', 'NONE', s:cyan)
call s:GuiFor('Cursor ', 'NONE', s:background)
call s:GuiFor('lCursor ', 'NONE', s:background)
call s:GuiFor('CursorLine ', s:grey)
call s:GuiFor('CursorLineNr', 'NONE', s:light_grey)

" --------------------------------------------------
" Complex
" --------------------------------------------------
call s:GuiFor('Visual', s:grey)
call s:GuiFor('VertSplit', s:grey, s:background)

call s:GuiFor('Pmenu', s:grey, s:foreground)
call s:GuiFor('PmenuSbar', s:grey)
call s:GuiFor('PmenuSel', 'NONE', s:white)
call s:GuiFor('PmenuThumb', s:light_grey, s:orange)

call s:GuiFor('WildMenu', s:cyan, s:background)

call s:GuiFor('TabLine', 'NONE', s:foreground, 'NONE')
call s:GuiFor('TabLineFill', 'NONE', 'NONE', 'NONE')
call s:GuiFor('TabLineSel', s:background, s:foreground, 'NONE')

call s:GuiFor('Folded', s:black, s:foreground)
call s:GuiFor('FoldColumn', 'NONE', s:foreground)

call s:GuiFor('GitGutterAdd', 'NONE', s:pink)

call s:GuiFor('IncSearch', s:grey, 'NONE')
call s:GuiFor('Search', s:grey, 'NONE')

" --------------------------------------------------
" sh
" --------------------------------------------------

call s:GuiFor('shDoubleQuote', 'NONE', s:green)
call s:GuiFor('shCommandSubBQ', 'NONE', s:green)
call s:GuiFor('shQuote', 'NONE', s:green)


" --------------------------------------------------
" CSS
" --------------------------------------------------

call s:GuiFor('cssClassName', 'NONE', s:white)
call s:GuiFor('cssClassNameDot', 'NONE', s:white)
call s:GuiFor('cssColor', 'NONE', s:orange)
call s:GuiFor('cssBorderProp', 'NONE', s:blue)
call s:GuiFor('cssBoxProp', 'NONE', s:blue)
call s:GuiFor('cssBackgroundProp', 'NONE', s:white)
call s:GuiFor('cssPseudoClassId', 'NONE', s:white)
call s:GuiFor('cssBraces', 'NONE', s:foreground)
call s:GuiFor('cssFlexibleBoxProp', 'NONE', s:blue)
call s:GuiFor('cssFontProp', 'NONE', s:blue)
call s:GuiFor('cssIdentifier ', 'NONE', s:blue)
call s:GuiFor('cssImportant', 'NONE', s:blue)
call s:GuiFor('cssMediaProp', 'NONE', s:blue)
call s:GuiFor('cssPositioningProp', 'NONE', s:blue)
call s:GuiFor('cssTagName', 'NONE', s:blue)
call s:GuiFor('cssTextProp', 'NONE', s:blue)
call s:GuiFor('cssUIProp', 'NONE', s:blue)
call s:GuiFor('cssAttr', 'NONE', s:pink)
call s:GuiFor('cssIncludeKeyword ', 'NONE', s:pink)
call s:GuiFor('cssUnitDecorators', 'NONE', s:pink)
call s:GuiFor('cssStringQ', 'NONE', s:green)
call s:GuiFor('cssStringQQ', 'NONE', s:green)


" --------------------------------------------------
" HTML
" --------------------------------------------------

call s:GuiFor('htmlArg', 'NONE', s:orange)
call s:GuiFor('htmlString', 'NONE', s:green)
call s:GuiFor('htmlTagName', 'NONE', s:cyan)
call s:GuiFor('htmlTag', 'NONE', s:foreground)
call s:GuiFor('htmlTagEndTag', 'NONE', s:foreground)
call s:GuiFor('htmlEvent', 'NONE', s:orange)


" --------------------------------------------------
" C
" --------------------------------------------------

call s:GuiFor('cStatement', 'NONE', s:orange)


" --------------------------------------------------
" Markdown
" --------------------------------------------------

call s:GuiFor('mkdHeading', 'NONE', s:green)
call s:GuiFor('mkdCode', 'NONE', s:cyan)
call s:GuiFor('mkdCodeDelimiter', 'NONE', s:cyan)
call s:GuiFor('mkdCodeStart', 'NONE', s:cyan)
call s:GuiFor('mkdCodeEnd', 'NONE', s:cyan)
call s:GuiFor('mkdLink', 'NONE', s:violet)
call s:GuiFor('mkdURL', 'NONE', s:pink)
call s:GuiFor('markdownLinkText', 'NONE', s:violet)

" ==================================================
" Built-in Terminal
" --------------------------------------------------
call s:GuiFor('Terminal', 'NONE', s:foreground)
if has('nvim')
  let g:terminal_color_0 = s:black
  let g:terminal_color_8 = s:background
  let g:terminal_color_1 = s:red
  let g:terminal_color_9 = s:red

  let g:terminal_color_2 = s:green
  let g:terminal_color_10 = s:green

  let g:terminal_color_3 = s:violet
  let g:terminal_color_11 = s:violet

  let g:terminal_color_4 = s:blue
  let g:terminal_color_12 = s:blue

  let g:terminal_color_5 = s:magenta
  let g:terminal_color_13 = s:magenta

  let g:terminal_color_6 = s:cyan
  let g:terminal_color_14 = s:cyan
  
  let g:terminal_color_7 = s:white
  let g:terminal_color_15 = s:white

elseif exists('*term_setansicolors')
  let g:terminal_ansi_colors = [
    \ s:black,
    \ s:red,
    \ s:green,
    \ s:violet,
    \ s:blue,
    \ s:orange,
    \ s:magenta,
    \ s:cyan,
    \ s:white,
    \ s:black,
    \ s:red,
    \ s:green,
    \ s:violet,
    \ s:cyan,
    \ s:orange,
    \ s:magenta,
    \ s:blue,
    \ s:white,
    \ ]
endif
