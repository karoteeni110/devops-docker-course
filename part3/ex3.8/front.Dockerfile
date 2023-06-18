# Build

FROM alpine:3.14 AS build-env

RUN apk add --no-cache nodejs-current npm

WORKDIR /usr/src/app

COPY material-applications/example-frontend .

ENV REACT_APP_BACKEND_URL="http://localhost:8080"

RUN npm i serve && npm run build 

# Run 

FROM alpine:3.14

RUN apk add --no-cache npm

WORKDIR /usr/app

COPY --from=build-env /usr/src/app/build /usr/app/build

## Set up npm for non-root users
RUN mkdir ~/.node && echo "prefix=~/.node" >> ~/.npmrc

ENV PATH="$HOME/.node/bin:$PATH"  

ENV NODE_PATH="$HOME/.node/lib/node_modules:$NODE_PATH"  

RUN npm uninstall -g serve

## Use non-root user from here
RUN adduser -D appuser && chown -R appuser .

USER appuser

## Run app 

EXPOSE 5000

CMD npx serve -s -l 5000 build
