set tabstop=4
set shiftwidth=4
set number
set autoindent
set smartindent
set tw=100 "This and following line wrap text after 100 characters
set fo+=t
"set cc=+2 "Places highlight column indicating when you are approaching wrap length
highlight ColorColumn ctermbg=Brown
call matchadd('ColorColumn', '\%101v', 100) "Highlights text longer than 100 characters
