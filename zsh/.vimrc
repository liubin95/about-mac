call plug#begin()

" The following are examples of different formats supported.
" Keep Plug commands between vundle#begin/end.
" Plug on GitHub repo
" 该插件提供自动结束引号、圆括号、方括号等
Plug 'Raimondi/delimitMate'
" airline 主题
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" 缩进线
" Plug 'Yggdroot/indentLine'
Plug 'nathanaelkane/vim-indent-guides'
" 主题
" Plug 'dracula/vim', { 'name': 'dracula' }
Plug 'catppuccin/vim', { 'name': 'catppuccin_macchiato' }
" 注释相关,:help nerdcommenter
" <leader>ci 切换注释状态
" 5<leader>ci 注释5行
Plug 'scrooloose/nerdcommenter'
" YAML 基础高亮
Plug 'stephpy/vim-yaml'
" Plug from http://vim-scripts.org/vim/scripts.html
" Plug 'L9'
" Git Plug not hosted on GitHub
" Plug 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own Plug)
" Plug 'file:///home/gmarik/path/to/Plug'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plug 'ascenator/L9', {'name': 'newL9'}
Plug 'terryma/vim-expand-region'
call plug#end()

"
" Brief help
" :PlugList       - lists configured Plugs
" :PlugInstall    - installs Plugs; append `!` to update or just :PlugUpdate
" :PlugSearch foo - searches for foo; append `!` to refresh local cache
" :PlugClean      - confirms removal of unused Plugs; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plug stuff after this line
let g:airline_theme='catppuccin_macchiato'
let mapleader = ","

" 缩进设置
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors=0
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#04A5E5  ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#FE640B  ctermbg=4

" 设置
set number
set laststatus=2
set termguicolors
set clipboard=unnamedplus
colorscheme catppuccin_macchiato

