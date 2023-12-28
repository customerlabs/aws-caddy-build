FROM amazonlinux:2023

ARG CADDY_VERSION=v2.7.6
ARG OS=linux
ARG ARCH=amd64

# Install dependencies
RUN yum update -y && \
  yum install golang -y

RUN GOPROXY=https://proxy.golang.org,direct GOBIN=/usr/local/bin/ go install github.com/caddyserver/xcaddy/cmd/xcaddy@latest

RUN mkdir -p /tmp/caddy-build && \
  GOPROXY=https://proxy.golang.org,direct GOOS=${OS} GOARCH=${ARCH} xcaddy build ${CADDY_VERSION} \
    --with github.com/ss098/certmagic-s3 --with github.com/silinternational/certmagic-storage-dynamodb/v3 \
        --output /tmp/caddy-build/aws_caddy_${CADDY_VERSION}_${OS}
