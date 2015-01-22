"No compatible
set nocp

" Add vim bundle to runtimepath
" And pathogen.vim is available to us.
" set runtimepath+=~/.vim_runtime

" powerline
" set rtp+=~/.local/lib/python2.7/site-packages/powerline/bindings/vim

" colour support
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Load pathogen paths
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call pathogen#infect()
" Add the docs
call pathogen#helptags()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" For regular expressions turn magic on
set magic

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Makes search act like search in modern browsers
set incsearch 

" Show command typed
set showcmd

" Show whitespace characters
set list

" Custom whitespace characters
set listchars=tab:»\ ,nbsp:·,trail:·,eol:¶,extends:›,precedes:‹

" Turn on the WiLd menu
set wildmenu

" Use mosue
set mouse=a

" double click for insert mode
nmap <2-LeftMouse> <ESC>i

" Share system clipboard
set clipboard=unnamedplus

" Better auto complete
set completeopt=longest,menu

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=10

"Always show current position
set ruler

" Show line number
set nu

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

" Highlight search results
set hlsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" Show matching brackets when text indicator is over them
set showmatch 

" How many tenths of a second to blink when matching brackets
set mat=2

" Show column line at 100 chars
set colorcolumn=100

" Only show tabline if there is more than one buffer open
set showtabline=1

" Specify the behavior when switching between buffers 
set switchbuf=useopen,usetab,newtab

" No code folding
set nofoldenable

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

function! WindowNumber()
    let str=tabpagewinnr(tabpagenr())
    return str
endfunction

set statusline=%<%t\ (%{WindowNumber()})\ %h%m%r%=%-14.(%l,%c%V%)\ %P

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable 

" Set customed color scheme
set background=dark

" default colour scheme
colorscheme xoria256

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Softer colours for whitespace stuff
hi SpecialKey   ctermfg=235 ctermbg=234
hi NonText      ctermfg=235 ctermbg=234
hi ExtraWhitespace ctermfg=236 ctermbg=235
hi MatchUnderCursor cterm=underline
hi colorcolumn ctermbg=233

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use tabs
set noexpandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent

" set wrap "Wrap lines
set nowrap

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Remember info about open buffers on close
set viminfo^=%

" Black hole delete
vmap <Delete> "_d
nmap <Delete> "_x

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" =><leader> mapping
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fast saving
nmap <leader>w :w!<cr>

" Fast quit
nmap <leader>q :q!<cr>

" Disable highlight when <leader><cr> is pressed
map <silent> <leader>, :noh<cr>

" Close the current buffer
map <leader>bc :Bclose<cr>

" Close all the buffers
map <leader>ba :1,1000 bc!<cr>

" system clipboard
map <leader>y :!xclip -f -sel clip<cr>
map <leader>p :-1r !xclip -o -sel clip<cr>

" Fast editing and reloading of vimrc configs
map <leader>e :e! ~/.vimrc<cr>
autocmd! bufwritepost .vimrc source ~/.vimrc

" Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Turn persistent undo on 
"    means that you can undo even when you close a buffer/VIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set undodir=~/.vim/.undo
set undofile

" snippets key
let g:UltiSnipsExpandTrigger="<c-j>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CTRL-P
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0
let g:ctrlp_map = '<c-p>'
map <c-b> :CtrlPBuffer<cr>
map <c-m> :CtrlPMRU<cr>
let g:ctrlp_max_height = 15
map <cr> <cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Gundo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <c-g> :GundoToggle<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeShowHidden=1
map <c-n> :NERDTreeToggle<cr>

" lowercase s for surround.vim
vmap s S

" repmo
:let repmo_key = ";"
:let repmo_revkey = ","

:let g:repmo_mapmotions = "j|k h|l <C-E>|<C-Y> zh|zl ]m|[m ]M|[M )|( }|{"

" Cursor stuff
" opens vim with red cursor
silent !echo -ne "\033]12;red\007"

function! FixNCursor()
	silent !echo -ne "\033]12;red\007"
	redraw!
endfunction

function! FixICursor()
	silent !echo -ne "\033]12;white\007"
	redraw!
endfunction

nmap <silent> <c-l> :call FixNCursor()<cr>:startinsert<cr><esc>
imap <silent> <c-l> <esc>:call FixICursor()<cr>i

map <silent> <c-h> :JSHintUpdate<cr>

" use white cursor for insert mode
let &t_SI = "\<Esc>]12;white\x7"

" use a red cursor otherwise
let &t_EI = "\<Esc>]12;red\x7"

" Restore terminal cusor color to white
au VimLeave * silent !echo -ne "\033]12;white\007"

" change cursor shape for gnome-terminal
au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
au VimEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"

" Disable arrow keys to break bad habbits
"for prefix in ['i', 'n', 'v']
"  for key in ['<Up>', '<Down>', '<Left>', '<Right>']
"    exe prefix . "noremap " . key . " <Nop>"
"  endfor
"endfor

" Easy window switching
let i = 1
while i <= 9
    execute 'nnoremap <c-w>' . i . ' :' . i . 'wincmd w<CR>'
    let i = i + 1
endwhile

" syntax checking
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
