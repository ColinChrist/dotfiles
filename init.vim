call plug#begin('~/.vim/plugged')

" make sure you use single quotes
"
" shorthand notation; fetches https://github.com/junegunn/vim-easy-align
 Plug 'junegunn/vim-easy-align'

" any valid git url is allowed
 Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" multiple Plug commands can be written in a single line using | separators
 Plug 'sirver/ultisnips' | Plug 'honza/vim-snippets'

 " on-demand loading
 Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
 Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

 " using a non-master branch
 Plug 'rdnetto/ycm-generator', { 'branch': 'stable' }

 " plugin options
 Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

 " plugin outside ~/.vim/plugged with post-update hook
 Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }


 Plug 'junegunn/fzf.vim'

 Plug 'jparise/vim-graphql'

" Plug 'airblade/vim-rooter'

 Plug 'tpope/vim-surround'

 "go area
 Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
 Plug 'AndrewRadev/splitjoin.vim'
 Plug 'SirVer/ultisnips'
 Plug 'ctrlpvim/ctrlp.vim'
 Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
 
 " syntax highlighting for avro files
 Plug 'gurpreetatwal/vim-avro'

 " highlighting for json
 Plug 'elzr/vim-json'
 Plug 'tpope/vim-fugitive'
 Plug 'phanviet/vim-monokai-pro'
 Plug 'vim-airline/vim-airline'
 Plug 'flazz/vim-colorschemes'

 " vim game to become faster
 Plug 'ThePrimeagen/vim-be-good'

 Plug 'vimwiki/vimwiki'

 Plug 'gabrielelana/vim-markdown'
 " initialize plugin system
 call plug#end()
 set relativenumber
 set ignorecase
 set splitbelow
 set splitright
 set guicursor=
 set noshowmatch
 set nohlsearch
 set hidden
 set noerrorbells
 set tabstop=4 softtabstop=4
 set shiftwidth=4
 set expandtab
 set smartindent
 set nu
 set nowrap
 set smartcase
 set noswapfile
 set nobackup
 set undodir=~/.vim/undodir
 set undofile
 set incsearch
 set termguicolors
 set scrolloff=8
 set autowrite
 " Give more space for displaying messages.
 set cmdheight=2
 
 " Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
 " delays and poor user experience.
 set updatetime=50

 " Don't pass messages to |ins-completion-menu|.
 set shortmess+=c

 set colorcolumn=80
 highlight ColorColumn ctermbg=0 guibg=lightgrey
 " --- vim go (polyglot) settings.
 let g:go_highlight_build_constraints = 1
 let g:go_highlight_extra_types = 1
 let g:go_highlight_fields = 1
 let g:go_highlight_functions = 1
 let g:go_highlight_methods = 1
 let g:go_highlight_operators = 1
 let g:go_highlight_structs = 1
 let g:go_highlight_types = 1
 let g:go_highlight_function_parameters = 1
 let g:go_highlight_function_calls = 1
 let g:go_highlight_generate_tags = 1
 let g:go_highlight_format_strings = 1
 let g:go_highlight_variable_declarations = 1
 let g:go_auto_sameids = 1
 
 colorscheme gruvbox
 set background=dark
 
 if executable('rg')
     let g:rg_derive_root='true'
 endif

 let loaded_matchparen = 1
 let mapleader = " "

 let g:netrw_browse_split = 2
 let g:vrfr_rg = 'true'
 let g:netrw_banner = 0
 let g:netrw_winsize = 25
 
 " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
 let g:UltiSnipsExpandTrigger="<tab>"
 let g:UltiSnipsJumpForwardTrigger="<c-b>"
 let g:UltiSnipsJumpBackwardTrigger="<c-z>"
 
 " If you want :UltiSnipsEdit to split your window.
 let g:UltiSnipsEditSplit="vertical"
 
" vim-go configs
 let g:go_fmt_command = "goimports"
 let g:go_auto_type_info = 1
 let g:go_auto_sameids = 1
 " disable vim-go :GoDef short cut (gd)
 " this is handled by LanguageClient [LC]
 "let g:go_def_mapping_enabled = 0
 
"remaps
 vnoremap J :m '>+1<CR>gv=gv
 vnoremap K :m '<-2<CR>gv=gv
 nnoremap <leader>vwm :colorscheme gruvbox<bar>:set background=dark<CR>

 nnoremap , <C-w><C-w>

 "remap for go
 map <C-n> :cnext<CR>
 map <C-m> :cprevious<CR>
 nnoremap <leader>a :cclose<CR>
 autocmd FileType go nmap <leader>r  <Plug>(go-run)
 autocmd FileType go nmap <leader>t  <Plug>(go-test)
 " run :GoBuild or :GoTestCompile based on the go file
  function! s:build_go_files()
    let l:file = expand('%')
      if l:file =~# '^\f\+_test\.go$'
        call go#test#Test(0, 1)
      elseif l:file =~# '^\f\+\.go$'
        call go#cmd#Build(0)
      endif
    endfunction

 autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>                  
 autocmd FileType go nmap <Leader>c <Plug>(go-coverage-toggle)                 
 autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
 autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
 autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
 autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

 "remap for git
 nmap <leader>gh :diffget //3<CR>
 nmap <leader>gu :diffget //2<CR>
 nmap <leader>gs :G<CR>

 "remap nerdtree
 map <C-n> :NERDTreeToggle<CR>
"-------------------------------------------------------------------------------------------------
" coc.nvim default settings
"
"-------------------------------------------------------------------------------------------------

" if hidden is not set, TextEdit might fail.
set hidden
" Better display for messages
set cmdheight=2
" Smaller updatetime for CursorHold & CursorHoldI

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
    endfunction

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by
"other plugin.
inoremap <silent><expr> <TAB>
   \ pumvisible() ? "\<C-n>" :
   \ <SID>check_back_space() ? "\<TAB>" :
   \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" :
"\<C-h>"

" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()

function! s:check_back_space() abort
let col = col('.') - 1
return !col || getline('.')[col - 1]  =~# '\s'
endfunction
"Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use U to show documentation in preview window
nnoremap <silent> U :call <SID>show_documentation()<CR>

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes


""""""""""""""""""""""""""""""""""""""""""""""""""""
"                   FZF Config
""""""""""""""""""""""""""""""""""""""""""""""""""""
" This is the default extra key bindings
"let g:fzf_action = {
"\ 'ctrl-t': 'tab split',
"\ 'ctrl-x': 'split',
          "\ 'ctrl-v': 'vsplit' }
"
"" Enable per-command history.
"" CTRL-N and CTRL-P will be automatically bound to next-history and
"" previous-history instead of down and up. If you don't like the change,
"" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
"let g:fzf_history_dir = '~/.local/share/fzf-history'
"
"map <C-f> :Files<CR>
"map <leader>b :Buffers<CR>
"nnoremap <leader>g :Rg<CR>
"nnoremap <leader>t :Tags<CR>
"nnoremap <leader>m :Marks<CR>
"
"
"let g:fzf_tags_command = 'ctags -R'
"" Border color
"let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }
"
"let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
"let $FZF_DEFAULT_COMMAND="rg --files --hidden"
"
"
"" Customize fzf colors to match your color scheme
"let g:fzf_colors =
"\ { 'fg':      ['fg', 'Normal'],
"\ 'bg':      ['bg', 'Normal'],
"\ 'hl':      ['fg', 'Comment'],
"\ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"\ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"\ 'hl+':     ['fg', 'Statement'],
"\ 'info':    ['fg', 'PreProc'],
"\ 'border':  ['fg', 'Ignore'],
"\ 'prompt':  ['fg', 'Conditional'],
"\ 'pointer': ['fg', 'Exception'],
"\ 'marker':  ['fg', 'Keyword'],
"\ 'spinner': ['fg', 'Label'],
"\ 'header':  ['fg', 'Comment'] }
"
""Get Files
"command! -bang -nargs=? -complete=dir Files
"\ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)
"
"
"" Get text in files with Rg
"command! -bang -nargs=* Rg
"\ call fzf#vim#grep(
"\   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
"\   fzf#vim#with_preview(), <bang>0)
"
"" Ripgrep advanced
"function! RipgrepFzf(query, fullscreen)
"let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
"let initial_command = printf(command_fmt, shellescape(a:query))
"let reload_command = printf(command_fmt, '{q}')
"let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
"call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
"endfunction
"
"command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)
"
"" Git grep
"command! -bang -nargs=* GGrep
"\ call fzf#vim#grep(
"\   'git grep --line-number '.shellescape(<q-args>), 0,
"\   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)
