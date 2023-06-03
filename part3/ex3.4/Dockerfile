FROM docker:dind

WORKDIR /src

COPY . .

RUN apk update 

RUN apk add python3

RUN apk add git

CMD chmod +x ./builder.py

ENTRYPOINT ["./builder.py"]
