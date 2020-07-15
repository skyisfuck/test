FROM golang:1.14-alpine
ADD vendor /tmp/
RUN cd /tmp/vendor &&  \
    export GO111MODULE=on && \
    go run init.go --alsologtostderr  --download_browsers --download_latest 
