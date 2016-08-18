# Node-React-Webpack

This is an early, barebones dev framework to create Node.js applications with React.

The easiest way to develop with this framework is using Docker. You will need to have [https://www.docker.com/](Docker) installed and configured before you can run the following commands:

    $ docker build -t "node-react-webpack" .
    $ docker run -p 3000:3000 -v $HOME/path/to/repo/:/usr/src/app/ -d node-react-webpack

Once the container is up and running, you can exec into it with the following command:

    $ docker exec -it container_name /bin/bash

You can see the name of the container by running the following command:

    $ docker ps -a

You should be able to see the server running at `http://localhost:3000`.

## License

Node-React-Webpack is released under the MIT license. See [LICENSE](LICENSE) for details.
