" glitch1 ASSEMBLER SYNTAX FILE

if exists("b:current_syntax")
  finish
endif

syn keyword glitchSpecial \$
syn keyword glitchReg a b c d f h l z
syn keyword glitchTodo contained TODO
syn match glitchComment ";.*$" contains=glitchTodo
syn match glitchDirective "^\s*[@][a-zA-Z]\+"
syn match glitchMacroArg "%[a-zA-Z0-9_]\+"
syn match glitchNumber "0x[0-9a-fA-F]\+"
syn match glitchNumber "\<[0-9]\+D\=\>"
syn match glitchOp "^\s*[a-zA-Z0-9_]\+\s"
syn match glitchOp "^\s*[a-zA-Z0-9_]\+$"
syn match glitchMicroOp "^\s*[~]\=[a-zA-Z0-9_]\+[,]\s*\([~]\=[a-zA-Z0-9_]\+[,]\=\s*\)\+"

" syn region glitchOp start='^' end='$'
syn region glitchLabel start="^\s*[a-zA-Z0-9_.]" end=":" oneline contains=glitchLabelName,glitchMacroArg,glitchAddr
syn region glitchString start='"' end='"'
syn region glitchAddr start='\[' end='\]' contains=glitchMacroArg,glitchAddrLabel

syn match glitchLabelName "^[a-zA-Z0-9_\.]\+:\=" contained
syn match glitchAddrLabel '[a-zA-Z0-9_\.]\+' contained

let b:current_syntax = "glitch1"
hi def link glitchSpecial Special
hi def link glitchTodo Todo
hi def link glitchComment Comment
hi def link glitchLabelName Label
hi def link glitchAddrLabel Label
hi def link glitchDirective Macro
hi def link glitchOp Function
hi def link glitchMicroOp Function
hi def link glitchMacroArg Special
hi def link glitchReg Identifier
hi def link glitchNumber Number
hi def link glitchString String