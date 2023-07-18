#!/bin/bash

#git
git add *
git commit -am 'nou commit'
git push

#desplega la web al servidor
# -h  human readable format
# -P  mostra progrÃ©s
# -vv incrementa verbositat
# -r  actua recursivament
rsync --rsync-path="sudo rsync" -hPvr \
  --exclude ".git/" \
  . debian@51.91.250.220:/var/www/html/la_teva_vida_en_setmanes
