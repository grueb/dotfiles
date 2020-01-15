" Kyle Gruebnau
" sets pathogen vim bundle manager to run
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
" Then extract any new plugins to a subdirectory under ~/.vim/bundle
execute pathogen#infect()
" Terminal {{{
" If connecting with xterm sets it to 256-color mode, this must be before the colorscheme is enabled, to allow the colorscheme to work in putty
if &term == "xterm"
        set t_Co=256
endif
" }}}
" Colors {{{
syntax enable " enable syntax highlighting

set background=dark
colorscheme badwolf " git clone 'https://github.com/sjl/badwolf' into ~/.vim/bundle
" }}}
" Spaces & Tabs {{{
set tabstop=4 " number of visual spaces per tab
set softtabstop=4 " number of spaces per tab when editing; i.e. the number of spaces inserted when <TAB> is hit and also the number removed when you backspace a tab
set expandtab " expand tabs to spaces
" }}}
" UI Config {{{
set number " show line numbers
set showcmd " show last command entered in bottom bar
set cursorline " highlight current line
filetype plugin indent on " load filetype-specific indent files so you can have language specific indentation files at ~/.vim/indent/
set wildmenu " visual autocomplete for command menu
set lazyredraw " redraw only when we need to, allows faster macros
set showmatch " highlight matching [{()}]
set linebreak " will word wrap lines only at ' ^I!@*-+;:,./?' characters instead of exactly at the last character in the line
set scrolloff=5 " sets scrolloff to 5 so there are always 5 lines of context above and below the cursor when possible
au FileType vim setlocal fo-=c " stops it from adding a comment leader when it wraps a comment line. Stops it from having a single word wrapped and then starting a new comment line. Works by removing the c flag from FormatOptions in the filtype vim. au is autocommand
" }}}
" Searching {{{
set incsearch " search as characters are entered
set hlsearch " highlight matches
" map <leader><space> to stop highlighting previous searches; vim will keep searches highlighted until a new one is run or you manually clear it with this. <leader> is '\'
nnoremap <leader><space> :nohlsearch<CR>
" }}}
" Folding {{{
set foldenable " enable folding
set foldlevelstart=10 " open most folds by default, 0 means all folds are closed
set foldnestmax=10 " 10 nested folds max
" space open/closes folds around the current block
nnoremap <space> za
set foldmethod=indent " fold based on indent level
" }}}
" Movement {{{
" move vertically by where we are visually. so if a line gets wrapped j won't skip over the 'fake' part of the line to get to the next real line
nnoremap j gj
nnoremap k gk
" }}}
" Leader Shortcuts {{{
" jk becomes <esc> for exiting insert mode; inoremap means remap for insert mode, nnoremap is for normal mode
inoremap jk <esc>
" }}}