" Project to build vimrc from scratch. 
" For each new feature added there would be a corresponding need for that
" feature. 

" Set not compatible with vim. This is already the case by default because the
" rc in /usr/share/vim/vim74 already sets this option but just to be sure. 
" Vi compatible behaviour is very close to nightmarish! (Try 'vim -u NONE'.)
set nocompatible

" Backspace over everything. This is the standard backspacing behaviour that
" we are used to. 
set backspace=start,indent,eol

" Default undo behaviour is not very useful. We need to be able to undo finer
" actions. 
" Upon pressing 'u' in non compatible mode the last undo block is 
" undone. An undo block is defined as the last set of changed made while in 
" insert mode. (This definition corresponds to the current understanding and
" can change in the future.) 
" With the above definition of the insert mode commands such <C-U> can be 
" tricky because they delete the entire text before the cursor while staying 
" in the insert mode. That is enough deletion of warrant its own undo block.
" The way to create a new undo block is via i_<C-G>u.
inoremap <C-U> <C-G>u<C-U> 

" A new undo block every 'n' number of lines is also desirable. 'n' can be 1 
" or whatever other value. 
" ********* TODO ***********

" Set syntax highlighting. Completely changes the reading experience. A 
" must have! Apparently there are two choices: 
" 	i. syntax enable
" 	ii. syntax on 
" The former allows the user to have custom syntax highlighting. We choose
" this for the moment. 
syntax enable

" Set textwidth to 78. Makes it easy to work with vertical splits. The 
" text should automatically wrap after the 78th column. 
set textwidth=78

" Add 'r' to formatoptions to automatically add the comment leader to the 
" next line after pressing <Enter> in insert mode.
set formatoptions+=r
