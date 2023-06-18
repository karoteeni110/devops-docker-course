FROM golang:1.16 AS build-env

WORKDIR /app

COPY material-applications/example-backend .

ENV PATH=$PATH:/usr/local/go/bin

ENV CGO_ENABLED=0
 
RUN go build 

# Start app
FROM scratch 

COPY --from=build-env /app/server /server

ENV REQUEST_ORIGIN="http://localhost:5000"

EXPOSE 8080

CMD ["/server"]

