call plug#begin('~/.vim/plugged')

" make sure you use single quotes
"
" shorthand notation; fetches https://github.com/junegunn/vim-easy-align
 Plug 'junegunn/vim-easy-align'

" any valid git url is allowed
 Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" multiple Plug commands can be written in a single line using | separators
 "Plug 'sirver/ultisnips' | Plug 'honza/vim-snippets'

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
 Plug 'airblade/vim-rooter'

 Plug 'jparise/vim-graphql'

" Plug 'airblade/vim-rooter'

 Plug 'tpope/vim-surround'

 "go area
 Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
 Plug 'AndrewRadev/splitjoin.vim'
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

 Plug 'unblevable/quick-scope'
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
"set background=dark
let g:gruvbox_transparent_bg=1
 
 if executable('rg')
     let g:rg_derive_root='true'
 endif

 let loaded_matchparen = 1
 let mapleader = " "

 let g:netrw_browse_split = 2
 let g:vrfr_rg = 'true'
 let g:netrw_banner = 0
 let g:netrw_winsize = 25
 
 " NERDTree config
" enable line numbers
 let NERDTreeShowLineNumbers=1
 " make sure relative line numbers are used
 autocmd FileType nerdtree setlocal relativenumber

 
"remaps
 vnoremap J :m '>+1<CR>gv=gv
 vnoremap K :m '<-2<CR>gv=gv
 nnoremap <leader>vwm :colorscheme gruvbox<bar>:set background=dark<CR>

 nnoremap <leader>ni :tabnew ~/.config/nvim/init.vim<CR>
 nnoremap , <C-w><C-w>
 command! Reload :source ~/.config/nvim/init.vim

 "remap for git
 nmap <leader>gh :diffget //3<CR>
 nmap <leader>gu :diffget //2<CR>
 nmap <leader>gs :G<CR>

 "remap nerdtree
 map <C-n> :NERDTreeToggle<CR>

 
 source ~/.config/nvim/plug-config/vim-go.vim
 source ~/.config/nvim/plug-config/coc.vim
 source ~/.config/nvim/plug-config/fzf.vim
