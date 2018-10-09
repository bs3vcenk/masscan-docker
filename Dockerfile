FROM alpine:latest

RUN apk --no-cache upgrade && \
    apk --no-cache add git libpcap-dev build-base linux-headers && \
    git clone https://github.com/robertdavidgraham/masscan && \
    cd masscan && \
    sed -i 's/clang/gcc/g' Makefile && \
    make && \
    mv bin/masscan /usr/local/bin && \
    cd / && \
    rm -rf /masscan && \
    apk del build-base git linux-headers

ENTRYPOINT ["masscan"]
