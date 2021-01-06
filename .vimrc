set nocompatible
filetype plugin on
syntax on
set number
set nowb
set nocp
set rnu
set top
set udf
set fdm=manual
set fcl=all
set fdc=1
set sw=4
highlight Folded guibg=grey guifg=blue
highlight FoldColumn guibg=darkgrey guifg=white
autocmd FileType text set spell

autocmd FileType sh nnoremap <space>v :call AddGlobal()<CR>

autocmd FileType sh inoremap #! #!/bin/bash
autocmd FileType pl inoremap #! #!/usr/bin/perl
autocmd FileType pl set keywordprg=perldoc\ -f
autocmd FileType sh iabbr bashopts <Esc>:r ~/.vim/snippets/bash/opts.sh<CR>
autocmd FileType sh iabbr bashusage <Esc>:r ~/.vim/snippets/bash/usage.sh<CR>
"------------general remaps------------------------
nnoremap <space>sv :source ~/.vimrc<cr>
nnoremap <space>sp :normal! mm[s1z=`m<cr>
" nnoremap <CR><CR> :!clear <CR><CR> :!%<CR>
" add a new '\n' to end of string(refine at some point please)
nnoremap <space>n $F"i\n<ESC>0
nnoremap <space>; $a;<ESC>0
"---------------------------------------------------
nmap <space>o o<esc>k
nmap <space>O O<esc>j
inoremap fd <esc>
colorscheme default
source $VIMRUNTIME/defaults.vim
source $HOME/.vim/functions/bash/bash-funcs.vim

call plug#begin('~/.vim/plugged')

Plug 'vimwiki/vimwiki'

call plug#end()


  let wiki = {}
  let wiki.path = '~/vimwiki/'
  let wiki.nested_syntaxes = {'python': 'python', 'bash': 'bash'}
  let g:vimwiki_list = [wiki]

" In ~/.vim/vimrc, or somewhere similar.
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'bash': ['shellcheck', 'shfmt'],
\}

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1

  " use an orange cursor in insert mode
  let &t_SI = "\<Esc>]12;pink\x7"
  let &t_SI .= "\<Esc>[6 q"
  " use a red cursor otherwise
  let &t_EI = "\<Esc>]12;green\x7"
  let &t_EI .= "\<Esc>[2 q"
  silent !echo -ne "\033]12;red\007"
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal and rxvt up to version 9.21
  " 1 or 0 -> blinking block
  " 3 -> blinking underscore
  " Recent versions of xterm (282 or above) also support
  " 5 -> blinking vertical bar
  " 6 -> solid vertical bar

" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2017 Sep 20
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif
  " use an orange cursor in insert mode
  let &t_SI = "\<Esc>]12;pink\x7"
  let &t_SI .= "\<Esc>[6 q"
  " use a red cursor otherwise
  let &t_EI = "\<Esc>]12;green\x7"
  let &t_EI .= "\<Esc>[2 q"
  silent !echo -ne "\033]12;red\007"
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal and rxvt up to version 9.21
  " 1 or 0 -> blinking block
  " 3 -> blinking underscore
  " Recent versions of xterm (282 or above) also support
  " 5 -> blinking vertical bar
  " 6 -> solid vertical bar

" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2017 Sep 20
"
eval "$(starship init zsh)"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit

endif
