"color
syntax enable
set background=dark
colorscheme solarized
let g:solarized_termcolors=256

"number & text line break
set number
set textwidth=70
set formatoptions+=mM

"create the backup
set backup
set backupdir=~/.vim/tmp

"Tabをスペース4つに展開＆Tabの設定
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4

"vim-latex
filetype plugin on
let tex_flavor = 'latex'
set grepprg=grep\ -nH\ $*
set shellslash
let g:Tex_DefaultTargetFormat = 'pdf' 
"Macの人はデフォルトでpdfなので必要ない その他のOSの人はデフォルトがdviなので必要
let g:Tex_CompileRule_dvi = 'platex --interaction=nonstopmode $*'
let g:Tex_CompileRule_pdf = 'dvipdfmx $*.dvi'
let g:Tex_FormatDependency_pdf = 'dvi,pdf'
