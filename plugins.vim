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
" EasyMoution
" Очень удобное перемещение. Лучше всего его смысл объясняет
" гифка на официальной странице
NeoBundle 'EasyMotion'
" Назначил начало перемещения на
" редкоиспользуемые клавиши
nmap s \\f
nmap S \\F
nmap B \\b
nmap W \\w
nmap E \\e
" Переназначил клавиши быстрого доступа так,
" чтобы последние клавиши было удобнее всего жать
let g:EasyMotion_keys = "abcdefghpqrstvwxyz.,mnouilkj"
"-----------------------------------------------------------

"-----------------------------------------------------------
" Самое лучшее автозавершение слов
NeoBundle 'Valloric/YouCompleteMe'
"-----------------------------------------------------------

"-----------------------------------------------------------
" CtrlP - нечеткий поиск по файлам, папкам, буферам, истории
" отмен
NeoBundle 'ctrlp.vim'
" Так было сказано сделать в описании к CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
" Открытие CtrlPBuffer
nmap <space>b :CtrlPBuffer<cr>
nmap <space>l :CtrlPLine<cr>
nmap <space>i :CtrlPBufTag<cr>
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)|tmp$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
" Полезности для RoR - быстрые сочетания клавиш для
" открытия нужных контроллеров, представлений и тп
nmap <space>m <c-p>model/
nmap <space><space> <c-p>
nmap <space>vv <c-p>views/
nmap <space>vs <c-p>views/show<left><left><left><left>
nmap <space>ve <c-p>views/edit<left><left><left><left>
nmap <space>vn <c-p>views/new<left><left><left>
nmap <space>vi <c-p>views/index<left><left><left><left><left>
nmap <space>vf <c-p>views/form<left><left><left><left>
nmap <space>c <c-p>controllers/
nmap <space>s <c-p>spec/
NeoBundle 'ivalkeen/vim-ctrlp-tjump'
nmap <Space>F :CtrlPtjump<cr>
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
nmap <Space>u :UndotreeToggle<cr>
"-----------------------------------------------------------

"-----------------------------------------------------------
" Дерево файлов слева (можно и справа и вообще где угодно)
NeoBundle 'The-NERD-tree'
nmap <C-n> :NERDTreeToggle<cr>
" "-----------------------------------------------------------

"-----------------------------------------------------------
" Клевая вещь - показывает, благодаря гиту, какие строки
" были добавлены, изменены
NeoBundle 'airblade/vim-gitgutter'
nmap <Space>g :GitGutterToggle<enter>
let g:gitgutter_enabled = 0
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
" Автосохранение
NeoBundle 'vim-auto-save'
let g:auto_save = 0
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

" Автоподсветка поиска
NeoBundle 'IndexedSearch'

" Какие-то улучшения для Ruby
NeoBundle 'vim-ruby/vim-ruby'

" Улучшенная подсветка синтаксиса Javascript
NeoBundle 'jelera/vim-javascript-syntax.git'

" Отступы Javascript и т.п.
NeoBundle "pangloss/vim-javascript"

" HAML. HAML это вам не HTML!
NeoBundle 'tpope/vim-haml'

" Работа с CoffeeScript
NeoBundle 'kchmck/vim-coffee-script'

" Работа с Git
NeoBundle 'tpope/vim-fugitive'
nmap <Space>gs :Gstatus<cr>
nmap <Space>gw :Gwrite<cr>
nmap <Space>gr :Gread<cr>
nmap <Space>gd :Gdiff<cr>
nmap <Space>gc :Gcommit<cr>

" Работа с форматом rabl
NeoBundle 'yaymukund/vim-rabl'

" Изменено поведение клавиш F, f, t, T
" а также освободились ';' и ','
NeoBundle 'rhysd/clever-f.vim'

NeoBundle 'jayferd/eco.vim'
