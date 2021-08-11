" Load common config to documentate (TeX, ReSructuredText, Markdown, Rmd, ...)
source $VIMHOME/after/ftplugin/gendocs.vim

" Cool folding 
setlocal foldmethod=syntax

" Rmarkdown compile
if !exists("g:r_command")
    let g:r_command = "R"
endif

function! RmdRender()
    " Save and render current buffer to html file
    write
    silent !clear
    let cmdOpts = " -e \"library('rmarkdown'); rmarkdown::render('"
    let currFilePath = substitute(bufname("%"), "\\", "/", "g")
    echom "Rendering " . currFilePath
    silent execute "!" . g:r_command . cmdOpts . currFilePath . "');\""
    silent execute ":redraw!"
endfunction


function! RmdRunServer()
    " Save and render current buffer to html file
    write
    silent !clear
    let cmdOpts = " -e \"library('blogdown'); blogdown::serve_site();\""
    echom "Running Server"
    silent execute "!" . g:r_command . cmdOpts
    silent execute ":redraw!"
endfunction

function! HtmlOpen()
    " Open html file related to current buffer
    silent !clear
    let htmlFilePath = expand("%:p:r") . ".html"
    echom "Opening " . htmlFilePath
    if has("win32")
        silent execute "! explorer " . htmlFilePath
    else
        silent execute "! sensible-browser " . htmlFilePath
    endif
    silent execute ":redraw!"
endfunction

nnoremap <buffer> <leader>ren :call RmdRender()<cr>
nnoremap <buffer> <leader>run :call RmdRunServer()<cr>
nnoremap <buffer> <leader>ope :call HtmlOpen()<cr>
nnoremap <buffer> <leader>ren! :call RmdRender()<cr>:call HtmlOpen()<cr>


