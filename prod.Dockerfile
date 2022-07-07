FROM golang:alpine as builder
WORKDIR /app
COPY . .
RUN go mod tidy
RUN go build -o /app/appserver main.go

FROM alpine
WORKDIR /usr/bin
EXPOSE 8000
COPY --from=builder /app/appserver .
CMD ["appserver"]