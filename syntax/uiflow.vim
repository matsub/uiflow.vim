if exists("b:uiflow_syntax")
  finish
endif
let b:uiflow_syntax = 1

syntax match uiflowTag /\[.*\]/
syntax match uiflowPreProc /^-\+$/
syntax region Normal matchgroup=uiflowPreProc start="=\+{" end="}"
syntax region Tag matchgroup=uiflowPreProc start="=\+>" end="$"
syntax match uiflowComment /#.*$/
highlight link uiflowTitle Title
highlight link uiflowTag Tag
highlight link uiflowPreProc PreProc
highlight link uiflowComment Comment
