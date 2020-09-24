" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " comment the lines
    Plug 'tpope/vim-commentary'
    " colorize rgb and hex values
    Plug 'norcalli/nvim-colorizer.lua'
    " Color theme
    Plug 'joshdick/onedark.vim'    
    " status line for the vim editor
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    Plug 'nathanaelkane/vim-indent-guides'

    Plug 'airblade/vim-gitgutter'

    Plug 'ap/vim-css-color'

    Plug 'terryma/vim-multiple-cursors'

    Plug 'ryanoasis/vim-devicons'

    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'

    " Use release branch (recommend)
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Or build from source code by using yarn: https://yarnpkg.com
    Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
call plug#end()
