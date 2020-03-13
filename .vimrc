source $VIMRUNTIME/defaults.vim

let mapleader=" "
set nocompatible
filetype plugin on
syntax enable
filetype plugin indent on
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
set encoding=utf-8
set relativenumber
set smartindent
" Disable beeping
set noerrorbells
set vb t_vb=
" enable incsearch
set is

" Spell-check set to <leader>o, 'o' for 'orthography'
map <leader>o :setlocal spell! spelllang=en_us<CR>

" Splits open at the bottom and right
set splitbelow splitright

" Shortcutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" <F5> to show whitespace
:set listchars=tab:>-,trail:~,extends:>,precedes:<
noremap <F5> :set list!<CR>
inoremap <F5> <C-o>:set list!<CR>
cnoremap <F5> <C-c>:set list!<CR>

" S to replace all
nnoremap S :%s//g<Left><Left>

if has("vms")
	set nobackup		" do not keep a backup file, use versions instead
else
	set backup		" keep a backup file (restore to previous version)
	if has('persistent_undo')
		set undofile	" keep an undo file (undo changes after closing)
	endif
endif

" Use backup directory
set backupdir=${HOME}/.vimbackups
set directory=${HOME}/.vimbackups

if &t_Co > 2 || has("gui_running")
	" Switch on highlighting the last used search pattern.
	set hlsearch
endif

" Run xrdb whenever Xdefaults or Xresources are updated.
autocmd BufWritePost ~/.Xresources,~/.Xdefaults !xrdb %
