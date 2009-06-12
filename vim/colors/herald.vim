" Vim color file
" Name:       herald.vim
" Author: 		Fabio Cevasco <h3rald@h3rald.com>
"	Version: 		0.1.0
"	Notes: Gvim-only

hi clear

if exists("syntax_on")
	syntax reset
endif

let colors_name = "herald"

set background=dark

" Set some syntax-related variables
let ruby_operators = 1

" Standard Highlighting
hi Normal 				guibg=#1F1F1F guifg=#D0D0D0 gui=none
hi Cursor 				guibg=#FFEE68	guifg=bg 			gui=none
hi CursorColumn		guibg=#000000 							gui=none
hi CursorLine			guibg=#000000 							gui=none
hi FoldColumn			guibg=bg 			guifg=#70BDF1	gui=none
hi LineNr					guibg=#000000	guifg=#696567 gui=none
hi StatusLine 		guibg=#000000 guifg=#696567 gui=none
hi StatusLineNC 	guibg=#25365a guifg=#696567 gui=none
hi ErrorMsg 			guibg=#A32024 guifg=#D0D0D0	gui=none
hi Search					guibg=#FF9E16	guifg=#000000	gui=none
hi IncSearch 			guibg=#FF9E16	guifg=#000000	gui=none

" Code Highlighting
hi Comment				guibg=bg 			guifg=#696567 gui=none
hi Constant				guibg=bg			guifg=#6DF584	gui=none	 
hi String 				guibg=bg 			guifg=#FFB539	gui=none
hi Error 					guibg=bg 			guifg=#FC4234 gui=none
hi Identifier 		guibg=bg 			guifg=#70BDF1	gui=none
hi Function 			guibg=bg 			guifg=#90CBF1	gui=none
hi Ignore 				guibg=bg 			guifg=bg			gui=none
hi MatchParen 		guibg=#FFA500 guifg=bg			gui=none
hi PreProc 				guibg=bg 			guifg=#BF81FA gui=none
hi Special 				guibg=bg 			guifg=#FFB539	gui=none
hi Todo 					guibg=bg			guifg=#FC4234	gui=bold
hi Underlined 		guibg=bg 			guifg=#FC4234	gui=underline    
hi Statement 			guibg=bg 			guifg=#E783E9	gui=none
hi Operator				guibg=bg 			guifg=#FC6984	gui=none
hi Delimiter			guibg=bg 			guifg=#FFEC48	gui=none
hi Type 					guibg=bg 			guifg=#FFEE68	gui=none
hi Exception			guibg=bg 			guifg=#FC4234 gui=none

" HTML-specific formatting
hi htmlBold									guibg=bg guifg=fg gui=bold
hi htmlBoldItalic 					guibg=bg guifg=fg gui=bold,italic
hi htmlBoldUnderline 				guibg=bg guifg=fg gui=bold,underline
hi htmlBoldUnderlineItalic 	guibg=bg guifg=fg gui=bold,underline,italic
hi htmlItalic 							guibg=bg guifg=fg gui=italic
hi htmlUnderline 						guibg=bg guifg=fg gui=underline
hi htmlUnderlineItalic 			guibg=bg guifg=fg gui=underline,italic

hi! default link bbcodeBold htmlBold
hi! default link bbcodeBoldItalic htmlBoldItalic
hi! default link bbcodeBoldItalicUnderline htmlBoldUnderlineItalic
hi! default link bbcodeBoldUnderline htmlBoldUnderline
hi! default link bbcodeItalic htmlItalic
hi! default link bbcodeItalicUnderline htmlUnderlineItalic
hi! default link bbcodeUnderline htmlUnderline

" TODO Spelling formatting
if has("spell")
	hi SpellBad 	guisp=#ee2c2c gui=undercurl
	hi SpellCap 	guisp=#2c2cee gui=undercurl
	hi SpellLocal guisp=#2ceeee gui=undercurl
	hi SpellRare 	guisp=#ee2cee gui=undercurl
endif
