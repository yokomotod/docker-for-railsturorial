# Docker for Rails Tutorial

Local development environment for [Rails Tutorial](https://www.railstutorial.org/).

Using docker for setup, but aim to no docker local environment as much as possible.

- **Data persistence**: Working data will be persisted even after removing container
- **Host editing**: Edit files from host, so you use your usual editors and IDE.
- **Tutorial following**: No any command changes from Tutorial.


## Available Tools ...everything for Rails Tutorial

- Ruby
- Bundler
- Node.js
- Heroku CLI
- ImageMagick
- SQLite3
- Git

## Getting Started

### Mac OS

1. Install [Docker Desktop](https://www.docker.com/products/docker-desktop) and [docker-sync](http://docker-sync.io/).

1. Clone this repository

    ```
    git clone https://github.com/yokomotod/docker-for-railsturorial.git
    cd docker-for-railsturorial
    ```

1. Start docker-sync

    ```
    docker-sync start
    ```

1. Start docker

    ```
    docker-compose -f docker-compose.yml -f docker-compose-dev.yml up -d
    ```

1. Go into docker container

    ```
    docker-compose exec railstutorial bash
    ```

1. Now you can just follow Tutorial

    ```
    # 1.2 Up and running

    $ printf "install: --no-rdoc --no-ri\nupdate:  --no-rdoc --no-ri\n" >> ~/.gemrc

    $ gem install rails -v 5.1.6


    # 1.3 The first application

    $ cd
    $ mkdir environment
    $ cd environment/

    $ rails _5.1.6_ new hello_app
