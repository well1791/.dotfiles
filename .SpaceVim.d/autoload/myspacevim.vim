func! myspacevim#before() abort
  set virtualedit=onemore

  " show all uncompliable symbols
  set listchars=tab:>-,trail:~,extends:>,precedes:<
  set list

  " javascript
  let g:tern#command = ["tern"]
  let g:tern#arguments = ["--persistent"]

  " typescript
  let g:neoformat_typescriptreact_prettier = {
    \ 'exe': 'prettier',
    \ 'args': ['--stdin', '--stdin-filepath', '"%:p"', '--parser', 'typescript'],
    \ 'stdin': 1
    \ }
  let g:neoformat_enabled_typescriptreact = ['tsfmt', 'prettier']

  " disable ctags
  let g:gutentags_ctags_exclude = [ "*.js", "*.jsx", "*.ts", "*.tsx", "*.css", "build", "vendor", ".git", "node_modules", "*.vim/bundle/*", "out" ]

endf


func! myspacevim#after() abort
  set norelativenumber
  set nonumber
  set nospell
  set nofoldenable
endf
