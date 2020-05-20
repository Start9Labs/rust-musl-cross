# rust-musl-cross
Cross compiler for armv7-unknown-linux-musleabihf

## Setup
```
docker build -t start9/rust-musl-cross:armv7-musleabihf
alias 'rust-musl-builder=docker run --rm -it -v "$(pwd)"/target/.cargo:/root/.cargo/registry -v "$(pwd)":/home/rust/src start9/rust-musl-cross:armv7-musleabihf'
```
