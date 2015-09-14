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
"set backupdir=~/.vim/tmp
set backupdir=~/vim/tmp

"Tabをスペース4つに展開＆Tabの設定
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4

"NeoBundle
set nocompatible
if has('vim_starting')
      set runtimepath+=~/.vim/bundle/neobundle.vim
endif
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

  " ここに入れたいプラグインを記入
call neobundle#end()
filetype plugin indent on
"NeoBundle 'scrooloose/syntastic'

filetype plugin on
filetype indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:TeX_AutoFolding = 0 
let g:Tex_Folding = 0 
let g:Imap_UsePlaceHolders = 1 
let g:Imap_DeleteEmptyPlaceHolders = 1 
let g:Imap_StickyPlaceHolders = 0 
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_FormatDependency_pdf = 'dvi,pdf'
let g:Tex_FormatDependency_ps = 'dvi,ps'
let g:Tex_MultipleCompileFormats = 'pdf'
let g:Tex_CompileRule_dvi = 'uplatex -synctex=1 -interaction=nonstopmode -file-line-error-style $*'
let g:Tex_CompileRule_ps = 'dvips -Ppdf -o $*.ps $*.dvi'
let g:Tex_CompileRule_pdf = 'dvipdfmx $*.dvi' 
let g:Tex_BibtexFlavor = 'upbibtex'
let g:Tex_MakeIndexFlavor = 'mendex -U $*.idx'
let g:Tex_UseEditorSettingInDVIViewer = 1 
let g:Tex_ViewRule_pdf = 'open -a Preview.app'
let g:Tex_ViewRule_ps = 'open'
let g:Tex_ViewRule_dvi = 'open'

let g:Tex_IgnoreLevel = 9 
let g:Tex_IgnoredWarnings = 
    \"Underfull\n".
    \"Overfull\n".
    \"specifier changed to\n".
    \"You have requested\n".
    \"Missing number, treated as zero.\n".
    \"There were undefined references\n".
    \"Citation %.%# undefined\n".
    \"LaTeX Font Warning: Font shape `%s' undefined\n".
    \"LaTeX Font Warning: Some font shapes were not available, defaults substituted."

