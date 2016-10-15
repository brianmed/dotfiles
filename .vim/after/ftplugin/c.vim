" c FTplugin

setlocal fo=cqro2 
setlocal tw=90 
setlocal cindent 
setlocal cino-=:0g0 cino+=:0g0
setlocal cinkeys-=0# cinkeys+=0#
setlocal showmatch
" setlocal comments=s1:/*,mb:*,ex:*/,://

unlet! b:quickhigh_error_re
let b:quickhigh_warning_re  = "^ warning"

