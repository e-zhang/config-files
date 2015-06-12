set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'

Plugin 'L9'
Plugin 'FuzzyFinder'

Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdcommenter'

Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'tpope/vim-surround'

Plugin 'Raimondi/delimitMate'

Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()

filetype plugin indent on
syntax enable

set cc=81 
highlight ColorColumn ctermbg=244

set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
colorscheme solarized

au BufNewFile,BufRead,BufEnter *.cpp,*.hpp,*.h call SetCppOptions()
function! SetCppOptions()
	set ts=2
	set shiftwidth=2
	set sts=2
	set syntax=cpp
	set cindent
endfunction
au BufNewFile,BufRead,BufEnter *.py call SetPyOptions()
function! SetPyOptions()
	set ts=4
	set sw=4
	set sts=4
	set syntax=python
endfunction

set wildmode=longest,list,full
set wildmenu

vnoremap . :normal .<CR>
set autoread

set ruler

set number

set smartcase
set ignorecase

set incsearch
set hlsearch
nnoremap <silent> <Space> :nohl<Bar>:echo<CR>

set backspace=indent,eol,start

set expandtab
set laststatus=2

set tw=81
set fo=cq
set nowrap

set switchbuf+=useopen

nnoremap <F5> :make -j15<Bar>:botright copen<Bar>:YcmRestartServer<CR>

let mapleader=","

let g:fuf_coveragefile_exclude = '\v\~$|\.(so.*|o|lo|la|swp|bak|pyc)$|bin$|lib$|(^|[/\\])\..*($|[/\\])|build[\/]'
map <leader>ff :FufCoverageFile<CR>
map <leader>fb :FufBuffer<CR>

set completeopt-=preview

"YCM stuff
let g:ycm_confirm_extra_conf = 0
let g:ycm_allow_changing_updatetime = 0
let g:ycm_server_use_vim_stdout = 0
let g:ycm_server_keep_logfile = 1
let g:ycm_path_to_python_interpreter = '/opt/python-2.7.3/bin/python'
let g:ycm_server_log_level = 'debug'
let g:ycm_goto_buffer_command = 'vertical-split'
map <leader>gg :YcmCompleter GoToImprecise<CR>


"NERDCommenter
let g:NERDSpaceDelims = 1
let g:NERDRemoveExtraSpaces = 1

