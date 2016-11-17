# init script for fasd
if test $(which fasd)
then
    eval "$(fasd --init auto)"
fi
