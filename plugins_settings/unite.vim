" Хранить историю буфера в Unite
let g:unite_source_history_yank_enable = 1
" При старте начинать сразу начинать вводить текст
let g:unite_enable_start_insert = 1
let g:unite_enable_short_source_names = 1
" Использовать fuzzy-search
call unite#filters#matcher_default#use(['matcher_fuzzy'])
" Игнорить некоторые типы файлов
call unite#custom#source('file_rec', 'ignore_pattern', '\v\.(png|jpg|git)$')
" Рекурсивный поиск по файлам
nmap <Space><Space> :Unite file_rec<CR>
" Поиск по истории вставок
nmap <Space>y :Unite -no-start-insert -quick-match history/yank<CR>
" Открытые буфферы
nmap <Space>b :Unite buffer<CR>
" Список тегов для буфера (хорошая замена tagbar и т.п.)
nmap <Space>t :Unite outline<CR>
" Полезности для RoR - быстрые сочетания клавиш для
" открытия нужных контроллеров, представлений и тп
nmap ;m  <Space><Space>app/models/

nmap ;v  <Space><Space>app/views/
nmap ;vv <Space><Space>app/views/
nmap ;vs <Space><Space>app/views/show<left><left><left><left>
nmap ;ve <Space><Space>app/views/edit<left><left><left><left>
nmap ;vn <Space><Space>app/views/new<left><left><left>
nmap ;vi <Space><Space>app/views/index<left><left><left><left><left>
nmap ;vf <Space><Space>app/views/form<left><left><left><left>

nmap ;c  <Space><Space>app/controllers/

nmap ;s  <Space><Space>spec/
nmap ;ss  <Space><Space>spec/
nmap ;sr <Space><Space>spec/requests
