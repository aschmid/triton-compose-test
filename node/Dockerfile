FROM google/nodejs

# Install Node.js and other dependencies
RUN apt-get update && \
    apt-get -y install && \
    apt-get -y install python build-essential git

# Install nodemon
RUN npm install -g nodemon coffee-script

# Define working directory
WORKDIR /src
ADD . /src

RUN rm -rf node_modules && npm install

# Expose port
EXPOSE  8080

# Run app using nodemon
CMD ["nodemon", "/src/index.coffee"]