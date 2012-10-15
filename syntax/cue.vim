" Vim syntax file
" Language: cue
"

if exists("b:current_syntax")
    finish
endif

syntax case ignore
syntax keyword keywords
      \ CATALOG CDTEXTFILE FILE FLAGS INDEX ISRC PERFORMER POSTGAP
      \ PREGAP SONGWRITER TITLE TRACK
syntax region name start=+"+  skip=+\\"+  end=+"+
syntax match rem /\<REM\ .*$/
syntax match num /[0-9][0-9]*/
syntax match time /[0-9][0-9]*\:[0-9:]*/

highlight link keywords Statement
highlight link name     String
highlight link rem      Comment
highlight link num      Number
highlight link time     float

let b:current_syntax = "cue"
