# Set the base image:
FROM nodesource/trusty:4.4.5

# File author / maintainer
MAINTAINER Daniel Davidson

# Set the term environment variable to "dumb"
ENV TERM dumb

# Set the envronment variable to debug (comment this out for production)
ENV NODE_ENV dev

# Add package.json from current directory
ADD package.json package.json

# Install npm packages
RUN npm install
RUN npm install -g nodemon
RUN npm install -g webpack

# Add all files to app directory
# ADD . .

# Expose port
EXPOSE 3000

# Send command to run node on app.js file
CMD nodemon server/app.js
