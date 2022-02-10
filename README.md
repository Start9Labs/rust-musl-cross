# rust-musl-cross
Cross compiler for aarch64-unknown-linux-musl

## Setup
```
docker build -t start9/rust-musl-cross:aarch64-musl .
alias 'rust-musl-builder=docker run --rm -it -v "$HOME"/.cargo/registry:/root/.cargo/registry -v "$(pwd)":/home/rust/src start9/rust-musl-cross:aarch64-musl'
```

## Usage
```
rust-musl-builder cargo build --release
rust-musl-builder musl-strip target/aarch64-unknown-linux-musl/release/<bin-name>
```
