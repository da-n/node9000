# Set the base image:
FROM nodesource/trusty:4.4.5

# File author / maintainer
MAINTAINER Daniel Davidson

# Set the term environment variable to "dumb"
ENV TERM dumb

# Set envronment variables
ENV NODE_ENV dev
ENV PORT 8080

# Add package.json from current directory
ADD package.json package.json

# Install npm packages
RUN npm install
RUN npm install -g if-env
RUN npm install -g webpack

# Expose port
EXPOSE 8080

# Send command to run node on app.js file
CMD npm start
