" Возможность юзать перемещение в режиме ввода
" нужно использовать Альт+клавишу перемещения
imap <A-l> <right>
imap <A-k> <C-o>k
imap <A-j> <C-o>j
imap <A-h> <C-o>h
imap <A-w> <C-o>w
imap <A-b> <C-o>b
imap <A-a> <C-o>A
imap <A-i> <C-o>I
imap <A-c> <C-o>C
" Если изменить отступы в режиме выделения,
" то режим выделения сохранится
vnoremap < <gv
vnoremap > >gv
" Переключение буферов вперед-назад
nmap <S-Space> :bp<enter>
nmap <C-Space> :bn<enter>
" Перезагрузка конфига VIM-а
map <F8> :so ~/.vimrc<cr>
" Показывает буферы при нажатии на <F2>
map <F2> :buffers<enter>
" При двукратном нажатии на i (или ш) в режиме ввода
" редактор входит в нормальный режим
imap <silent> шш <esc>
imap <silent> ii <esc>
" Пробел в нормальном режиме устанавливает текущую линию
" по-центру
nmap <Space> zz
" Сохранение на Ctrl+s
nmap <C-s> :w<CR>
vmap <C-s> <esc>:w<CR>gv
imap <C-s> <C-o>:w<CR>
" Вставка из системного буфера обмена в режиме вставки
imap <C-v> <C-o>"+p
" При нажатии на Ctrl-f будет происходить смена раскладки
cmap <silent> <C-L> <C-^>
imap <silent> <C-L> <C-^>X<Esc>a<C-H>
nmap <silent> <C-L> a<C-^><Esc><CR>
vmap <silent> <C-L> <Esc>a<C-^><Esc><CR>gv
" При поиске подсвеченное слово устанавливать
" по центру экрана
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz
" Переместиться на пол-экрана вниз-вверх
" и установить текущую линию по центру экрана
nnoremap <c-d> <c-d>zz
nnoremap <c-u> <c-u>zz
" Когда страница листается вниз, сама нижняя
" строчка устанавливается по-центру
nmap G Gzz
" Перемещение между вкладками
nmap <s-h> :tabp<enter>
nmap <s-l> :tabn<enter>
" Создание сверху пустой строки и переход
" в нормальный режим
nmap <M-o> <S-o><esc>
" Это же удобнейшая вещь! При вводе запятой,
" после запятой автоматически добавляется
" пробел!
imap , ,<Space>
" Перемещение строк
nmap <c-j> ddp
nmap <c-k> ddkP
" Перемещение между сплитами
nmap <m-h> <c-w>h
nmap <m-k> <c-w>k
nmap <m-l> <c-w>l
nmap <m-j> <c-w>j
" Закрытие сплита
nmap <m-c> <c-w>c
" Открытие новой вкладки
nmap <c-t> :tabnew<cr>
" Открытие файла с заметками по проекту
" теперь очень часто держу заметки в корне
" проекта
nmap <F3> :e plan.txt<cr>
" Переключение на вкладку по ее номеру.
nmap <Space>1 :tabfirst<cr>
nmap <Space>2 :tabfirst<cr>gt
nmap <Space>3 :tabfirst<cr>gtgt
nmap <Space>4 :tabfirst<cr>gtgtgt
nmap <Space>5 :tabfirst<cr>gtgtgtgt
nmap <Space>6 :tabfirst<cr>gtgtgtgtgt
nmap <Space>7 :tabfirst<cr>gtgtgtgtgtgt
nmap <Space>8 :tabfirst<cr>gtgtgtgtgtgtgt
nmap <Space>9 :tabfirst<cr>gtgtgtgtgtgtgtgt
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
nmap <space>ss <c-p>spec/
nmap <space>sc <c-p>spec/controllers/
nmap <space>sm <c-p>spec/models/
nmap <space>sf <c-p>spec/factories/
nmap <space>sr <c-p>spec/requests/
