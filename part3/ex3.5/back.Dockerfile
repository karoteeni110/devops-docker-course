FROM golang:1.16

# Non-root user
RUN addgroup appgroup 

RUN adduser appuser 

RUN adduser appuser appgroup

USER appuser

WORKDIR /usr/src/app

COPY material-applications/example-backend .

ENV REQUEST_ORIGIN="http://localhost:5000"

ENV PATH=$PATH:/usr/local/go/bin
 
RUN go build

# Start app

EXPOSE 8080

CMD ./server 
