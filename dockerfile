FROM eclipse/stack-base:debian
RUN sudo apt-get update && \
    sudo apt-get -y install build-essential libkrb5-dev gcc make ruby-full rubygems debian-keyring python2.7 && \
    sudo gem install --no-rdoc --no-ri sass -v 3.4.22 && \
    sudo gem install --no-rdoc --no-ri compass && \
    sudo apt-get clean && \
    sudo apt-get -y autoremove && \
    sudo apt-get -y clean && \
    sudo rm -rf /var/lib/apt/lists/*

RUN wget -qO- https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN sudo apt update && sudo apt -y install nodejs
RUN sudo npm install -g @angular/cli
EXPOSE 1337 3000 4200 5000 9000 8003
RUN sudo npm install --unsafe-perm -g yarn gulp bower grunt grunt-cli yeoman-generator yo generator-angular generator-karma generator-webapp typescript typescript-language-server
LABEL che:server:8003:ref=angular che:server:8003:protocol=http che:server:3000:ref=node-3000 che:server:3000:protocol=http che:server:9000:ref=node-9000 che:server:9000:protocol=http che:server:4200:ref=ng-serve che:server:4200:protocol=http
