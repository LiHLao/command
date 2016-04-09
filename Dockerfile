# Base image
FROM :1.4.2

# Maintainer info
MAINTAINER Li Lao <li.lao@utah.edu>

# Get the project
RUN go get github.com/LiHLao/gateway
RUN go get -u -v golang.org/x/net/websocket

# Set working directory
WORKDIR /go/src/github.com/LiHLao/gateway

# Expose port
EXPOSE 8080

# Run Game Controller
CMD go run *.go
