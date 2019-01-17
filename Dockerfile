FROM golang
ADD . /go/src/github.com/appian/etcd
ADD cmd/vendor /go/src/github.com/appian/etcd/vendor
RUN go install github.com/appian/etcd
EXPOSE 2379 2380
ENTRYPOINT ["etcd"]
