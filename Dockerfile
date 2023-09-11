# stage de build
FROM golang:1.19 AS build

WORKDIR /app

COPY . /app

RUN CGO_ENABLED=0 GOOS=linux go build -o api main.go

# execute main.go
CMD ["go", "run", "main.go"]