" Vim syntax file
" Language:	   Glyph
" Last Change: 2010-04-11
" Author:      Fabio Cevasco <h3rald@h3rald.com>

if exists("b:current_syntax")
  finish
endif

setlocal autoindent


syntax region glyphMacro 				matchgroup=glyphDelimiter 				start=/[^\[\]|\\ ]\+\[/ms=e 		end=/\]/me=s 		skip=/\\\[\|\\\]/ 		contains=glyphMacro,glyphQuotingMacro
syntax region glyphQuotingMacro matchgroup=glyphQuotingDelimiter 	start=/[^\[\]|\\ ]\+\[=/ms=e-1 	end=/=\]/ms=s-1 skip=/\\\[=\|\\\=\]/ 	contains=glyphEscapedText

syntax match glyphEscape 						/\\./
syntax match glyphMacroName					/[^\[\]|\\ ]\+\[/me=e-1 
syntax match glyphDelimiter 				/\[\|\]\||/
syntax match glyphQuotingDelimiter 	/\[=\|=\]/

syntax region glyphEscapedText 	matchgroup=glyphQuotingDelimiter 	start=/\[=/ 										end=/=\]/ 

" Highlighting
highlight link glyphMacroName					Function
highlight link glyphEscapedText 			String
highlight link glyphEscape			 			Special
highlight link glyphDelimiter 				Delimiter
highlight link glyphQuotingDelimiter 	Special

let b:current_syntax = "glyph"
