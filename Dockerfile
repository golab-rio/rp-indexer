FROM golang:1.13

# Prepare app source directory
ENV APP_PATH /go/src/github.com/nyaruka/rp-indexer
WORKDIR $APP_PATH
COPY . .

# Install rp-indexer application
RUN go get -d -v ./... && go build ./cmd/rp-indexer

RUN chmod +x rp-indexer

ENTRYPOINT ["rp-indexer"]
