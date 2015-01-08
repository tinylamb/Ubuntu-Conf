"vundle setting
set nocompatible
filetype off
set runtimepath+=~/.vim/bundle/vundle.vim
call vundle#begin()

" let Vundle manage Vundle,required! 
Plugin 'gmarik/Vundle.vim'  
 
" My Bundles here:
" original repos on github
""Plugin 'Valloric/YouCompleteMe'
""Plugin 'scrooloose/nerdtree'
""Plugin 'mattn/webapi-vim'
""Plugin 'mattn/gist-vim'
""Plugin 'plasticboy/vim-markdown'
""Plugin 'aperezdc/vim-template'
""Plugin 'scrooloose/syntastic'

" plugin from http://vim-scripts.org/vim/scripts.html
""Plugin 'taglist.vim'
""Plugin 'word_complete.vim'
""Plugin 'c.vim'
""Plugin 'L9'
""Plugin 'FuzzyFinder'
""Plugin 'winmanager'
""Plugin 'NERD_tree-Project'
""Plugin 'bufexplorer.zip'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'


" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles

"---偏好设置
set number
autocmd ColorScheme * hi LineNr guifg=#636363
set ruler
set mouse=a
colorscheme desert
set gfn=Ubuntu\ Mono\ 13
set lines=36 columns=100
winpos 246 73
set showcmd
set ignorecase
set incsearch
"chinese code
set encoding=utf-8
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
"filetype test
:filetype plugin indent on
set et
set ci
set shiftwidth=4
"text width setting
"autocmd FileType * setlocal textwidth=79 formatoptions+=t

"load Template 
""au BufNewFile *.sh 0r ~/.vim/templates/sh.tlp

"---自动写入
au BufRead * call Autowrite()
fun! Autowrite()
    if ! &readonly
        au InsertLeave,QuitPre * write
        if &filetype=="vim" 
            au QuitPre ~/.vimrc so %
        ""elseif &filetype=="zsh"
        ""    au QuitPre ~/.zshrc call Source_zshrc()
        endif
    endif
endfunction


"---自动补全 
""autocmd ColorScheme * hi Pmenu 	guifg=#f6f3e8 guibg=#444444 ctermfg=230 ctermbg=238 cterm=none
""autocmd ColorScheme * hi PmenuSel guifg=#000000 guibg=#cae682 ctermfg=16 ctermbg=150 cterm=none
"highlight PmenuSbar  ctermfg=2 ctermbg=3 guifg=#ff0000 guibg=#00ff00
"highlight PmenuThumb ctermfg=2 ctermbg=3 guifg=#ff0000 guibg=#00ff00

"---键位映射
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
"define c function
nmap \df yyGo<ESC>p$cw{<CR>


"---快捷键设置
".taglist / winmanager
""map <silent> <F1> :TlistToggle<cr> 
""map <silent> <F1> :WMToggle<cr> 
".f2 to compile
""map <F2> :call OneFileMake()<CR>
""fun! OneFileMake()
""    if &filetype=="c"
""        set makeprg=clang\ -W\ -o\ %<\ %
""    elseif &filetype=="cpp"
""        set makeprg=clang\ -W\ -o\ %<\ %\ -lstdc++
""    endif
""    execute "w"
""    execute "make"
""    execute "cw"
""endfunc
".f3 to run
""map <F3> :!./%< <CR>

"---插件设置 

"--taglist setting
""let Tlist_Ctags_Cmd ='/usr/local/bin/ctags' 
""let Tlist_Use_Right_Window = 1
"如果taglist是最后一个窗口就退出vim
""let Tlist_Exit_OnlyWindow = 1
"只显示当前文件的tag结构
""let Tlist_Show_One_File = 1 


"YCM setting
""let g:ycm_auto_trigger = 1
""let g:ycm_confirm_extra_conf = 0
""let g:ycm_error_symbol = "✗"
""let g:ycm_warning_symbol = "⚠"
"let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf_c.py'

""autocmd FileType c :let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf_c.py'
""autocmd FileType cpp :let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf_cpp.py'

"autocmd FileType ruby,eruby :let g:AutoCloseExpandEnterOn=""
"if &filetype=="c"
"    let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf_c.py'
"elseif &filetype=="cpp"
"    let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf_cpp.py'
"endif

""let g:ycm_complete_in_comments = 0
""let g:ycm_filetype_whitelist = {'c':1 ,'cpp':1 ,'python':1 ,'sh':1 ,'zsh':1}
""let g:ycm_seed_identifiers_with_syntax = 1
""nnoremap <leader>\ :YcmCompleter GoToDefinitionElseDeclaration<CR>

"winmanager setting
""let g:NERDTree_title = "[NERDTree]"
""function! NERDTree_Start()
""    exec "NERDTreeToggle"
""endfunction

""function! NERDTree_IsValid()
""    return 1
""endfunction
""let g:winManagerWindowLayout="NERDTree|TagList,BufExplorer"
""let g:winManagerWidth = 30

"Gist setting
""let g:gist_open_browser_after_post = 1

"c-support
""let g:C_SourceCodeExtensions  = 'c C cpp CPP'

"vim-markdown
""let g:vim_markdown_folding_disabled=1

"vim-template
""let g:templates_no_autocmd = 1
""au BufNewFile *.sh Template *.sh

"vim syntastic
""let g:syntastic_check_on_open = 1
""let g:syntastic_auto_jump = 1
""let g:syntastic_mode_map = { "mode": "active",
""                               \ "active_filetypes": ["sh"],
""                               \ "passive_filetypes": ["cpp","py"] }
""let g:syntastic_sh_checkers = ['shellcheck']
""let g:ycm_show_diagnostics_ui = 0
""use YCM's identifier completer but still run syntastic's checkers for those filetypes 

