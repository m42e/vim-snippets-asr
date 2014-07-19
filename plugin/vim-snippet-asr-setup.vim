
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   This is a small script that setups a project variable for the snippets   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Automatically set the project name
"
"
if !exists('g:asr_workspace_dir')
   let g:asr_workspace_dir="workspace"
endif

augroup asr_project
   au!
   execute ":autocmd BufRead,BufNewFile */" . g:asr_workspace_dir . "/* let b:asr_project_name = substitute(getcwd().\"/\".@%, \".*".g:asr_workspace_dir."[\\\\\\\\/]\\\\([^/\\\\\\\\]*\\\\).*\", \"\\\\1\", \"\")"
augroup END

