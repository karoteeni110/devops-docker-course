FROM golang:1.16-alpine

# Non-root user
RUN addgroup appgroup && adduser -D appuser && adduser appuser appgroup

USER appuser

WORKDIR /usr/src/app

COPY material-applications/example-backend .

ENV REQUEST_ORIGIN="http://localhost:5000"

ENV PATH=$PATH:/usr/local/go/bin
 
RUN go build

# Start app

EXPOSE 8080

CMD ./server 
