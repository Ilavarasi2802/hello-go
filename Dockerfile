# Step 1: Use official Golang image to build the app
FROM golang:1.22 AS builder

WORKDIR /app
COPY . .
RUN go build -o hello .

# Step 2: Use a small Debian image to run the app
FROM debian:bookworm-slim
WORKDIR /app
COPY --from=builder /app/hello .
CMD ["./hello"]
