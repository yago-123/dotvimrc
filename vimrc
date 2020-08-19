set nocompatible              " be iMproved, required
filetype off                  " required
set rnu 
set number

" put :ter above 
set splitbelow 

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Colorscheme 
Plugin 'morhetz/gruvbox'

" Elixir syntax 
Plugin 'elixir-editors/vim-elixir'

" Git plugin 
Plugin 'tpope/vim-fugitive'

" Bar from down 
Plugin 'vim-airline/vim-airline'

" GoLang plugin 
Plugin 'fatih/vim-go'

" Markdown preview 
Plugin 'JamshedVesuna/vim-markdown-preview'

" fzf 
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"Shortcut execute go file 
nnoremap <F2> :w<CR>
nnoremap <F3> :GoRun<CR>
nnoremap <F4> :GoDoc<CR>
" For go back to previous buffer Ctrl + o 
nnoremap <F5> :GoDef<CR>

" Search files with fzf 
nnoremap <silent> <C-h> :Files<CR>


let g:gruvbox_contrast_dark = 'hard'
if exists('+termguicolors') 
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif 
let g:gruvbox_invert_selection = '0'
colorscheme gruvbox 
set background=dark

" Move swap files to ~/.vim/swap-files
set directory^=~/.vim/swap-files//

" Instructions Vim: 
" 	v to select block 
" 	y to copy the block 
" 	p to paste the block
"	x to delete the block

" Instructions Terminal: 
" 	Ctrl + L: Clean terminal

" Intructions Firefox: 
" 	Ctrl + Mayus + E: Open dev. tools 
" 	Mayus + F9: Get storage inspector (cache, cookies)
