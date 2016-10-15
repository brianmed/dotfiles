" my filetype file
if exists("did_load_filetypes")
    finish
endif
augroup filetypedetect
    au! BufRead,BufNewFile /var/log/httpd/error_log    setfiletype apache_error
augroup END
