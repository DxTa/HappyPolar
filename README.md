Requirements:
    nodejs
    mongodb

Installation:

    git clone git@github.com:DxTa/HappyPolar.git

    cd ~/HappyPolar
    git submodule init
    git submodule update

    __make sure to install node modules in frontend and server__

Configuration:
    Update /etc/hosts: "127.0.0.1 happypolar.fi"


For everyone love Docker and foreman (tested on MAC, Ubuntu need to double check
bin/boostrap.sh file):

    # install nodejs, foreman (gem install foreman or npm install -g foreman)
    git clone git@github.com:DxTa/HappyPolar.git
    cd ~/HappyPolar
    ./bin/init.sh
    ./bin/start.sh # to start to dev
