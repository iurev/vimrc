" Переход в конец строки в режиме ввода
imap á <C-o>A
" Возможность юзать перемещение в режиме ввода - нужно использовать Альт+ролд
imap ì <C-o>l
imap ë <C-o>k
imap ê <C-o>j
imap è <C-o>h
" Перезагрузка конфига
map <F8> :so ~/.vimrc<cr>
" Открытие редактирования вима при вводе :evim
cmap evim e ~/.vim/vimrc
"Показывает буферы при нажатии на <F2>
map <F2> :buffers<enter>
"При двукратном нажатии на j в режиме ввода
"редактор входит в нормальный режим
imap шш <esc>
imap ii <esc>
"Пробел в нормальном режиме перелистывает страницу вниз
nmap <Space> <PageDown>
"Открытие текущего файла в браузере
nmap <C-o>o :w<enter>:!opera -newtab %<enter>
nmap <C-o>c :w<enter>:!chromium-browser --new-tab %<enter>
nmap <C-o>f :w<enter>:!firefox -new-tab %<enter>
nmap ZO :w<enter>:!opera -newtab %<enter>
nmap ZC :w<enter>:!chromium-browser --new-tab %<enter>
nmap ZF :w<enter>:!firefox -new-tab %<enter>
"Сохранение на Ctrl+R
nmap <C-i> :w<CR>
" imap <C-i> <Esc>:w<CR>a
"Подтверждение на сохранение закрываемого файла
set confirm
"Включает возможность использовать 'внутреннюю' раскладку
"клавиатур. При включенной русской системной раскладке 
"VIM по-прежнему работает только в режиме ввода
"В ВикиУчебнике написан способ, который может заставить
"работать VIM при включенной системной раскладке
set keymap=russian-jcukenwin
"По-умолчанию поиск и вставка будут происходить на английском языке
set iminsert=0	
set imsearch=0
"Вставка из системного буфера обмена в режиме вставки
imap <C-v> <C-o>"+p
" При нажатии на Ctrl-f будет происходить смена раскладки
cmap <silent> <C-L> <C-^>
imap <silent> <C-L> <C-^>X<Esc>a<C-H>
nmap <silent> <C-L> a<C-^><Esc><CR>
vmap <silent> <C-L> <Esc>a<C-^><Esc><CR>gv
" Для вставки использовать системный буфер обмена
set clipboard=unnamed
" Подсветка всех слов, одинаковых с тем, на который был наведен курсор
autocmd CursorMoved * silent! exe printf("match Search /\\<%s\\>/", expand('<cword>'))
