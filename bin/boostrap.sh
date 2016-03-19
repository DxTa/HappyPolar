npm i nodemon -g
docker pull mongo
if [ "$OS" = "darwin" ]; then
  VBoxManage controlvm boot2docker-vm natpf1 "mongodb,tcp,127.0.0.1,27017,,27017"
fi
if [ "$OS" = "linux" ]; then
  # command to forward packet from port 27017 host machine to mongodb container
fi
if grep -Fxq "127.0.0.1 happypolar.fi" /etc/hosts
then
else
  sudo sh -c 'echo "127.0.0.1 happypolar.fi" >> /etc/hosts'
fi
