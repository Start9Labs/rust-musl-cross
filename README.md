# rust-musl-cross
Cross compiler for armv7-unknown-linux-musleabihf

## Setup
```
docker build -t start9/rust-musl-cross:armv7-musleabihf .
alias 'rust-musl-builder=docker run --rm -it -v "$HOME"/.cargo/registry:/root/.cargo/registry -v "$(pwd)":/home/rust/src start9/rust-musl-cross:armv7-musleabihf'
```

## Usage
```
rust-musl-builder cargo build --release
rust-musl-builder musl-strip target/armv7-unknown-linux-musleabihf/release/<bin-name>
```
