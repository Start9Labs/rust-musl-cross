FROM messense/rust-musl-cross:armv7-musleabihf
RUN rustup update && \
    rustup update beta && \
    rustup update nightly && \
    rustup target add --toolchain beta armv7-unknown-linux-musleabihf && \
    rustup target add --toolchain nightly armv7-unknown-linux-musleabihf
