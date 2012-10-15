" Vim syntax file
" Language: cue
"

if exists("b:current_syntax")
    finish
endif

syn case ignore
syn keyword cueKeywords
      \ CATALOG CDTEXTFILE FILE FLAGS INDEX ISRC PERFORMER POSTGAP
      \ PREGAP SONGWRITER TITLE TRACK
syn region cueString start=+"+  skip=+\\"+  end=+"+
syn match cueComment /\<REM\ .*$/
syn match cueNumber /[0-9][0-9]*/
syn match cueTime /[0-9][0-9]*\:[0-9:]*/

hi def link cueKeywords Statement
hi def link cueString   String
hi def link cueComment  Comment
hi def link cueNumber   Number
hi def link cueTime     Float

let b:current_syntax = "cue"
