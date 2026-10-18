FROM golang:1.25-alpine

WORKDIR /app

COPY . .

RUN go mod tidy

EXPOSE 8080

CMD ["sh", "-c", "go run cmd/server/main.go"]
