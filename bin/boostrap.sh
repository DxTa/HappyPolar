APP_ROOT=$(pwd)
cd $APP_ROOT && git submodule init
cd $APP_ROOT && git submodule update

cd $APP_ROOT/api && npm install
cd $APP_ROOT/frontend && npm install

npm i nodemon -g
docker pull mongo
if [ "$OS" = "darwin" ]; then
  VBoxManage controlvm boot2docker-vm natpf1 "mongodb,tcp,127.0.0.1,27017,,27017"
fi

if [ "$OS" = "linux" ]; then
  echo "command to forward packet from port 27017 host machine to mongodb container"
fi

if ! (grep -Fxq "127.0.0.1 happypolar.fi" /etc/hosts); then
  sudo sh -c 'echo "127.0.0.1 happypolar.fi" >> /etc/hosts'
fi
