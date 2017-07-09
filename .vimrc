set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" ZOOMWIN
Plugin 'vim-scripts/ZoomWin'

" Emmet
Plugin 'mattn/emmet-vim'

" Git commands
Plugin 'tpope/vim-fugitive'

" Commenter
Plugin 'scrooloose/nerdcommenter'

" Rspec Highlighting
Plugin 'Keithbsmiley/rspec.vim'

" Badwolf
Plugin 'sjl/badwolf'

" NerdTree
Plugin 'scrooloose/nerdtree'

" CtrlP
Plugin 'ctrlpvim/ctrlp.vim'

" Haml
Plugin 'tpope/vim-haml'

" Coffee Script
Plugin 'kchmck/vim-coffee-script'

" Endwise
Plugin 'tpope/vim-endwise'

" Matchit
Plugin 'Spaceghost/vim-matchit'

" Status Line
Plugin 'bling/vim-airline'

" Groovy
Plugin 'vim-scripts/groovy.vim'

" Dispatch
Plugin 'tpope/vim-dispatch'

" Emblem
Plugin 'heartsentwined/vim-emblem'

" Vim Test
Plugin 'janko-m/vim-test'

" Elixir
Plugin 'elixir-lang/vim-elixir'

" Javascript

Plugin 'pangloss/vim-javascript'

" React

Plugin 'mxw/vim-jsx'

call vundle#end()

syntax enable
filetype plugin indent on

set t_Co=256
set background=dark
colorscheme badwolf

au! BufNewFile,BufRead crontab.* set nobackup | set nowritebackup

" Custom Mappings
imap jj <Esc>
imap jk <Esc>
imap dw <C-w>
imap ;; <c-y>,
imap :zz :ZoomWin<cr>
map <Tab> :NERDTreeToggle <cr>
nnoremap <leader>n :NERDTreeToggle <cr>
nn <leader>zz :ZoomWin<cr>

" Vim Test mappings
nmap ;rr :!elixir %<cr>
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>a :TestSuite<CR>

" UI
set guifont=*
set guifont=Monaco:h10
set nowrap
set hlsearch
set mouse=ncr
set tabstop=2
set softtabstop=2
set shiftwidth=2
set noswapfile
set expandtab
set backspace=indent,eol,start
set visualbell
set shell=/bin/sh
set incsearch
set number
  
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_fugitive_prefix = ''
let g:airline_theme='hybrid'
let g:rspec_runner = "os_x_iterm2"
let g:rspec_command = "Dispatch! bin/spring rspec {spec}"
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" Buffers
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.jade set filetype=haml
au BufNewFile,BufRead *.hamljs set filetype=haml
au BufNewFile,BufRead *.slim set filetype=haml
au BufNewFile,BufRead *.thor set filetype=ruby

" CLIPBOARD
let os=substitute(system('uname'), '\n', '', '')
if os == 'Darwin' || os == 'Mac'
  vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
elseif os == 'Linux'
  vmap <C-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>
endif

function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

