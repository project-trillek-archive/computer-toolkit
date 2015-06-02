
set ts=2 sw=2 tw=78 et
set syntax=asmtr32

if !exists('g:syntastic_autofind_inc') || g:syntastic_autofind_inc == 0
    finish
else
  set g:syntastic_asmtr32_checkers=[]
endif

syntax on

