" Vim syntax file
" Language: cue
"

if exists("b:current_syntax")
    finish
endif

syn case ignore
syn keyword keywords
      \ CATALOG CDTEXTFILE FILE FLAGS INDEX ISRC PERFORMER POSTGAP
      \ PREGAP SONGWRITER TITLE TRACK
syn region name start=+"+  skip=+\\"+  end=+"+
syn match rem /\<REM\ .*$/
syn match num /[0-9][0-9]*/
syn match time /[0-9][0-9]*\:[0-9:]*/

hi link keywords Statement
hi link name     String
hi link rem      Comment
hi link num      Number
hi link time     float

let b:current_syntax = "cue"
