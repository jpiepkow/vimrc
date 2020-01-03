#!/bin/sh
set -e

cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry
set nu
set nohlsearch
nnoremap <silent> <Leader><space> :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Leader><C-@> :exe "vertical resize " . (winwidth(0) * 2/3)<CR>
nnoremap <Leader>a :Ack!<Space>
let g:ack_mappings = {
      \ "t": "<C-W><CR><C-W>T",
      \ "T": "<C-W><CR><C-W>TgT<C-W>j",
      \ "s": "<C-W><CR><C-W>H<C-W>b<C-W>J<C-W>t",
      \ "O": "<CR><C-W><C-W>:ccl<CR>",
      \ "go": "<CR><C-W>j",
      \ "h": "<C-W><CR><C-W>K",
      \ "H": "<C-W><CR><C-W>K<C-W>b",
      \ "v": "<C-W><CR><C-W>H<C-W>b<C-W>J<C-W>t",
      \ "gv": "<C-W><CR><C-W>H<C-W>b<C-W>J" }
let g:ack_autoclose = 1
nmap <silent> <F3> :NERDTreeToggle<CR>
' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
