FROM golang:1.14-alpine
COPY vendor vendor
RUN ls -l && cd ./vendor && \
    export GO111MODULE=on && \
    go mod init test && \
    go run init.go --alsologtostderr  --download_browsers --download_latest 
