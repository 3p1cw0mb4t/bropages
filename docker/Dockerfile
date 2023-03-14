FROM alpine
RUN apk update && apk add cargo git less
WORKDIR /
RUN git clone https://github.com/pombadev/bropages.git
WORKDIR bropages
ADD pager.patch /bropages/pager.patch
RUN git apply pager.patch
RUN cargo install --path .
ENV PATH="${PATH}:/root/.cargo/bin"
ADD less-wrap.sh /bin/less-wrap.sh
RUN bro bro
