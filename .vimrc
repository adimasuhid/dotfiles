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

" Vim Rspec
Plugin 'thoughtbot/vim-rspec'

" Dispatch
Plugin 'tpope/vim-dispatch'

" Emblem
Plugin 'heartsentwined/vim-emblem'

" Elixir
Plugin 'elixir-lang/vim-elixir'

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

" Rspec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" UI
set guifont=*
set guifont=Monaco:h10
set nowrap
set hlsearch
set mouse=ncr
set relativenumber
set tabstop=2
set softtabstop=2
set shiftwidth=2
set noswapfile
set expandtab
set backspace=indent,eol,start
set visualbell
set shell=/bin/sh
  
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_fugitive_prefix = ''
let g:airline_theme='hybrid'
let g:rspec_runner = "os_x_iterm2"
let g:rspec_command = "Dispatch! bin/spring rspec {spec}"

" Buffers
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.jade set filetype=haml
au BufNewFile,BufRead *.hamljs set filetype=haml
au BufNewFile,BufRead *.slim set filetype=haml

" CLIPBOARD
let os=substitute(system('uname'), '\n', '', '')
if os == 'Darwin' || os == 'Mac'
  vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>
elseif os == 'Linux'
  vmap <C-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR>:call system("xclip -i", ge
endif

function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

