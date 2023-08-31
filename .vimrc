set hidden
set autoindent
set smartindent
set statusline=%F\ \[%M%R\]
set laststatus=2
set titlestring=vim:\ %F\ \[%M%R\]
set title
set nocp
set nomore
set number
set hls
set noswf
set foldenable
set foldlevel=0
set foldminlines=10
" set nowrap
set noincsearch
set expandtab
set tabstop=2
set shiftround
set shiftwidth=2
set smarttab
set softtabstop=2
set exrc
set novisualbell
set equalalways
set visualbell
set shell=/bin/bash
set background=dark

" this is required by Vundle
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'Shougo/vimproc.vim'
Plugin 'scrooloose/syntastic'
Plugin 'ajh17/VimCompletesMe'
Plugin 'tcomment'
Plugin 'fatih/vim-go'
Plugin 'mitsuhiko/vim-jinja'
" Plugin 'altercation/vim-colors-solarized'
Plugin 'Shougo/unite.vim'
Plugin 'reedes/vim-wordy'
Plugin 'hashivim/vim-terraform'
Plugin 'rust-lang/rust.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'neoclide/vim-jsx-improve'

call vundle#end()
filetype plugin indent on
syntax on
" colorscheme solarized

let g:rustfmt_autosave = 1

let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_build_constraints = 1
let g:go_auto_type_info = 0
let g:go_metalinter_autosave = 0 
let g:go_fmt_autosave = 1
let g:go_list_type = "quickfix"
let g:terraform_fmt_on_save = 1
let g:jsx_ext_required = 0
set omnifunc=go#complete#Complete

let g:vcm_tab_complete = 'omni'

let g:syntastic_go_checkers = ['golint', 'govet', 'gocyclo']
"let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

let g:python_host_prog="/usr/local/bin/python"

let g:sudoAuth="sudo -p 'Password:'"

let g:ycm_autoclose_preview_window_after_completion = 1 

au BufWinEnter,BufRead,BufNewFile *.rs          setfiletype rust
au BufWinEnter,BufRead,BufNewFile *.json        setfiletype javascript
au BufWinEnter,BufRead,BufNewFile *.rhtml       setfiletype eruby
au BufWinEnter,BufRead,BufNewFile *.ru          setfiletype ruby
au BufWinEnter,BufRead,BufNewFile Gemfile       setfiletype ruby
au BufWinEnter,BufRead,BufNewFile Capfile       setfiletype ruby
au BufWinEnter,BufRead,BufNewFile Rakefile      setfiletype ruby
au BufWinEnter,BufRead,BufNewFile Vagrantfile   setfiletype ruby
au BufWinEnter,BufRead,BufNewFile Berksfile     setfiletype ruby
au BufWinEnter,BufRead,BufNewFile Guardfile     setfiletype ruby
au BufWinEnter,BufRead,BufNewFile *.md          setfiletype markdown
au BufWinEnter,BufRead,BufNewFile *.pp          setfiletype puppet
au BufWinEnter,BufRead,BufNewFile *.tf          setfiletype terraform

vmap # :TComment<CR>

let mapleader = ","
let maplocalleader = ","
map <Leader>b :Unite buffer<CR>
map <Leader>e :Unite file_rec -start-insert<CR>
map <Leader>s :split<CR>
map <Leader>v :vsplit<CR>
map <Leader>d :filetype detect<cr>
nnoremap <f2> :NextWordy<cr>
