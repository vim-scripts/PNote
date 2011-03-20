"
" File: Power Note Syntax
"
" Description:
" This syntax file comes along a Vim script that should be at
" ftplugin/pnote.vim  Go there for more info on Power Note
"
" Author: Francisco Garcia Rodriguez <public@francisco-garcia.net>
"
" Licence: Copyright (C) 2010 Francisco Garcia Rodriguez
"
" This program is free software: you can redistribute it and/or
" modify it under the terms of the GNU General Public License.
" See http://www.gnu.org/licenses/gpl.html
" 
" This program is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty of
" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
" GNU General Public License for more details.
" 
" http://www.gnu.org/licenses/gpl.html
"
" Version:
" History:
"   (see plugin/pnote.vim)
"

if exists("b:current_syntax")
  finish
endif
let b:current_syntax = "pnote"

syn keyword	confTodo	contained TODO FIXME XXX 
syn match	confComment	"^#\s.*" contains=confTodo
syn region	confString	start=+"+ skip=+\\\\\|\\"+ end=+"+ oneline
syn region	confString	start=+'+ skip=+\\\\\|\\'+ end=+'+ oneline
syn match       KEYWORD         "#\w\+#"hs=s+1,he=e-1
syn match       SUB_COMMENT     "\s\+\(#\|--\)\s.*"hs=s+1
syn match       ANOTATION       "\s\+;\s.*"
syn match       COMMAND         "\s*$\s[^#]*" contains=Comment
syn match	LIST	        "^\s\+\*"
syn match	BIBLIO	        "\[\w\+\]"

"syn region	block	start=+^#+ end=+^\s*$+ contains=inside,confComment,ANOTATION
"syn region	inside	start=+^ + skip=+$\+ + end=+^\s*$+ contained fold 

"syn region	inside	start=+^ + end=+^\s*$+ fold 

" Define the default highlighting.
" Only used when an item doesn't have highlighting yet
hi def link confComment	Comment
hi def link confTodo	Todo
hi def link confString	String
hi SUB_COMMENT guifg=darkcyan 
hi ANOTATION guifg=lightgreen
hi COMMAND guifg=lightcyan
hi LIST guifg=magenta
hi BIBLIO guifg=magenta
hi KEYWORD guifg=lightred 


" vim: ts=8 sw=2
