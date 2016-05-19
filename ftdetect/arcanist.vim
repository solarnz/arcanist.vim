if !empty($TMPDIR)
    let s:tmp = "$TMPDIR"
else
    let s:tmp = '/tmp'
endif

execute "au BufNewFile,BufRead " . s:tmp . "/*/new-commit setlocal filetype=arcanistdiff"
execute "au BufNewFile,BufRead " . s:tmp . "/*/differential-edit-revision-info setlocal filetype=arcanistdiff"
execute "au BufNewFile,BufRead .arc{config,lint,unit} setlocal filetype=json"
