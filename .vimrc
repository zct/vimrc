" set the color of  terminal"
 if $COLORTERM == 'gnome-terminal'
  set t_Co=256
 endif
"set hidden"
set hidden

"set the ominicppcomplete"
set nocompatible
filetype plugin on
set tags+=/usr/include/c++/4.4.3/tags

"set the supertab"
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-D>"

" set the colorscheme "
 syntax enable
 colorscheme desert

" set the taglist"
 let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
 let Tlist_Use_Right_Window = 1
 let Tlist_Show_One_File = 1 

"  set the winmanager "
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>

" set the cscope "
set cscopequickfix=s-,c-,d-,i-,t-,e-

"the quickkey of cscope"
nmap <s-tab>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <s-tab>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <s-tab>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <s-tab>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <s-tab>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <s-tab>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <s-tab>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <s-tab>d :cs find d <C-R>=expand("<cword>")<CR><CR>


" new-omni-completion "
filetype plugin indent on 
set completeopt =longest,menu

" set the minibufexpl"
 let g:miniBufExplMapWindowNavVim = 1 
   let g:miniBufExplMapWindowNavArrows = 1 
     let g:miniBufExplMapCTabSwitchBufs = 1 
       let g:miniBufExplModSelTarget = 1
 let g:miniBufExplMapCTabSwitchBufs = 1
 let g:miniBufExplMapWindowNavVim = 1

" the file of .c and .h convert"
nnoremap <silent> <F12> :A<CR>

" set the grep fo F3"
nnoremap <silent> <F3> :Grep<CR>

" set the cn cp in quickfix for f6 f7"
nmap <F6> :cn<cr>
nmap <F7> :cp<cr>
