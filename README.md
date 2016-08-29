# node9000

Alpha status React framework to create Node.js applications with Docker, Express and React. Uses React and React-Router.

## Installing

First install and configure [Docker](https://www.docker.com/).

Next git clone the repo and `cd` into it:

    $ git clone https://github.com/da-n/node9000

Next run these Docker commands to build the image and run the container where `container_name` is the name given to your docker container. You can find the container name (assigned randomly) by running `docker ps`:

    $ docker build -t "node9000" .
    $ docker run -p 8080:8080 -v $HOME/path/to/repo/:/usr/src/app/ -d node9000

*Note by default the Dockerfile is set to build images in dev mode, production mode will run it with server side rendering but is currently experimental. You can select production mode by setting NODE_END to "production" in package.json.*

If nothing failed, you should be able to see the server running at [http://localhost:8080](http://localhost:8080).

Once the container is up and running, you can exec into it and run commands (listed below). Issue the following command:

    $ docker exec -it container_name /bin/bash

## Todo

Beta status:

1. Improve README with examples and usage guidelines.
2. Babel integration.
3. Finish todo list.

## History

- 0.0.2 - Adding official React-Router example implementation.
- 0.0.1 - Alpha, not feature complete.

## License

node9000 is released under the MIT license. See [LICENSE](LICENSE) for details.
