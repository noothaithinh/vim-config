""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle plugins
"
"
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" quick creat file
Plugin 'duggiefresh/vim-easydir'

" vim dirdiff
Plugin 'DirDiff.vim'

" abolish
Plugin 'tpope/vim-abolish'

" " vim buffer line
" Plugin 'bling/vim-bufferline'

" " buffer as tabs
" Plugin 'ap/vim-buftabline'

" mark management
Plugin 'jeetsukumaran/vim-markology'

" search easymotion
Plugin 'easymotion/vim-easymotion'

" search ag, need install the_silver_searcher from:
" https://github.com/ggreer/the_silver_searcher#installing
Plugin 'rking/ag.vim'

" powerline 
Plugin 'lokaltog/vim-powerline'

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" YankRing
Plugin 'YankRing.vim'

" CtrlP fuzzy finder
Plugin 'ctrlpvim/ctrlp.vim'

" " Multiple cursors
" Plugin 'terryma/vim-multiple-cursors'

" vim-airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" vim-fugitive
Plugin 'tpope/vim-fugitive'

" vim-commentary
Plugin 'tpope/vim-commentary'

" vim-localvimrc
Plugin 'embear/vim-localvimrc'

" vim-unimpaired
Plugin 'tpope/vim-unimpaired'

" vim-sensible to get some sensible default settings
Plugin 'tpope/vim-sensible'

" vim-surround
Plugin 'tpope/vim-surround'

" vim-repeat
Plugin 'tpope/vim-repeat'

" Color schemes!
Plugin 'flazz/vim-colorschemes'

" Syntastic syntax checking
Plugin 'scrooloose/syntastic'

" delimitMate for auto closing of parens, brackets, etc
Plugin 'Raimondi/delimitMate'

" Tern-based JavaScript intelligent editing support
" Be sure to run `npm install` in the `bundle/tern_for_vim` folder
Plugin 'marijnh/tern_for_vim'

" YouCompleteMe Autocompletion
" Works great with Tern!
Plugin 'Valloric/YouCompleteMe'

" JavaScript syntax and indent plugins
Plugin 'pangloss/vim-javascript'

" JSX syntax highlighting
Plugin 'mxw/vim-jsx'

" Elixir and EEX syntax highlighting
Plugin 'elixir-lang/vim-elixir'

" Emmet-vim for super fast HTML editing
Plugin 'mattn/emmet-vim'

" Supertab to get Ultisnips and YCM to play nice
Plugin 'ervandew/supertab'

" Ultisnips snippet engine
Plugin 'SirVer/ultisnips'

" Lots of snippets for lots of languages
Plugin 'honza/vim-snippets'

" Add git gutter to note diffs inline
Plugin 'airblade/vim-gitgutter'

" Add NerdTree to visualize directories
Plugin 'scrooloose/nerdtree'

" Add git flags support to NerdTree
Plugin 'Xuyuanp/nerdtree-git-plugin'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"
" Sets how many lines of history VIM has to remember
set history=700







" " Enable cursorline
" set cursorline

augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  " au VimEnter,WinEnter,BufWinEnter * setlocal cursorcolumn
  au WinLeave * setlocal nocursorline
  " au WinLeave * setlocal nocursorcolumn
augroup END

" With a map leader it's possible to do extra key combinations
let mapleader = ","
let g:mapleader = ","

" Quickly source this file
nnoremap <leader>sv :source ~/.vimrc<return>

" Quickly open ~/.vimrc
nnoremap <leader>rc :e ~/.vimrc<return>

" Set to auto read when a file is changed from the outside
set autoread

" Fast saving
nmap <leader>w :w!<cr>

" Fast quit
nmap <leader>q :q<cr>

" Fast quit all
nmap <leader>x :qa<cr>

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command! W w !sudo tee % > /dev/null

" Toggle paste mode
set pastetoggle=<F5>

" Tab settings
filetype plugin indent on
set tabstop=4
set shiftwidth=2
set expandtab

" Always show some lines after the cursor
set scrolloff=8

" " Allow mouse
" set mouse=a

" Wrap lines, but only insert newlines when enter is pressed
set wrap " Wrap words visually
set linebreak " wrap only at the 'breakat' option
set nolist " list disables linebreak
" Prevent Vim from automatically inserting line 
"   breaks in newly entered text
set textwidth=0
set wrapmargin=0

" Spell check commit messages, text, and markdown files
" autocmd BufNewFile,BufRead *.md setlocal spell
" autocmd BufNewFile,BufRead *.txt setlocal spell
autocmd BufNewFile,BufRead COMMIT_EDITMSG setlocal spell

" Open split windows below / to the right
set splitbelow
set splitright


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Moving around
"
" Faster window switching
nmap <C-j> <c-w>j
nmap <C-k> <c-w>k
nmap <C-l> <c-w>l
nmap <C-h> <c-w>h

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search Options
" 
" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Makes search act like search in modern browsers
set incsearch 

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" For regular expressions turn magic on
set magic

" Highlights all search hits
set hlsearch

" Toggle search highlighting
nnoremap <F3> :set hlsearch!<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" User Interface
" 
" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" Enable 256 colors
set t_Co=256

" Syntax highlighting
syntax enable

" Set the color scheme
" set background=dark
let g:solarized_termcolors=256
" colorscheme wombat256
" let g:airline_theme='base16_ashes'

" colorscheme lucius

" Use the vim wildmenu for command completion
set wildmenu
set wildmode=longest:full,full

" Ignore files in the wildmenu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,.meteor/*



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Filetypes
"
" Force *.md files to be recognized as markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Plugin Configuration
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP Configuration
"
" Change the default mapping
let g:ctrlp_map = '<C-f>'
let g:ctrlp_cmd = 'CtrlP .'
map ,p :CtrlP .<cr>
map ,ba :CtrlPBuffer<cr>


" Show hidden files too
let g:ctrlp_show_hidden = 1

" Ignore some files when fuzzy searching
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.?(git|hg|svn|meteor|bundle|node_modules|bower_components)$',
      \ 'file': '\v\.(so|swp|zip)$'
      \ }


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree configuration
"
" Toggle NERDTree shortcut
map ,nt :NERDTreeToggle<CR>
map ,nf :NERDTreeFind<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" quickly buffer
map ,bd :bd<cr>
map ,bo :%bd \| e#<cr>
map ,bn :bn<cr>
map ,bp :bp<cr>
map ,bf :bf<cr>
map ,bl :bl<cr>
map ,bb :b#<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" copy to clipboard
map ,y "+y
map ,d "+d

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" quickly split windows
map ,vs :vs<cr>
map ,sp :sp<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" save this sessions
map ,ss :mks! ~/.session.vim<cr>
map ,sl :source ~/.session.vim<cr>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline Configuration
"
" Always display status line
set laststatus=2

" Auto populate the g:airline_symbols dictionary
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#buffer_idx_mode = 1
" let g:airline#extensions#tabline#left_sep = '▶'
" let g:airline#extensions#tabline#left_alt_sep = '◀'

map ,rf :AirlineRefresh<cr>

set encoding=utf-8
set guifont=Source\ Code\ Pro\ for\ Powerline "make sure to escape the spaces in the name properly
" set guifont=Ubuntu\ Mono\ derivative\ Powerline





""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-fugitive git shortcuts
"
nnoremap <leader>gs :Gstatus<return>
nnoremap <leader>gd :Gdiff<return>
nnoremap <leader>gb :Gblame<return>
nnoremap <leader>gr :Gread<return>
nnoremap <leader>gc :Gcommit<return>
nnoremap <leader>gw :Gwrite<return>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-localvimrc config
"
" Don't ask to load the .vimrc file
let g:localvimrc_ask = 0
" load files going from working dir to root
let g:localvimrc_reverse = 1
let g:localvimrc_name = [ ".lvimrc", ".vimrc" ]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-unimpaired extensions
"
nmap [g :tabprev<return>
nmap ]g :tabnext<return>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic configuration
"
" status line settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Check files on open
let g:syntastic_check_on_open = 0

" Configure usage of the JSX linter
let g:syntastic_javascript_checkers = ['eslint']


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" JavaScript and JSX highlighting
"
" Allow JSX in normal JS files
let g:jsx_ext_required = 0


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tern
"
let g:is_tern_argument_hints_enabled=1
let g:tern_show_argument_hints = 'on_move'



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe Configuration
"
" Completion enabled in comments
let g:ycm_complete_in_comments = 1

" Close the preivew window after we pick an option
let g:ycm_autoclose_preview_window_after_completion = 1

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

autocmd FileType javascript setlocal omnifunc=tern#Complete
autocmd FileType jsx setlocal omnifunc=tern#Complete


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ultisnips configuration
"
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>""
let g:UltiSnipsEditSplit="vertical"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YankRing Configuration
"
" Hotkey for the :YRShow
nnoremap <silent> <F10> :YRShow<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Multiple Cursor Configurationp>'
"
" Change the default mapping
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-m>'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set number line
set number relativenumber

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" setup ag 
let g:ag_prg="ag --vimgrep"
let g:ag_working_path_mode="r"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" setup easymotion
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>a <Plug>(easymotion-bd-w)
nmap <Leader>a <Plug>(easymotion-overwin-w)

" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" Gif config
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

let g:EasyMotion_startofline = 0 " keep cursor column when JK motion

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" override marology
let g:markology_include="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

map! <C-h> <left>
map! <C-j> <down>
map! <C-k> <up>
map! <C-l> <right>



" buffer tabs configu
noremap <C-left> :bprev<CR> 
noremap <C-right> :bnext<CR>
