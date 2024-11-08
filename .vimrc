" Disable compatibility with vi which can cause unexpected issues.
set nocompatible
" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on
" Enable plugins and load plugin for the detected file type.
filetype plugin on 
" Load an indent file for the detected file type.
filetype indent on
" Turn syntax highlighting on.
syntax on
" Highlight cursor line underneath the cursor horizontally.
"set cursorline
" Auto completion menu after pressing TAB.
set wildmenu
" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest
" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

set scrolloff=5
set tabstop=4
set softtabstop=4
set shiftwidth=4
set number
set autoindent
set smartindent
set tw=100 "This and following line wrap text after 100 characters
set fo+=t
"set cc=+2 "Places highlight column indicating when you are approaching wrap length

highlight ColorColumn ctermbg=Brown
call matchadd('ColorColumn', '\%101v', 100) "Highlights text longer than 100 characters



" PLUGINS ---------------------------------------------------------------- {{{{{{



" }}}}}}


" MAPPINGS --------------------------------------------------------------- {{{



" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
highlight Folded ctermbg=Black ctermfg=DarkGray
augroup filetype_vim
	autocmd!
	autocmd FileType vim setlocal foldmethod=marker
augroup END

" If Vim version is equal to or greater than 7.3 enable undofile.
" This allows you to undo changes to a file even after saving it.
if version >= 703
	set undodir=~/.vim/backup
	set undofile
    set undoreload=10000
endif

" You can split a window into sections by typing `:split` or `:vsplit`.
" Display cursorline and cursorcolumn ONLY in active window.
"augroup cursor_off
"	autocmd!
"    autocmd WinLeave * set nocursorline nocursorcolumn
"    autocmd WinEnter * set cursorline cursorcolumn
"augroup END

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file formati

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
"set laststatus=2

"hi NormalColor guifg=Black guibg=Black ctermbg=0 ctermfg=DarkGray
"hi InsertColor guifg=Black guibg=Cyan ctermbg=51 ctermfg=0
"hi ReplaceColor guifg=Black guibg=maroon1 ctermbg=165 ctermfg=0
"hi VisualColor guifg=Black guibg=Orange ctermbg=202 ctermfg=0

"set statusline+=%#NormalColor#%{(mode()=='n')?'\ \ NORMAL\ ':''}
"set statusline+=%#InsertColor#%{(mode()=='i')?'\ \ INSERT\ ':''}
"set statusline+=%#ReplaceColor#%{(mode()=='R')?'\ \ REPLACE\ ':''}
"set statusline+=%#VisualColor#%{(mode()=='v')?'\ \ VISUAL\ ':''}


"function! InsertStatuslineColor(mode)
"	if a:mode == 'i'
"		hi statusline ctermfg=Black ctermbg=DarkGray
"	elseif a:mode == 'r'
"		hi statusline ctermfg=DarkGray ctermbg=Gray
"	else
"		hi statusline ctermfg=DarkGray ctermbg=Gray
"	endif
"endfunction

"au InsertEnter * call InsertStatuslineColor(v:insertmode)
"au InsertEnter * hi statusline ctermfg=Black ctermbg=Black
"au InsertLeave * hi statusline ctermfg=DarkGray ctermbg=Gray
"hi statusline ctermfg=0 ctermbg=DarkGray

" default the statusline to green when entering Vim
"highlight statusline ctermfg=Gray ctermbg=DarkGray

" Formats the statusline
"set statusline=%f                           " file name
"set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
"set statusline+=%{&ff}] "file format
"set statusline+=%y      "filetype
"set statusline+=%h      "help file flag
"set statusline+=%m      "modified flag
"set statusline+=%r      "read only flag

" Puts in the current git status
"	if count(g:pathogen_disabled, 'Fugitive') < 1   
"    	set statusline+=%{fugitive#statusline()}
"	endif

" Puts in syntastic warnings
"	if count(g:pathogen_disabled, 'Syntastic') < 1  
"		set statusline+=%#warningmsg#
"		set statusline+=%{SyntasticStatuslineFlag()}
"		set statusline+=%*
"	endif

"set statusline+=\ %=                        " align left
"set statusline+=Line:%l/%L[%p%%]            " line X of Y [percent of file]
"set statusline+=\ Col:%c                    " current column
"set statusline+=\ Buf:%n                    " Buffer number
"set statusline+=\ [%b][0x%B]\               " ASCII and byte code under cursor

" }}}
"

" https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/
