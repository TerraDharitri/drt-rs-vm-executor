FROM arm64v8/rust:1.77.0

RUN apt-get update && apt-get install -y \
    wget \
    git \
    patchelf \
    build-essential

ENV CARGO_NET_GIT_FETCH_WITH_CLI=true

COPY . /repository
WORKDIR /repository
RUN make capi-linux-arm
RUN mkdir /data && cp /repository/target/release/libvmoaeccapi_arm.so /data/libvmoaeccapi_arm.so
