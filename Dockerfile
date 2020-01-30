FROM golang:1.13

WORKDIR /app
COPY . .

# Install rp-indexer application
RUN go get -d -v ./... && go build ./cmd/rp-indexer

RUN chmod +x rp-indexer

ENTRYPOINT ["./rp-indexer"]