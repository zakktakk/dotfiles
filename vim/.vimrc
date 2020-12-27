" must be first
set nocompatible " isn't compatible with vim

" --- default setting
syntax on

set number " set line number
set title " display file title
set titlestring=%t " title string
set ignorecase " ignore lower case
set smartcase " modify ignorecase
set ruler " show cursor position
set shiftwidth=4 " shift operator is four spaces
set tabstop=4 " a tab is four spaces
set autoindent " autoindent
set cursorline " add cursorline
set cursorcolumn " add cursorcolmn
set wildmenu " use wild menu
set wildmode=longest,list,full " http://boscono.hatenablog.com/entry/2013/11/17/230740
set guioptions+=a " gui option available
set encoding=utf8 " encode utf8
set scrolloff=5 " padding line num in scralling
set display=lastline " 折り返し表示の設定
set pumheight =10 " 変換候補で一度に表示される数
set vb t_vb= " no beep
set novisualbell
set clipboard+=unnamed " use os clipboard
set clipboard=unnamed,autoselect
set wrapscan " 検索がファイル末尾まで進んだらファイル先頭に戻る
set fileencoding=utf-8 " encoding
set laststatus=2 " always display status line 
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P " status line setting
set backspace=indent,eol,start
set nostartofline " line move setting
set matchpairs& matchpairs+=<:>
set showmatch " highlight matched bracket
set matchtime=3 " time  highlight
set infercase " 小文字で打った単語でも大文字で補完
set wrap " wrapping text line
set hlsearch " highlight search result
set incsearch " incremental search
set history=1000 " history num
set showcmd "show command
set mouse=a " mouse mode available
set nowritebackup " no backup, swp file
set nobackup " never make backup file
set noswapfile " never make swap file

" -- color setting
set background=dark
colorscheme murphy

" --- key mapping
"  nnoremap -> normal mode keymapping, inoremap -> insert mode keymapping,
"  vnoremap -> visual mode keymapping
cmap w!! w !sudo tee > /dev/null %
inoremap jj <Esc>
nmap <silent> <Esc><Esc> :nohlsearch<CR>
vnoremap <silent> * "vy/\V<C-r>=substitute(escape(@v, '\/'), "\n", '\\n', 'g')<CR><CR>
nnoremap j gj
nnoremap k gk
nnoremap Y y$
vnoremap v $h
nnoremap &lt;Tab&gt; %
vnoremap &lt;Tab&gt; %
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <S-Left>  <C-w><<CR>
nnoremap <S-Right> <C-w><CR>
nnoremap <S-Up>    <C-w>-<CR>
nnoremap <S-Down>  <C-w>+<CR>
nnoremap <silent><C-e> :NERDTreeTabsToggle<CR>
nnoremap <silent> j gj
nnoremap <silent> k gk
nnoremap <Tab> %
vnoremap <Tab> %

" map ,date -> current data, ,time -> current time
inoremap ,date <C-R>=strftime('%Y/%m/%d (%a)')<CR>
inoremap ,time <C-R>=strftime('%H:%M')<CR>

" bracket complement
imap { {}<LEFT>
imap ( ()<LEFT>
imap [ []<LEFT>
