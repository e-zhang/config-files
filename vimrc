set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'jeaye/color_coded'

Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdcommenter'

Plugin 'tpope/vim-surround'

Plugin 'Raimondi/delimitMate'

Plugin 'christoomey/vim-tmux-navigator'
Plugin 'rdnetto/YCM-Generator'

Plugin 'hdima/python-syntax'
Plugin 'davidzchen/vim-bazel'

Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-repeat'

call vundle#end()

filetype plugin indent on
syntax enable

set cc=81 
highlight ColorColumn ctermbg=244

set t_Co=256

set background=dark
colorscheme gruvbox 
highlight Comment cterm=italic

autocmd FileType c,cpp call SetCppOptions()
function! SetCppOptions()
	set ts=2
	set shiftwidth=2
	set sts=2
	set syntax=cpp
	set cindent

        "clang format
        let g:clang_format_path = '/home/eric.zhang/linux/source/llvm_build/build/bin/clang-format'
        map <C-C> :pyf /home/eric.zhang/linux/source/llvm/tools/clang/tools/clang-format/clang-format.py<cr>
        imap <C-C> :pyf /home/eric.zhang/linux/source/llvm/tools/clang/tools/clang-format/clang-format.py<cr>
endfunction

autocmd FileType python call SetPyOptions()
function! SetPyOptions()
	set ts=4
	set sw=4
	set sts=4
	set syntax=python
endfunction

autocmd FileType bazel call SetBazelOptions()
function! SetBazelOptions()
	set ts=4
	set sw=4
	set sts=4
	set syntax=bazel
        set smartindent
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

let g:ctrlp_custom_ignore = '\v\~$|\.(so.*|o|lo|la|swp|bak|pyc|h5)$|bin$|lib$|build[\/]|bazel.*[\/]'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:15'
let g:ctrlp_prompt_mappings = { 'PrtClearCache()': ['<F6>'] }
map <leader>ff :CtrlP<CR>

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

"color_coded stuff
let g:color_coded_filetypes =['c', 'cpp', 'h', 'hpp']


"NERDCommenter
let g:NERDSpaceDelims = 1
let g:NERDRemoveExtraSpaces = 1

