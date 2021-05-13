let g:NERDTreeBookmarksFile = expand('$XDG_DATA_HOME') . '/nvim/bookmarks' 
let g:session_directory=$XDG_DATA_HOME . '/nvim/session'
let g:startify_session_directory = g:session_directory
let g:startify_session_dir = g:session_directory
let g:python3_host_prog = '/Users/htao/.local/workon/nvim/bin/python'
let g:virtualenv_auto_activate=1
let g:mapleader = "\<Space>"
let g:maplocalleader = ','
let g:Lf_ShortcutF = ""
let g:Lf_ShortcutB = ""
let g:UltiSnipsSnippetStorageDirectoryForUltiSnipsEdit=
  \ $XDG_CONFIG_HOME . '/nvim/coolsnips'
let g:UltiSnipsSnippetDirectories=["UltiSnips", "coolsnips"]
let g:UltiSnipsEditSplit="vertical"
let g:repl_stayatrepl_when_open = 0
let g:repl_program = {
			\	'python': ['ipython'],
			\	'default': ['zsh']
			\	}
