set nocompatible

call pathogen#infect()
call pathogen#helptags()

" Jump to the last line when the file was last loaded
if has ("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

filetype plugin on

syntax on         " enable syntax highlighting

" Set directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

set exrc          " enable per-directory .vimrc files
set secure        " disable unsafe commands in local .vimrc files

set showmode      " changes status line color when in insert mode
set showcmd       " display partial command in status line
set showmatch     " show matching brackets
set autowrite     " automatically save on buffer switch

" Search
set ignorecase    " case insensitive search
set smartcase     " make search case sensitive when pattern has uppercase char
set incsearch     " incremental search
set hlsearch      " highlight matching search terms

" Hidden
set title         " todo: what does this actually do?
set scrolloff=3   " always show 3 lines above & below cursor
set nowrap

" Tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smartindent

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Line numbers
set ruler
set number
set numberwidth=4

" Cut and Paste to System Clipboard
noremap <C-S-c> " +y

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Visualize tabs and trailing spaces
set list
set listchars=tab:>-,trail:-

" Show tabs and make tab text easier to read
set showtabline=2
hi TabLineSel ctermbg=black
hi TabLineSel ctermfg=DarkMagenta

" Mark column widths
set colorcolumn=80,120

" Navigate tabs using arrow keys
nnoremap <silent> <C-t> :tabnew<cr>
nnoremap <silent> <Right> gt
nnoremap <silent> <Left> gT

" ctrlp options
let g:ctrlp_working_path_mode = 2
let g:ctrlp_custom_ignore = '\.git$\|log$\|tmp\|node_modules$'

" gist options
let g:gist_post_private = 1
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1

syntax enable
set background=dark
colorscheme solarized

