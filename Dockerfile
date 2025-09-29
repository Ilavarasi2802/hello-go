# Step 1: Use official Go image
FROM golang:1.22-alpine

# Step 2: Set working directory inside container
WORKDIR /app

# Step 3: Copy source code into container
COPY . .

# Step 4: Build the Go program
RUN go build -o hello main.go

# Step 5: Run the binary when container starts
CMD ["./hello"]
