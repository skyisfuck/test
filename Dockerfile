FROM golang:1.14-alpine
COPY vendor .
RUN cd ./vendor &&  \
    export GO111MODULE=on && \
    go run init.go --alsologtostderr  --download_browsers --download_latest 
