FROM ubuntu

RUN apt update && apt install -y curl 

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash

RUN apt install -y nodejs

WORKDIR /usr/src/app

COPY material-applications/example-frontend .

# Set up npm for non-root users
RUN mkdir ~/.node

RUN echo "prefix=~/.node" >> ~/.npmrc

ENV PATH="$HOME/.node/bin:$PATH"  

ENV NODE_PATH="$HOME/.node/lib/node_modules:$NODE_PATH"  

RUN npm uninstall -g serve

# Use non-root user from here
RUN useradd -m appuser

RUN chown -R appuser .

USER appuser

# Start app
EXPOSE 5000

ENV REACT_APP_BACKEND_URL="http://localhost:8080"

RUN npm i serve  

CMD npx serve -s -l 5000 build
