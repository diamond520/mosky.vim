" “Luthadel” Vim Color Scheme
" ===========================
"
" Luthadel is the capital of the Final Empire, which is one of my favorite
" fantasy novels.
"
" I built it with unadorned requirements on Python code, but any feature request
" or bug report is welcome. Send mail to Mosky <mosky.tw@gmail.com>.
"
" Copyright (c) 2016 Mosky Liu, and licensed under MIT:
" https://opensource.org/licenses/MIT.
"

" reset everything

hi clear
syntax reset

" TODO: publish the color tools into a repository
" --- generated by print_color_tmpl.py ---

" clear conventional groups
" {{{
hi clear Comment
hi clear Constant
hi clear Identifier
hi clear Statement
hi clear PreProc
hi clear Type
hi clear Special
hi clear Underlined
hi clear Ignore
hi clear Error
hi clear Todo
" }}}

" clear vim's groups
" {{{
hi clear ColorColumn
hi clear Conceal
hi clear Cursor
hi clear CursorIM
hi clear CursorColumn
hi clear CursorLine
hi clear Directory
hi clear DiffAdd
hi clear DiffChange
hi clear DiffDelete
hi clear DiffText
hi clear ErrorMsg
hi clear VertSplit
hi clear Folded
hi clear FoldColumn
hi clear SignColumn
hi clear IncSearch
hi clear LineNr
hi clear CursorLineNr
hi clear MatchParen
hi clear ModeMsg
hi clear MoreMsg
hi clear NonText
hi clear Normal
hi clear Pmenu
hi clear PmenuSel
hi clear PmenuSbar
hi clear PmenuThumb
hi clear Question
hi clear Search
hi clear SpecialKey
hi clear SpellBad
hi clear SpellCap
hi clear SpellLocal
hi clear SpellRare
hi clear StatusLine
hi clear StatusLineNC
hi clear TabLine
hi clear TabLineFill
hi clear TabLineSel
hi clear Title
hi clear Visual
hi clear VisualNOS
hi clear WarningMsg
hi clear WildMenu
hi clear Menu
hi clear Scrollbar
hi clear Tooltip
" }}}

" --- end ---

" start to set colors

" references
" {{{
" * all colors: http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html
" * 0-15 depends on the terminal config
" * 231 is white
" * 232-255 is grayscale
" }}}

" palette
" {{{
"
" TERM#; RGB; HSL
"
" H   0: red*
" H  30: orange
" H  60: yellow
" H 120: green*
" H 240: blue*
" H 300: purple
" * the RGB primary colors
"
" primary (red-yellow)
" 196; #ff0000;   0, 100%,  50%
" 202; #ff5f00;  22, 100%,  50%
" 208; #ff8700;  32, 100%,  50%
" 214; #ffaf00;  41, 100%,  50%
" 221; #ffd75f;  45, 100%,  69%
"
" secondary (green-blue)
"  41; #00d75f; 147, 100%,  42%
"  20; #0000d7; 240, 100%   42%
"  18; #000087; 240, 100%,  26%
"
" grayscale
" 231; #ffffff;   0, 100%, 100%
" 254; #e4e4e4;   0,   0%,  89%
" 239; #4e4e4e;   0,   0%,  31%
" 238; #444444;   0,   0%,  27%
"
" supplement (red, green, orange)
"  52; #5f0000;   0, 100%,  19%
"  22; #005f00; 120, 100%,  19%
"  94; #af5f00;  33, 100%,  34%
"
" if 21 (#0000ff) and underline -> to be define
" }}}

let g:colors_name='luthadel'
set background=dark

" conventional groups
" {{{

" import, from
hi PreProc    ctermfg=196
" def, if, for, while, with, as, return
hi Statement  ctermfg=202
" def <function name>, None, True, all, classmethod
hi Identifier ctermfg=208
" C: int, long
hi Type       ctermfg=214
" <int>, <str>
hi Constant   ctermfg=221

" \n, \t, \x00 in <str>
hi Special    ctermfg=41
" # comment
hi Comment    ctermfg=41
" TODO, FIXME, XXX
hi Todo       ctermfg=41  cterm=reverse

" hi cterm=rev
hi Error      ctermfg=196 cterm=reverse

hi Underlined cterm=underline

" TBD
hi Ignore     ctermbg=21  cterm=underline
" }}}

" vim groups
" {{{

hi Normal       ctermfg=254
hi Visual       ctermbg=238
"hi VisualNOS
hi NonText      ctermfg=239

hi LineNr       ctermfg=239
"hi Cursor
"hi CursorIM
"hi CursorColumn
"hi CursorLine
"hi CursorLineNr

" NC: non-current
hi StatusLineNC ctermfg=239
hi StatusLine   ctermfg=254
hi ModeMsg      ctermfg=254
hi WildMenu     cterm=reverse

hi TabLine      ctermfg=239
"hi TabLineFill
"hi TabLineSel

hi Folded       ctermfg=239
hi FoldColumn   ctermfg=239

" set listchars?
" ▵▵▵▵
hi SpecialKey   ctermfg=239

hi VertSplit    ctermfg=239
" set colorcolumn=81
hi ColorColumn  ctermfg=196

" ( _)_
hi MatchParen   ctermbg=20

hi IncSearch    ctermbg=20
hi Search       ctermbg=20

" popup menu: Ctrl-N
hi Pmenu        ctermfg=231 ctermbg=18
hi PmenuSel     ctermfg=231 ctermbg=20
hi PmenuSbar    ctermbg=18
hi PmenuThumb   ctermbg=20

"hi MoreMsg
hi Question     ctermfg=20 ctermbg=231 cterm=reverse
hi WarningMsg   ctermfg=20 ctermbg=231 cterm=reverse
hi ErrorMsg     ctermfg=20 ctermbg=231 cterm=reverse

hi SpellBad     cterm=underline
hi SpellCap     cterm=underline
hi SpellRare    cterm=underline
hi SpellLocal   cterm=underline

hi DiffDelete   ctermbg=52
hi DiffAdd      ctermbg=22
hi DiffText     ctermbg=130
"hi DiffChange

" # Markdown Title
hi Title        ctermfg=231
" $ nvim ~
"hi Directory

" TBC
hi Conceal      ctermbg=21 cterm=underline
hi SignColumn   ctermfg=21 cterm=underline

" GUI

"hi Menu         ctermfg=253
"hi Scrollbar    ctermfg=253
"hi Tooltip      ctermfg=253
" }}}

" vim: set fdm=marker:
