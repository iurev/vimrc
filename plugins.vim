"-----------------------------------------------------------
" NeoBundle - улучшенный менеджер плагинов
if has('vim_starting')
	set nocompatible
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'
"-----------------------------------------------------------

"-----------------------------------------------------------
" CtrlP - нечеткий поиск по файлам, папкам, буферам, истории
" отмен
NeoBundle 'ctrlp.vim'
NeoBundle 'ivalkeen/vim-ctrlp-tjump'
nmap <Space>D :CtrlPtjump<cr>
nmap <Space><Space> :CtrlP<cr>
"-----------------------------------------------------------

"-----------------------------------------------------------
" Комментирование
NeoBundle 'tComment'
nmap <C-k> gcc
vmap ,s gc
nmap ,s gcc
nmap ,l gc
"-----------------------------------------------------------

"-----------------------------------------------------------
" Автозакрытие скобочек, эндов и т.д. (оба плагина)
NeoBundle 'endwise.vim'
NeoBundle 'jiangmiao/auto-pairs'
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutBackInsert = '<A-f>'
" "-----------------------------------------------------------

"-----------------------------------------------------------
"Переход между бегин-енд и т.д.
NeoBundle 'ruby-matchit'
NeoBundle 'matchit.zip'
"-----------------------------------------------------------

"-----------------------------------------------------------
" Дерево отмен
NeoBundle 'https://github.com/mbbill/undotree.git'
" Показывает историю отмен при нажатии на <F5>
nmap <Space>U :UndotreeToggle<cr>
"-----------------------------------------------------------

"-----------------------------------------------------------
" Удаление текущего буфера без удаления сплитов
NeoBundle 'rbgrouleff/bclose.vim'
nmap <m-d> :Bclose<cr>
"-----------------------------------------------------------

"-----------------------------------------------------------
" Избранные цветовые схемы для VIM.
NeoBundle 'tomasr/molokai'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle '29decibel/codeschool-vim-theme'
" NeoBundle 'oceanlight'
" Кроме них мне также нравятся obsidian2,
" oceanlight, night, inkpot, maroloccio,
" manuscript, jellybeans, Lavender, Iceberg,
" Goldfish
"-----------------------------------------------------------

"-----------------------------------------------------------
" Работа с окружающими парными символами
" и тегами в VIM
NeoBundle 'tpope/vim-surround'
nmap ," cs'"
nmap ,' cs"'
"-----------------------------------------------------------

"-----------------------------------------------------------
" Rails
NeoBundle 'tpope/vim-rails'
"-----------------------------------------------------------

"-----------------------------------------------------------
" Переключение true-false, старого и нового стилей
" хэшей в Ruby
NeoBundle 'zef/vim-cycle'
"-----------------------------------------------------------

" Работа с Git
NeoBundle 'tpope/vim-fugitive'
nmap <Space>gs :Gstatus<cr>
nmap <Space>gw :Gwrite<cr>
nmap <Space>gr :Gread<cr>
nmap <Space>gd :Gdiff<cr>
nmap <Space>gc :Gcommit<cr>

" Изменено поведение клавиш F, f, t, T
" а также освободились ';' и ','
NeoBundle 'rhysd/clever-f.vim'
