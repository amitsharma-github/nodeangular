FROM quay.io/eclipse/che-nodejs10-community:7.13.2
RUN npm install -g @angular/cli
EXPOSE 1337 3000 4200 5000 9000 8003
RUN npm install --unsafe-perm -g yarn gulp bower grunt grunt-cli yeoman-generator yo generator-angular generator-karma generator-webapp typescript typescript-language-server
LABEL che:server:8003:ref=angular che:server:8003:protocol=http che:server:3000:ref=node-3000 che:server:3000:protocol=http che:server:9000:ref=node-9000 che:server:9000:protocol=http che:server:4200:ref=ng-serve che:server:4200:protocol=http
