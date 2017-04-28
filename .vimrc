" 改行時に自動でインデントを行なう
set autoindent
set smartindent

"jjでESCと同じ
inoremap <silent> jj <ESC>

" ファイルが外部で変更された際に自動で読み込む
set autoread

" バックスペースの影響範囲を設定する
set backspace=indent,eol,start

" 強調表示する列を設定する
set colorcolumn=80

" 未保存ファイルの終了時に保存確認を行なう
set confirm

" カーソル行を強調表示する
set cursorline

" 文字コードを設定する
set encoding=utf8
set fileencodings=utf8
scriptencoding utf8

" タブの代わりにスペースを挿入する
set expandtab

" ファイル変更中に他のファイルを表示可能にする
set hidden

" コマンドラインモードで保存する履歴数を設定する
set history=1000

" 検索結果をハイライト表示する
set hlsearch
"ESC2回でハイライト解除
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>

" 大文字と小文字を区別せず検索する
set ignorecase

" インクリメンタルサーチを有効にする
set incsearch

" ステータスバーを常に表示する
set laststatus=2

" 不可視文字を表示する
set list

" 不可視文字の表示方法を設定する
set listchars=eol:¬

" マウスを有効にする
set mouse=a

" ファイル上書き時にバックアップをとらない
set nobackup
set nowritebackup

" スワップファイルを作成しない
set noswapfile

" 行番号を表示する
set number

" ルーラーを表示する
set ruler

" カーソル行の上下へのオフセットを設定する
set scrolloff=4

" インデントでずれる幅を設定する
set shiftwidth=4

"タブキーでスペース4個
set tabstop=4

" 入力中のコマンドを表示する
set showcmd

" 対応するカッコを強調表示する
set showmatch
"ノーマルモード時％で対応するカッコに移動
source $VIMRUNTIME/macros/matchit.vim


" タブバーを常に表示する
set showtabline=4

" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase

" 改行入力行の末尾にあわせてインデントを増減する
set smartindent

" コンテキストに応じたタブの処理を行なう
set smarttab

" タブやバックスペースで処理するスペースの数を設定する
set softtabstop=0

" 新しいウィンドウを下/右に開く
set splitbelow
set splitright

" 編集中のファイル名を表示する
set title

" ビープを無効にする
set visualbell t_vb=

" 行頭・行末の左右移動で行を移動する
set whichwrap=b,s,h,l,<,>,[,]

" コマンドラインモードでの補完を有効にする
set wildmenu

" コマンドラインモードでの補完方法を設定する
set wildmode=list:longest,full

" 行を折り返す
set wrap

" 検索時に最後まで移動したら最初に戻る
set wrapscan

"行が折り返されているときに表示行単位でカーソル移動
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

" ファイルタイプのインデントを有効にする
filetype plugin indent on

" 最後のカーソル位置を復元する
if has("autocmd")
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line ("'\"") <= line("$") |
                \   exe "normal! g'\"" |
                \ endif
endif

" シンタックスチェック
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2
let g:syntastic_mode_map = { 'mode': 'passive',
            \ 'passive_filetypes': ['ruby'] }
let g:syntastic_ruby_checkers = ['rubocop']

" -------------------------------------------------------------

"dein Scripts-----------------------------
if &compatible
    set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/yutanaka/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/yutanaka/.cache/dein')
    call dein#begin('/Users/yutanaka/.cache/dein')

    " Let dein manage dein
    " Required:
    call dein#add('/Users/yutanaka/.cache/dein/repos/github.com/Shougo/dein.vim')

    " Add or remove your plugins here:
    call dein#add('Shougo/neosnippet.vim')
    call dein#add('Shougo/neosnippet-snippets')
    call dein#add('honza/vim-snippets')
    "スニペット
    call dein#add('mattn/jscomplete-vim')
    call dein#add('marijnh/tern_for_vim')
    "javascriptの補完
    call dein#add('Shougo/unite.vim')
    "ファイラーランチャー
    call dein#add('Shougo/neomru.vim')
    "ファイル履歴の記録
    call dein#add('Shougo/deoplete.nvim')
    "補完機能
    call dein#add('Shougo/vimproc.vim')
    "非同期処理高速化
    call dein#add('itchyny/lightline.vim')
    "ステータスラインの色付け
    call dein#add('Yggdroot/indentLine')
    "インデントの可視化
    call dein#add('Townk/vim-autoclose')
    "自動括弧閉じやつ
    call dein#add('ujihisa/neco-look')
    "英単語補完
    call dein#add('tomasr/molokai')
    "カラースキーマ
    call dein#add('bronson/vim-trailing-whitespace')
    "行末のスペースを可視化
    call dein#add('othree/html5.vim')
    "HTML5のタグに色付け
    call dein#add('hokaccha/vim-html5validator')
    "HTMLの文法チェック
    call dein#add('hail2u/vim-css3-syntax')
    "CSSの色付け
    call dein#add('othree/yajs.vim')
    "javascript色付け
    call dein#add('tyru/open-browser.vim')
    "vimでブラウザを開く
    call dein#add('tell-k/vim-browsereload-mac')
    "ブラウザの自動再読込み
    call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
    " You can specify revision/branch/tag.

    " Required:
    call dein#end()
    call dein#save_state()
endif

" Required:
colorscheme molokai
syntax enable
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
    call dein#install()
endif
"End dein Scripts-------------------------

" ### deoplete
let g:acp_enableAtStartup=0
let g:deoplete#enable_at_startup=1
let g:deoplete#enable_smart_case=1
let g:deoplete#enable_camel_case=1
let g:deoplete#enable_underbar_completion=1
let g:deoplete#sources#syntax#min_keyword_lenth=2
let gLdeoplete#lock_buffer_name_pattern='\*ku\*'
if !exists('g:deoplete#keyword_patterns')
    let g:deoplete#keyword_patterns={}
endif
let g:deoplete#keyword_patterns['default']='\h\w*'
inoremap <expr><C-g> deoplete#undo_completion()
inoremap <expr><C-l> deoplete#complete_common_string()
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" DOMとMozilla関連とES6のメソッドを補完
let g:jscomplete_use = ['dom', 'moz', 'es6th']

let g:neosnippet#snippets_directory='~/.cache/dein/repos/github.com/Shougo/neosnippet-snippets/neosnippet/'
