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

NeoBundle 'sjl/badwolf'
NeoBundle 'nanotech/jellybeans.vim'

NeoBundle 'scrooloose/syntastic.git'

NeoBundle 'Shougo/vimproc.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'

NeoBundle 'scrooloose/nerdcommenter'

NeoBundle 'othree/yajs.vim'
NeoBundle 'othree/es.next.syntax.vim'
NeoBundle 'othree/javascript-libraries-syntax.vim'

NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'

NeoBundle 'tpope/vim-fugitive'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'airblade/vim-rooter'

NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'junegunn/vim-easy-align'
NeoBundle 'terryma/vim-expand-region'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'benmills/vimux'

NeoBundle 'ap/vim-css-color'

NeoBundle 'thoughtbot/vim-rspec'
NeoBundle 'jgdavey/tslime.vim'


" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
