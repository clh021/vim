"let g:startify_custom_header = [
"\ '  __     ___             _____ _____ ',
"\ '  \ \   / (_)_ __ ___   |___  |___ / ',
"\ '   \ \ / /| | ''_ ` _ \     / /  |_ \ ',
"\ '    \ V / | | | | | | |   / /_ ___) |',
"\ '     \_/  |_|_|  /_/(_)____/ ',
"\ '',
"\ '',
"\ ]

let g:startify_custom_header = 'startify#pad(startify#fortune#boxed())'
"let g:startify_custom_header_quotes = [ ["halou, nihao, wojiao chenlianghong", "", "-ahha" ]]
"let g:startify_custom_header_quotes = [ {-> systemlist('date')} ]
let g:startify_custom_header_quotes = [ {-> systemlist('shuf -n1 "$HOME/.vim/.assets/boshulaozi.txt"')} ]
"let g:startify_custom_header = map(split(system('fortune ~/.vim/fortunes | cowsay -W 60'), '\n'), '"   ". v:val') + ['','']


"let g:startify_custom_footer = system("fortune | cowsay") " 什么都没有显示
"let g:startify_custom_header = map(split(system('fortune | cowsay'), '\n'), '" ". v:val') + ['','']

"let g:startify_custom_header_quotes = [ {-> systemlist('date')} ]
"let g:startify_custom_footer = system("fortune | cowsay") " 没有看到效果



"let g:startify_custom_header_quotes = exists('g:startify_custom_header_quotes')
"      \ ? g:startify_custom_header_quotes
"      \ : startify#fortune#predefined_quotes()
" 验证可行的配置

"let g:startify_custom_header = 'startify#pad(startify#fortune#cowsay())'
""牛在说
"let g:startify_custom_header = 'startify#pad(startify#fortune#boxed())'
""盒子边框
"let g:startify_custom_header = 'startify#pad(startify#fortune#quote())' "
"直接显示语句

let g:startify_custom_footer = [ "     " . system('shuf -n1 "$HOME/.vim/.assets/mingyan.txt"') ]
"let g:startify_custom_header = [ 'jjjjjjjjjjj', 'ssssssssssssssssssssskjj' ]
"let g:startify_custom_footer = [
"\ '     Be happy, but never satisfied.(生活要快乐，但绝不要安于现状。)',
"\ '                             --Bruce Lee(李小龙)'
"\ ]
