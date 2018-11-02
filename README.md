# AngularNginx

This project was created to provide an example of deploying an Angular 7 project in an NGINX container. The Angular application is the result of an ```ng new```, no other components were added to the application.

The NGINX container was downloaded from GitHub via ``` git pull nginx```; the latest version was downloaded. The NGINX container was used as a base to create the final container the application that includes the deployed application. 

The application container was built as follows:
* Build the Angular application ```npm run build```
* Build the container, copy application into container ```sudo docker build -t angular-nginx:0.1.0 .```

Run the application
* Run the application ```npm run proxy:start```
* Open a web browser and visit http://localhost

Stop the application
* Stop the application ```npm run proxy:stop```


## Development Environment
The original development environment used to create the application was:
* Oracle Virtual Box running Linux-Lite 4.x (an Ubuntu variant)
* npm 6.4.1
* Node 10.12.0
* Angular 7.0.1
* Angular CLI 7.0.3
* Docker 18.06.1-ce
* Docker Compose 1.23.0


## Installations
The installations performed to create the environment are described below.


### Node / NPM
```
wget -qO- https://deb.nodesource.com/setup_10.x | sudo -E bash -

sudo apt-get install nodejs
```

### Angular CLI
```
sudo npm install -g @angular/cli
```

### Docker
```
sudo apt-get update

sudo apt-get install     apt-transport-https     ca-certificates     curl     software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
  
sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
     $(lsb_release -cs) \
     stable"

sudo apt-get update

sudo apt-get install docker-ce
```

### Docker Compose
```
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose
```


---

# AngularNginx

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 7.0.3.

## Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory. Use the `--prod` flag for a production build.

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via [Protractor](http://www.protractortest.org/).

## Further help

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI README](https://github.com/angular/angular-cli/blob/master/README.md).
