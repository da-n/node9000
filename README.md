# node9000

Alpha status React framework to create Node.js applications with Docker, Express and React. Uses React and React Router.

## Installing

### Option 1: Docker

To use the Docker version, first install and configure [Docker](https://www.docker.com/).

Next git clone the repo and `cd` into it:

    $ git clone https://github.com/da-n/node9000

Next run these Docker commands to build the image and run the container where `container_name` is the name given to your docker container. You can find the container name (assigned randomly) by running `docker ps`:

    $ docker build -t "node9000" .
    $ docker run -p 8080:8080 -v $HOME/path/to/repo/:/usr/src/app/ -d node9000

*Note by default the Dockerfile is set to build images in dev mode, production mode will run it with server side rendering but is currently experimental. You can select production mode by setting NODE_END to "production" in package.json.*

If nothing failed, you should be able to see the server running at [http://localhost:8080](http://localhost:8080).

Once the container is up and running, you can exec into it and run commands (listed below). Issue the following command:

    $ docker exec -it container_name /bin/bash

### Option 2: Native

To just run on your local machine you will need to have Node.js and NPM installed and configured. You can then run the following commands from the project root folder (not tested on Windows):

    # npm install -g webpack
    # npm install -g webpack-dev-server
    $ npm install

Once everything is installed you can start the server with the following command:

    $ npm start

Note that by default, the server will be started in development mode, this is not recommended for production use. You can run an experimental production version with
the following command:

    $ NODE_ENV=production npm start

## React Router

[React Router](https://github.com/reactjs/react-router) is used and some examples from the official project are included to get started. To find out more about React Router follow the [official tutorial](https://github.com/reactjs/react-router-tutorial) and adapt as required.

## Todo

Beta status:

1. Improve README with examples and usage guidelines.
2. Add Redux.
3. Add tests.
4. Add SASS support.
5. Add asset and image pipeline.
6. Finish todo list.

## History

- 0.0.2 - Adding official React-Router example implementation.
- 0.0.1 - Alpha, not feature complete.

## License

node9000 is released under the MIT license. See [LICENSE](LICENSE) for details.
