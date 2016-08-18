# Set the base image:
FROM nodesource/trusty:4.4.5

# File author / maintainer
MAINTAINER Daniel Davidson

# Add package.json from current directory
ADD package.json package.json

# Install npm packages
RUN npm install
RUN npm install -g nodemon
RUN npm install -g webpack
# RUN npm install -g pm2

# Add all files to app directory
# ADD . .

# Expose port
EXPOSE 3000

# Send command to run node on app.js file
# CMD pm2 start --no-daemon process.json
