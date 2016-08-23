# Node-React-Webpack

This is an early (alpha) barebones dev framework to create Node.js applications with React.

## Installing

First install and configure [Docker](https://www.docker.com/).

Next git clone the repo and `cd` into it:

    $ git clone https://github.com/da-n/node-react-webpack

Next run these Docker commands to build the image and run the container where `container_name` is the name given to your docker container. You can find the container name (assigned randomly) by running `docker ps`:

    $ docker build --build-arg MODE=dev -t "node-react-webpack" .
    $ docker run -p 3000:3000 -v $HOME/path/to/repo/:/usr/src/app/ -d node-react-webpack

*Note by default the Dockerfile is set to build images in production mode, the above command will instead run it in `dev` mode. Remove `--build-arf MODE=dev` to instead run in production mode.*

If nothing failed, you should be able to see the server running at [http://localhost:3000](http://localhost:3000).

Once the container is up and running, you can exec into it and run commands (listed below). Issue the following command:

    $ docker exec -it container_name /bin/bash

## Todo

Beta status:

1. Improve README with examples and usage guidelines.
2. Add History section to README.
3. Babel integration.
4. Finish todo list.

## History

0.0.1 - Alpha, not feature complete

## License

Node-React-Webpack is released under the MIT license. See [LICENSE](LICENSE) for details.
