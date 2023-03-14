FROM rust:alpine as builder
RUN apk update && apk add git alpine-sdk
WORKDIR /
RUN git clone https://github.com/pombadev/bropages.git
WORKDIR bropages
ADD pager.patch /bropages/pager.patch
RUN git apply pager.patch
RUN cargo install --path .
RUN /usr/local/cargo/bin/bro bro

FROM alpine as runtime
RUN apk add less
ADD less-wrap.sh /bin/less-wrap.sh
COPY --from=builder /usr/local/cargo/bin/bro /usr/bin/bro
