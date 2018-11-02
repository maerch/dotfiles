" Required:
set runtimepath^=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Raimondi/delimitMate'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-rsi'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-eunuch'

NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'trevordmiller/nova-vim'

NeoBundle 'w0rp/ale'

NeoBundle 'Shougo/vimproc.vim'
NeoBundle 'Shougo/unite.vim'

NeoBundle 'scrooloose/nerdcommenter'

NeoBundle 'pangloss/vim-javascript'
NeoBundle 'maxmellon/vim-jsx-pretty'
NeoBundle 'prettier/vim-prettier'

NeoBundle 'mattn/emmet-vim'
NeoBundle 'ap/vim-css-color'

NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'

NeoBundle 'terryma/vim-expand-region'

NeoBundle 'ap/vim-css-color'

NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
