set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Let vundle manage itself:
Bundle 'gmarik/vundle'
" Just a shitload of color schemes.
" https://github.com/flazz/vim-colorschemes#current-colorschemes
Bundle 'flazz/vim-colorschemes'

" Fuzzy finder -- absolutely must have.
Bundle 'kien/ctrlp.vim'

" Support for easily toggling comments.
Bundle 'tpope/vim-commentary'
" Proper JSON filetype detection, and support.
Bundle 'leshill/vim-json'
" I write markdown a lot. This is a good syntax.
Bundle 'tpope/vim-markdown'
" We have to turn this stuff back on if we want all of our features.
filetype plugin indent on " Filetype auto-detection
syntax on " Syntax highlighting
set autoread " when a file has changed on disk, just load it. Don't ask.

call vundle#end()
filetype plugin indent on
set number
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

