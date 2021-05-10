"" Sessions and Startify
let g:session_autosave = 'no'
let g:session_autoload = 'no'
let g:session_persist_font=0
let g:session_persist_colors=0
let g:session_persist_globals=0
let g:session_default_name='cooper'
let g:startify_custom_indices = map(range(1,100), 'string(v:val)')
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
                  
                  
            
let g:startify_lists = [
      \ { 'header': ['  Sessions'],   'type': 'sessions',       },
      \ { 'header': ['  NERDTree'],   'type': function('s:nerdtreeBookmarks')},
      \ { 'header': ['  Bookmarks'],  'type': 'bookmarks',      },
      \ { 'header': ['  MRU'],        'type': 'files',          },
      \ { 'header': ['  Commands'],   'type': 'commands',       },
      \ ]
                  

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
