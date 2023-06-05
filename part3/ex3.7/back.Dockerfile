FROM golang:1.16 AS build-env

WORKDIR /usr/src/app

COPY material-applications/example-backend .

ENV REQUEST_ORIGIN="http://localhost:5000"

ENV PATH=$PATH:/usr/local/go/bin
 
RUN go build

# Start app
FROM alpine

#RUN addgroup appgroup && adduser appuser && adduser appuser appgroup

USER appuser

WORKDIR /usr/src/app

COPY --from=build-env /usr/src/app/server ./server

EXPOSE 8080

CMD ./server 
