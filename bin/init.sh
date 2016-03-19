if which foreman >/dev/null; then
    alias fcmd=foreman
else
    alias fcmd=nf
fi
fcmd start init
