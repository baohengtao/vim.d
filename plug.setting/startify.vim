"" Sessions and Startify
let g:session_autosave = 'no'
let g:session_autoload = 'no'
let g:session_persist_font=0
let g:session_persist_colors=0
let g:session_persist_globals=0
let g:session_default_name='cooper'
let g:startify_custom_indices = map(range(1,100), 'string(v:val)')
let g:startify_custom_indices = split('a s d f g h j k l')
let g:startify_bookmarks = [{'v':$XDG_CONFIG_HOME . '/nvim'}]
"" Bookmarks
function! s:nerdtreeBookmarks()
    " List NERDTree bookmarks.
    let bookmarksFile = g:NERDTreeBookmarksFile
    if filereadable(bookmarksFile)
        let bookmarksStrs = readfile(bookmarksFile)
        let bookmarks = []
        for str in bookmarksStrs
            " Ignore blank lines.
            if str !=# ''
                let name = substitute(str, '^\(.\{-}\) .*$', '\1', '')
                let path = substitute(str, '^.\{-} \(.*\)$', '\1', '')
                let path = fnamemodify(path, ':p')

                call add(bookmarks, {'line': name, 'path': path})
            endif
        endfor
        return bookmarks
    endif

    return []
endfunction
                  
function! s:mru_dirs()
  " get 5 most recently used working directories
  let dirs = uniq(map(copy(v:oldfiles), 'fnamemodify(v:val, ":h")'))[:4]
  return map(dirs, '{"line": fnamemodify(v:val, ":."), "path": v:val}')
endfunction
                
            
let g:startify_lists = [
      \ { 'header': ['  Sessions'],   'type': 'sessions',       },
      \ { 'header': ['  NERDTree'],   'type': function('s:nerdtreeBookmarks')},
      \ { 'header': ['  MRU'],     'type': function('s:mru_dirs'),          },
      \ { 'header': ['  Commands'],   'type': 'commands',       },
      \ ]
                  
      " \ { 'header': ['  Bookmarks'],  'type': 'bookmarks',      },

if has('nvim')
  autocmd TabNewEntered * Startify
else
  autocmd BufWinEnter *
          \ if !exists('t:startify_new_tab')
          \     && empty(expand('%'))
          \     && empty(&l:buftype)
          \     && &l:modifiable |
          \   let t:startify_new_tab = 1 |
          \   Startify |
          \ endif
endif
