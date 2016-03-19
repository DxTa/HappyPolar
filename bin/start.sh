if which foreman >/dev/null; then
    alias fcmd=foreman
else
    alias fcmd=nf
fi
nc -v -z -w 5 127.0.0.1 27017; echo $?
if [ $? -ne 0 ]; then
  fcmd start mongo
fi
fcmd start -c nodejs=1,react=1
