FROM messense/rust-musl-cross:aarch64-musl
RUN rustup update && \
    rustup update beta && \
    rustup update nightly && \
    rustup target add --toolchain beta aarch64-unknown-linux-musl && \
    rustup target add --toolchain nightly aarch64-unknown-linux-musl
