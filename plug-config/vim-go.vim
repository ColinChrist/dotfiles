
 "remap for go
 map <C-n> :cnext<CR>
 map <C-m> :cprevious<CR>
 nnoremap <leader>a :cclose<CR>
 autocmd FileType go nmap <leader>r  <Plug>(go-run)
 autocmd FileType go nmap <leader>ta  <Plug>(go-test)
 autocmd FileType go nmap <leader>tf  :GoTestFunc<CR>
 autocmd FileType go nmap <leader>gt  norm! "aywmAf("byi(f("cYi(u"cyi(:AGottemp	a	b		R€kba[[ftl~
 " run :GoBuild or :GoTestCompile based on the go file
  function! s:build_go_files()
    let l:file = expand('%')
      if l:file =~# '^\f\+_test\.go$'
        call go#test#Test(0, 1)
      elseif l:file =~# '^\f\+\.go$'
        call go#cmd#Build(0)
      endif
    endfunction

" vim-go configs
 let g:go_fmt_command = "goimports"
 let g:go_auto_type_info = 1
 let g:go_auto_sameids = 1
 " disable vim-go :GoDef short cut (gd)
 " this is handled by LanguageClient [LC]
 "let g:go_def_mapping_enabled = 0

 autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>                  
 autocmd FileType go nmap <Leader>gc <Plug>(go-coverage-toggle)                 
 autocmd FileType go nmap <Leader>f :GoDecls<CR>
 autocmd FileType go nmap <Leader>fa :GoDeclsDir<CR>
 autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
 autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
 autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
 autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

 "go debug
 autocmd FileType go nmap <Leader>dt :GoDebugTest<CR>
 autocmd FileType go nmap <Leader>db :GoDebugBreakpoint<CR>
 autocmd FileType go nmap <Leader>dr :GoDebugRestart<CR>
 autocmd FileType go nmap <Leader>dc :GoDebugContinue<CR>
 autocmd FileType go nmap <Leader>dn :GoDebugNext<CR>
 autocmd FileType go nmap <Leader>do :GoDebugStepOut<CR>
 autocmd FileType go nmap <Leader>ds :GoDebugStop<CR>
 autocmd FileType go nmap <Leader>dv :GoDebugSet
 let g:go_debug_windows = {
      \ 'vars':       'rightbelow 60vnew',
      \ 'stack':      'rightbelow 10new',
\ }
