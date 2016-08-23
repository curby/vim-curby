" 'cubblegum' Consistent Bubblegum (or Curby's Bubblegum)
"
" Like Bubblegum theme, but hopefully more consistent.
" For example:
"   File name is gray in all vim modes, unless...
"   If buffer is modified, file name is always red
"   Paste always makes airline_a red
"   Replace changes airline_a *and* airline_z to red
"   Filename maintains consistent vertical alignment when inactive (set:
"     let g:airline_inactive_collapse=0
"   )
"
" Color follows rainbow spectrum of increasing destructiveness
" starts blue (normal)
" yellow is for insert
" green is for visual/selection
" orange is for replace
" white is for paste toggle (TODO)
" red filename on modification



"""
""" Individual color definitions
"""
let s:gui_dark_gray     = '#303030'
let s:cterm_dark_gray   = 236
let s:gui_med_gray_lo   = '#3a3a3a'
let s:cterm_med_gray_lo = 237
let s:gui_med_gray_hi   = '#444444'
let s:cterm_med_gray_hi = 238
let s:gui_light_gray    = '#b2b2b2'
let s:cterm_light_gray  = 249

let s:gui_purple        = '#afafd7'
let s:cterm_purple      = 146
let s:gui_blue          = '#87afd7'
let s:cterm_blue        = 110
let s:gui_green         = '#afd787'
let s:cterm_green       = 150

let s:gui_yellow        = '#ffff87'
let s:cterm_yellow      = 228

let s:gui_orange        = '#d7af5f'
let s:cterm_orange      = 179
let s:gui_red           = '#d78787'
let s:cterm_red         = 174
let s:gui_pink          = '#d7afd7'
let s:cterm_pink        = 182

let g:airline#themes#cubblegum#palette = {}



"""
""" Color pairing definitions
"""
let s:BlueBg   = [s:gui_dark_gray,  s:gui_blue,        s:cterm_dark_gray,  s:cterm_blue,        '']
let s:GreenBg  = [s:gui_dark_gray,  s:gui_green,       s:cterm_dark_gray,  s:cterm_green,       '']
let s:YellowBg = [s:gui_dark_gray,  s:gui_yellow,      s:cterm_dark_gray,  s:cterm_yellow,      '']
let s:OrangeBg = [s:gui_dark_gray,  s:gui_orange,      s:cterm_dark_gray,  s:cterm_orange,      '']
let s:RedBg    = [s:gui_dark_gray,  s:gui_red,         s:cterm_dark_gray,  s:cterm_red,         '']

let s:PinkBg   = [s:gui_dark_gray,  s:gui_pink,        s:cterm_dark_gray,  s:cterm_pink,        '']
let s:DkGrayBg = [s:gui_light_gray, s:gui_dark_gray,   s:cterm_light_gray, s:cterm_dark_gray,   '']
let s:MdGrayBg = [s:gui_light_gray, s:gui_med_gray_lo, s:cterm_light_gray, s:cterm_med_gray_lo, '']
let s:LtGrayBg = [s:gui_light_gray, s:gui_med_gray_hi, s:cterm_light_gray, s:cterm_med_gray_hi, '']

let s:Blue     = [s:gui_blue,       s:gui_med_gray_hi, s:cterm_blue,       s:cterm_med_gray_hi, '']
let s:RedLtBg  = [s:gui_red,        s:gui_med_gray_hi, s:cterm_red,        s:cterm_med_gray_hi, '']
let s:RedMdBg  = [s:gui_red,        s:gui_med_gray_lo, s:cterm_red,        s:cterm_med_gray_lo, '']
let s:RedDkBg  = [s:gui_red,        s:gui_dark_gray,   s:cterm_red,        s:cterm_dark_gray,   '']
let s:Pink     = [s:gui_pink,       s:gui_med_gray_hi, s:cterm_pink,       s:cterm_med_gray_hi, '']



"""
""" Mode-color mappings
"""
" Normal mode
let g:airline#themes#cubblegum#palette.normal = airline#themes#generate_color_map(s:BlueBg, s:MdGrayBg, s:DkGrayBg)
let g:airline#themes#cubblegum#palette.normal_modified = {
      \ 'airline_c': s:RedDkBg,
      \ }
let g:airline#themes#cubblegum#palette.normal_paste = {
      \ 'airline_a': s:RedBg,
      \ }

" Insert mode
let g:airline#themes#cubblegum#palette.insert            = airline#themes#generate_color_map(s:GreenBg, s:MdGrayBg, s:DkGrayBg)
let g:airline#themes#cubblegum#palette.insert_modified   = g:airline#themes#cubblegum#palette.normal_modified
let g:airline#themes#cubblegum#palette.insert_paste      = g:airline#themes#cubblegum#palette.normal_paste

" Replace mode
let g:airline#themes#cubblegum#palette.replace           = airline#themes#generate_color_map(s:OrangeBg, s:MdGrayBg, s:DkGrayBg)
let g:airline#themes#cubblegum#palette.replace_modified  = g:airline#themes#cubblegum#palette.normal_modified
let g:airline#themes#cubblegum#palette.replace_paste     = g:airline#themes#cubblegum#palette.normal_paste

"" Visual mode
let g:airline#themes#cubblegum#palette.visual            = airline#themes#generate_color_map(s:YellowBg, s:MdGrayBg, s:DkGrayBg)
let g:airline#themes#cubblegum#palette.visual_modified   = g:airline#themes#cubblegum#palette.normal_modified
let g:airline#themes#cubblegum#palette.visual_paste      = g:airline#themes#cubblegum#palette.normal_paste

" Inactive window
let g:airline#themes#cubblegum#palette.inactive          = airline#themes#generate_color_map(s:DkGrayBg, s:DkGrayBg, s:DkGrayBg)
let g:airline#themes#cubblegum#palette.inactive_modified = g:airline#themes#cubblegum#palette.normal_modified
"let g:airline#themes#cubblegum#palette.inactive_paste    = g:airline#themes#cubblegum#palette.normal_paste



"""
""" Widget-color mappings
"""
" Warning widget
let g:airline#themes#cubblegum#palette.normal.airline_warning           = s:RedBg
let g:airline#themes#cubblegum#palette.normal_modified.airline_warning  = s:RedBg
let g:airline#themes#cubblegum#palette.normal_paste.airline_warning     = s:RedBg
let g:airline#themes#cubblegum#palette.insert.airline_warning           = s:RedBg
let g:airline#themes#cubblegum#palette.insert_modified.airline_warning  = s:RedBg
let g:airline#themes#cubblegum#palette.insert_paste.airline_warning     = s:RedBg
let g:airline#themes#cubblegum#palette.visual.airline_warning           = s:RedBg
let g:airline#themes#cubblegum#palette.visual_modified.airline_warning  = s:RedBg
let g:airline#themes#cubblegum#palette.visual_paste.airline_warning     = s:RedBg
let g:airline#themes#cubblegum#palette.replace.airline_warning          = s:RedBg
let g:airline#themes#cubblegum#palette.replace_modified.airline_warning = s:RedBg
let g:airline#themes#cubblegum#palette.replace_paste.airline_warning    = s:RedBg
" Nothing for palette.inactive because inactive viewports don't show warning
" widget

" Tabline widget
" Names from ~/.vim-plug/vim-airline/autoload/airline/extensions/tabline.vim
let g:airline#themes#cubblegum#palette.tabline = {}
let g:airline#themes#cubblegum#palette.tabline.airline_tab          = s:MdGrayBg
let g:airline#themes#cubblegum#palette.tabline.airline_tabsel       = s:LtGrayBg
let g:airline#themes#cubblegum#palette.tabline.airline_tabfill      = s:DkGrayBg
let g:airline#themes#cubblegum#palette.tabline.airline_tabtype      = s:Blue
let g:airline#themes#cubblegum#palette.tabline.airline_tabmod       = s:RedLtBg
let g:airline#themes#cubblegum#palette.tabline.airline_tabmod_unsel = s:RedMdBg
let g:airline#themes#cubblegum#palette.tabline.airline_tabhid       = s:DkGrayBg

" What are these used for?
"let g:airline#themes#cubblegum#palette.tabline.airline_tabsel_right
"let g:airline#themes#cubblegum#palette.tabline.airline_tab_right
"let g:airline#themes#cubblegum#palette.tabline.airline_tabmod_right
"let g:airline#themes#cubblegum#palette.tabline.airline_tabhid_right
"let g:airline#themes#cubblegum#palette.tabline.airline_tabmod_unsel_right

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#cubblegum#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ s:gui_orange, s:gui_med_gray_hi, s:cterm_orange, s:cterm_med_gray_hi, '' ] ,
      \ [ s:gui_orange, s:gui_med_gray_lo, s:cterm_orange, s:cterm_med_gray_lo, '' ] ,
      \ [ s:gui_dark_gray, s:gui_orange, s:cterm_dark_gray, s:cterm_orange, 'bold' ] )
