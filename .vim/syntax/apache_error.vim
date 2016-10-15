syn match apache_error_date /\%<21v.\%>13v/
syn match apache_error_string /\%>26v\[error\]/
syn match apache_warn_string /\%>26v\[warn\]/


hi apache_error_date guifg=darkgray
hi apache_error_string guifg=red
hi apache_warn_string guifg=blue
